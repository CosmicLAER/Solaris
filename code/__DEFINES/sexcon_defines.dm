GLOBAL_LIST_INIT(sex_actions, build_sex_actions())

#define SEX_ACTION(sex_action_type) GLOB.sex_actions[sex_action_type]

#define MAX_AROUSAL 150
#define PASSIVE_EJAC_THRESHOLD 108
#define ACTIVE_EJAC_THRESHOLD 100
#define SEX_MAX_CHARGE 300
#define CHARGE_FOR_CLIMAX 100
#define AROUSAL_HARD_ON_THRESHOLD 20
#define CHARGE_RECHARGE_RATE (CHARGE_FOR_CLIMAX / (5 MINUTES))
#define AROUSAL_TIME_TO_UNHORNY (5 SECONDS)
#define SPENT_AROUSAL_RATE (3 / (1 SECONDS))
#define IMPOTENT_AROUSAL_LOSS_RATE (3 / (1 SECONDS))

#define AROUSAL_HIGH_UNHORNY_RATE (1.5 / (1 SECONDS))
#define AROUSAL_MID_UNHORNY_RATE (0.4 / (1 SECONDS))
#define AROUSAL_LOW_UNHORNY_RATE (0.2 / (1 SECONDS))

#define MOAN_COOLDOWN 3 SECONDS
#define PAIN_COOLDOWN 6 SECONDS

#define SEX_SPEED_LOW 1
#define SEX_SPEED_MID 2
#define SEX_SPEED_HIGH 3
#define SEX_SPEED_EXTREME 4

#define SEX_SPEED_MIN 1
#define SEX_SPEED_MAX 4

#define SEX_FORCE_LOW 1
#define SEX_FORCE_MID 2
#define SEX_FORCE_HIGH 3
#define SEX_FORCE_EXTREME 4

#define SEX_FORCE_MIN 1
#define SEX_FORCE_MAX 4

#define SEX_MANUAL_AROUSAL_DEFAULT 1
#define SEX_MANUAL_AROUSAL_UNAROUSED 2
#define SEX_MANUAL_AROUSAL_PARTIAL 3
#define SEX_MANUAL_AROUSAL_FULL 4

#define SEX_MANUAL_AROUSAL_MIN 1
#define SEX_MANUAL_AROUSAL_MAX 4

#define BLUEBALLS_GAIN_THRESHOLD 40
#define BLUEBALLS_LOOSE_THRESHOLD 35

#define PAIN_MILD_EFFECT 10
#define PAIN_MED_EFFECT 20
#define PAIN_HIGH_EFFECT 30
#define PAIN_MINIMUM_FOR_DAMAGE PAIN_MED_EFFECT
#define PAIN_DAMAGE_DIVISOR 50

/proc/build_sex_actions()
	. = list()
	for(var/path in typesof(/datum/sex_action))
		if(is_abstract(path))
			continue
		.[path] = new path()
	return .
