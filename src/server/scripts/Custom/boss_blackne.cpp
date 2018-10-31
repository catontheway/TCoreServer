#include "ScriptMgr.h"
#include "ScriptedCreature.h"

enum Spells
{
	SPELL_SHADOW_BOLT = 7641,
	SPELL_DEATH_COIL = 38065,
	SPELL_LIFE_TAP = 11687,
	SPELL_DRAIN_MANA = 35332,
	SPELL_SHADOW_STEP = 41176,
	SPELL_CURSE_OF_WEAKNESS = 1108,
	SPELL_FIRE_NOVA = 11307,
	SPELL_DEATH_GRIP = 68755
};

enum Pets
{
	PET_IMP = 12922
};

enum Events
{
	EVENT_DRAIN_MANA = 1,
	EVENT_LIFE_TAP,
	EVENT_SHADOW_BOLT,
	EVENT_SHADOW_STEP,
	EVENT_SUMMON_PET,
	EVENT_EXPLODE,
	EVENT_DEATH_GRIP
};

enum YELLS
{
	SAY_ENGAGE = 0,
	SAY_ANGRY = 1,
	SAY_COME_BACK = 2
};

class boss_blackne : public CreatureScript
{
public:
	boss_blackne() : CreatureScript("boss_blackne") { }

	CreatureAI* GetAI(Creature* creature) const override
	{
		return new boss_blackneAI(creature);
	}

	struct boss_blackneAI : public WorldBossAI
	{
		boss_blackneAI(Creature* creature) : WorldBossAI(creature)
		{
			Initialize();
		}

		void Initialize()
		{
			_mana_drain_tries = 0;
			_angry_event = false;
		}

		void Reset() override
		{
			Initialize();
			WorldBossAI::Reset();
			events.ScheduleEvent(EVENT_DRAIN_MANA, Seconds(8));
			events.ScheduleEvent(EVENT_LIFE_TAP, Seconds(12));
			events.ScheduleEvent(EVENT_SHADOW_BOLT, Seconds(1));
			events.ScheduleEvent(EVENT_SUMMON_PET, Seconds(4));
			events.ScheduleEvent(EVENT_SHADOW_STEP, Seconds(16));
		}

		void JustEngagedWith(Unit* who) override
		{
			Talk(SAY_ENGAGE);
			DoCast(who, SPELL_CURSE_OF_WEAKNESS);
		}

		void SummonedCreatureDies(Creature* summon, Unit* killer) override
		{
			if (uint32 TargetMana = killer->GetPower(POWER_MANA)) {
				uint32 ManaToGet = killer->GetMaxPower(POWER_MANA) / 5; // 20% of total mana
				killer->SetPower(POWER_MANA, TargetMana + ManaToGet);
			}
		}

		void UpdateAI(uint32 diff) override
		{
			if (!UpdateVictim())
				return;

			events.Update(diff);

			if (_angry_event) {
				while (uint32 eventId = events.ExecuteEvent()) {
					switch (eventId) {
						case EVENT_EXPLODE:
							DoCast(me, SPELL_FIRE_NOVA);
							events.ScheduleEvent(EVENT_DEATH_GRIP, Seconds(1));
							break;
						case EVENT_DEATH_GRIP:
							me->SetReactState(REACT_AGGRESSIVE);
							Talk(SAY_COME_BACK);
							if (Unit* target = SelectTarget(SELECT_TARGET_MINDISTANCE, 0, 30.0f, true)) {
								DoCast(target, SPELL_DEATH_GRIP);
							}
							_angry_event = false;
							events.ScheduleEvent(EVENT_SHADOW_STEP, Seconds(16));
							break;
						default:
							events.Repeat(Seconds(2));
							break;
					}
				}
			}
			else {
				if (me->HasUnitState(UNIT_STATE_CASTING))
					return;

				while (uint32 eventId = events.ExecuteEvent())
				{
					switch (eventId)
					{
					case EVENT_DRAIN_MANA:
						if (_mana_drain_tries > 5) {
							schedule_mana_drain();
						}
						else {
							if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 20.0f, true)) {
								uint32 TargetMana = target->GetPower(POWER_MANA);
								if (TargetMana > 100) {
									DoCast(target, SPELL_DRAIN_MANA);
									schedule_mana_drain();
								}
								else {
									++_mana_drain_tries;
									events.Repeat(500);
								}
							}
							else {
								schedule_mana_drain();
							}
						}
						break;
					case EVENT_LIFE_TAP:
						DoCast(me, SPELL_LIFE_TAP);
						get_mana();
						events.Repeat(Seconds(12));
						break;
					case EVENT_SHADOW_BOLT:
						DoCastVictim(SPELL_SHADOW_BOLT);
						events.Repeat(Seconds(4));
						break;
					case EVENT_SUMMON_PET:
						me->SummonCreature(PET_IMP, me->GetPosition(), TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, Seconds(3));
						DoCast(me, SPELL_LIFE_TAP);
						events.Repeat(Seconds(6));
						break;
					case EVENT_SHADOW_STEP:
						if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 40.0f, true)) {
							DoCast(target, SPELL_SHADOW_STEP);
							DoStopAttack();
							me->SetReactState(REACT_PASSIVE);
							Talk(SAY_ANGRY);
							_angry_event = true;
							events.ScheduleEvent(EVENT_EXPLODE, 2500);
						}
					}
				}
				DoMeleeAttackIfReady();
			}
		}

		void get_mana() {
			uint32 ManaToGet = me->GetMaxPower(POWER_MANA) / 3; // 33% of total mana
			uint32 CurrentMana = me->GetPower(POWER_MANA);
			me->SetPower(POWER_MANA, CurrentMana + ManaToGet);
		}

		void schedule_mana_drain() {
			_mana_drain_tries = 0;
			events.ScheduleEvent(EVENT_DRAIN_MANA, urand(10000, 18000));
		}

		private:
			uint8 _mana_drain_tries;  // amount of failed mana drain tries
			bool _angry_event;
	};
};

void AddSC_boss_blackne()
{
	new boss_blackne();
}
