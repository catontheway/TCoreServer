#include "ScriptMgr.h"
#include "ScriptedCreature.h"

enum Spells
{
    SPELL_MENDING_CURSE = 39647,
    SPELL_AGONY = 32418
};

enum Events
{
    EVENT_MENDING_CURSE = 1
};


enum NPC_Spells
{
    ALEX_SPELL_FLASH_HEAL = 2061,
    GOMEZ_SPELL_BUFF_SP = 60494,
    GOMEZ_SPELL_BUFF_AS = 28093,
    GOMEZ_SPELL_RAIN = 38741,
    THERESE_SPELL_BEAM = 30465
};

enum Coords
{
    X_COORD = 0,
    Y_COORD = 1,
    Z_COORD = 2,
    ORIENTATION = 3
};

const float NPC_Coord[3][4] =
{
    {-5270.763672f, -1740.032227f, 514.072815f, 2.774843f}, // Left side
    {-5294.158691f, -1761.163940f, 509.253632f, 1.247235f}, // Back side
    {-5301.472656f, -1727.329834f, 516.931702f, 5.924273f}  // Right side
};

enum NPC_IDs
{
    NPC_ALEX = 0,
    NPC_THERESE = 1,
    NPC_GOMEZ = 2
};

const uint32 NPC_Creature[3] = { 133731, 133732, 133733 };

const uint32 NPC_Update_Interval = 500;

class boss_luis_rizo : public CreatureScript
{
public:
    boss_luis_rizo() : CreatureScript("boss_luis_rizo") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new boss_luis_rizoAI(creature);
    }

    struct boss_luis_rizoAI : public WorldBossAI
    {
        boss_luis_rizoAI(Creature* creature) : WorldBossAI(creature)
        {
            Initialize();
        }

        void Initialize()
        {
            NpcTimer = 0;
            GomezBuffTimer = 0;
            ThereseDebuffTimer = 0;
            AlexHealthTimer = 0;
        }

        void Reset() override
        {
            Initialize();
            WorldBossAI::Reset();
            DespawnNPCs();
            events.ScheduleEvent(EVENT_MENDING_CURSE, Seconds(30));
        }

        void JustEngagedWith(Unit* /*who*/) override
        {
            SummonNPCs();
        }

        void SummonNPCs()
        {
            for (int i = 0; i < 3; ++i)
            {
                if (Creature* npc = me->SummonCreature(NPC_Creature[i], NPC_Coord[i][X_COORD], NPC_Coord[i][Y_COORD], NPC_Coord[i][Z_COORD], NPC_Coord[i][ORIENTATION], TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 3000))
                {
                    npc->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                    npc->SetReactState(REACT_PASSIVE);
                    NpcGUID[i] = npc->GetGUID();
                }
            }
        }

        void DespawnNPCs()
        {
            for (int i = 0; i < 3; ++i)
            {
                if (Creature* npc = ObjectAccessor::GetCreature(*me, NpcGUID[i]))
                    npc->DisappearAndDie();
                NpcGUID[i].Clear();
            }
        }

        void UpdateNPCs() // Here we handle the npcs' behavior
        {
            for (int j = 0; j < 3; ++j) // j = npc
            {
                if (Creature* npc = ObjectAccessor::GetCreature(*me, NpcGUID[j]))
                {
                    if (Unit* target = npc->SelectNearestPlayer(5.0f)) {
                        switch (j)
                        {
                            case NPC_ALEX:
                                if (npc->GetHealth() > 0) {
                                    if (AlexHealthTimer <= 0)
                                    {
                                        if (!npc->IsNonMeleeSpellCast(false))
                                            npc->CastSpell(target, ALEX_SPELL_FLASH_HEAL);

                                        int32 HealthToLose = (int)(npc->GetMaxHealth() / 20); // 5% of total health
                                        npc->ModifyHealth(-HealthToLose);
                                        AlexHealthTimer = 2000;
                                    }
                                    else AlexHealthTimer -= NPC_Update_Interval;
                                }
                                break;
                            case NPC_THERESE:
                                if (!ThereseTarget || target != ThereseTarget)
                                {
                                    npc->CastSpell(target, THERESE_SPELL_BEAM);
                                    ThereseTarget = target;
                                }
                                if (me->GetVictim() != target && target->GetTypeId() == TYPEID_PLAYER)
                                    AddThreat(target, 100000.0f);
                                break;
                            case NPC_GOMEZ:
                                if (GomezBuffTimer <= 0)
                                {
                                    if (uint32 TargetMana = target->GetPower(POWER_MANA)) {
                                        uint32 ManaToGet = target->GetMaxPower(POWER_MANA) / 10; // 10% of total mana
                                        target->SetPower(POWER_MANA, TargetMana + ManaToGet);
                                    }
                                    target->CastSpell(target, GOMEZ_SPELL_BUFF_SP);
                                    target->CastSpell(target, GOMEZ_SPELL_BUFF_AS);
                                    npc->CastSpell(target, GOMEZ_SPELL_RAIN);
                                    GomezBuffTimer = 9000;
                                }
                                else GomezBuffTimer -= NPC_Update_Interval;
                                break;
                        }
                    }
                    else {
                        switch (j)
                        {
                        case NPC_ALEX:
                            if (npc->GetHealth() > 0) {
                                if (AlexHealthTimer <= 0)
                                {
                                    if (!npc->IsNonMeleeSpellCast(false)) {
                                        if (npc->HealthAbovePct(90)) npc->CastSpell(me, ALEX_SPELL_FLASH_HEAL);
                                        else npc->CastSpell(npc, ALEX_SPELL_FLASH_HEAL);
                                    }
                                    AlexHealthTimer = 4000;
                                }
                                else AlexHealthTimer -= NPC_Update_Interval;
                            }
                            break;
                        case NPC_THERESE:
                            ThereseTarget = NULL;
                            npc->CastStop();
                            if (ThereseDebuffTimer <= 0)
                            {
                                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 30.0f, true)) {
                                    DoCast(target, SPELL_AGONY);
                                    ThereseDebuffTimer = 3000;
                                }
                                else ThereseDebuffTimer = 0;
                            }
                            else ThereseDebuffTimer -= NPC_Update_Interval;
                            break;
                        case NPC_GOMEZ:
                            break;
                        }
                    }
                }
            }
        }

        void UpdateAI(uint32 diff) override
        {
            if (!UpdateVictim())
                return;

            // Update NPCs
            if (NpcTimer <= diff)
            {
                UpdateNPCs();
                NpcTimer = NPC_Update_Interval;
            }
            else NpcTimer -= diff;

            // Update Boss
            events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_MENDING_CURSE:
                    if (Unit* target = SelectTarget(SELECT_TARGET_MAXTHREAT, 0, 15.0f, true)) {
                        DoCast(target, SPELL_MENDING_CURSE);
                    }
                    events.Repeat(Seconds(60));
                    break;
                }
            }

            DoMeleeAttackIfReady();
        }

        private:
            ObjectGuid NpcGUID[3]; // guid's of npcs
            uint32 NpcTimer; // NPC update rate
            uint32 GomezBuffTimer; // Gomez buff rate
            uint32 ThereseDebuffTimer; // Therese debuff rate
            uint32 AlexHealthTimer; // Alex health rate
            Unit* ThereseTarget; // Target of NPC Therese
    };
};

    void AddSC_boss_luis_rizo()
    {
        new boss_luis_rizo();
    }
