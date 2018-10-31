#include "ScriptMgr.h"
#include "ScriptedCreature.h"

enum Spells
{
    SPELL_SHADOW_STEP = 41176,
    SPELL_CLOAK_OF_SHADOWS = 39666,
    SPELL_FIRST_AID = 27030,
    SPELL_SPRINT = 56354,
    SPELL_KIDNEY_SHOT = 41389,
    SPELL_FAN_OF_KNIVES = 67706,
    SPELL_DEATH_GRIP = 68755,
    SPELL_BLIND = 21060,
    SPELL_DEADLY_THROW = 37074
};

enum Events
{
    EVENT_KIDNEY_SHOT = 1,
    EVENT_FAN_OF_KNIVES,
    EVENT_DEATH_GRIP,
    EVENT_BLIND
};

class boss_li : public CreatureScript
{
public:
    boss_li() : CreatureScript("boss_li") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new boss_liAI(creature);
    }

    struct boss_liAI : public WorldBossAI
    {
        boss_liAI(Creature* creature) : WorldBossAI(creature)
        {
            Initialize();
        }

        void Initialize()
        {
            _jumps = 0;
        }

        void Reset() override
        {
            Initialize();
            WorldBossAI::Reset();
            events.ScheduleEvent(EVENT_FAN_OF_KNIVES, 5000);
        }

        void JustEngagedWith(Unit* who) override
        {
            DoCast(who, SPELL_DEADLY_THROW);
        }

        void ExecuteEvent(uint32 eventId) override
        {
            switch (eventId)
            {
            case EVENT_KIDNEY_SHOT:
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 40.0f, true))
                {
                    DoCast(target, SPELL_SHADOW_STEP);
                    DoCast(target, SPELL_KIDNEY_SHOT);
                    DoCast(me, SPELL_CLOAK_OF_SHADOWS);
                    DoCast(me, SPELL_FIRST_AID);
                    DoCast(me, SPELL_SPRINT);
                }
                events.ScheduleEvent(EVENT_FAN_OF_KNIVES, urand(8000, 15000));
                if (rand() % 100 > 70)
                {
                    events.ScheduleEvent(EVENT_DEATH_GRIP, urand(3500, 4500));
                }
                break;
            case EVENT_FAN_OF_KNIVES:
                if (_jumps <= 3)
                {
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 40.0f, true))
                    {
                        DoCast(target, SPELL_SHADOW_STEP);
                        DoCast(target, SPELL_FAN_OF_KNIVES);
                        ResetThreat(target);
                    }
                    ++_jumps;
                    events.ScheduleEvent(EVENT_FAN_OF_KNIVES, 1000);
                }
                else {
                    _jumps = 0;
                    events.ScheduleEvent(EVENT_KIDNEY_SHOT, urand(8000, 15000));
                    if (rand() % 100 > 50)
                    {
                        events.ScheduleEvent(EVENT_DEATH_GRIP, urand(2000, 4000));
                    }
                }
                break;
            case EVENT_DEATH_GRIP:
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 30.0f, true, false))
                {
                    DoCast(target, SPELL_DEATH_GRIP);
                    events.ScheduleEvent(EVENT_BLIND, 1200);
                }
                break;
            case EVENT_BLIND:
                if (Unit* target = SelectTarget(SELECT_TARGET_MINDISTANCE, 0, 30.0f, true, false))
                {
                    DoCast(target, SPELL_BLIND);
                }
                else {
                    events.ScheduleEvent(EVENT_BLIND, 500);
                }
                break;
            }
        }

        private:
            uint8  _jumps;  // check amount of jumps in a row
    };
};

    void AddSC_boss_li()
    {
        new boss_li();
    }
