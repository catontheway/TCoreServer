#include "ScriptMgr.h"
#include "ScriptedCreature.h"

/*
enum Spells
{
};

enum Events
{
};
*/

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
        }

        void Reset() override
        {
            WorldBossAI::Reset();
            DespawnNPCs();
        }

        ObjectGuid NpcGUID[3]; // guid's of npcs

        void JustEngagedWith(Unit* /*who*/) override
        {
            SummonNPCs();
        }

        void SummonNPCs()
        {
            for (int i = 0; i < 3; ++i)
            {
                if (Creature* npc = me->SummonCreature(NPC_Creature[i], NPC_Coord[i][X_COORD], NPC_Coord[i][Y_COORD], NPC_Coord[i][Z_COORD], NPC_Coord[i][ORIENTATION], TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, Seconds(3)))
                {
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
    };
};

    void AddSC_boss_luis_rizo()
    {
        new boss_luis_rizo();
    }
