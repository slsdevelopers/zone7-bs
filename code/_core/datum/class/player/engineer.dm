/class/engineer
	name = "The Engineer"
	desc = "This is a template"
	id = "engineer"

	//Limits:
	//3 ATTRIBUTE_STARTING_PRIMARY
	//3 ATTRIBUTE_STARTING_SECONDARY
	//3 ATTRIBUTE_STARTING_TERTIARY
	//Luck untouched
	attributes = list(
		ATTRIBUTE_STRENGTH = ATTRIBUTE_STARTING_PRIMARY,
		ATTRIBUTE_VITALITY = ATTRIBUTE_STARTING_SECONDARY,
		ATTRIBUTE_FORTITUDE = ATTRIBUTE_STARTING_SECONDARY,

		ATTRIBUTE_INTELLIGENCE = ATTRIBUTE_STARTING_PRIMARY,
		ATTRIBUTE_WISDOM = ATTRIBUTE_STARTING_TERTIARY,
		ATTRIBUTE_WILLPOWER = ATTRIBUTE_STARTING_TERTIARY,

		ATTRIBUTE_DEXTERITY = ATTRIBUTE_STARTING_PRIMARY,
		ATTRIBUTE_AGILITY = ATTRIBUTE_STARTING_TERTIARY,
		ATTRIBUTE_ENDURANCE = ATTRIBUTE_STARTING_SECONDARY,

		ATTRIBUTE_LUCK = 50
	)


	//Limits
	//3 SKILL_STARTING_PRIMARY
	//2 SKILL_STARTING_SECONDARY
	//6 SKILL_STARTING_TERTIARY
	skills = list(

		SKILL_UNARMED = SKILL_STARTING_SECONDARY,
		SKILL_MELEE = SKILL_STARTING_PRIMARY,
		SKILL_RANGED = SKILL_STARTING_TERTIARY,

		SKILL_BLOCK = SKILL_STARTING_PRIMARY,
		SKILL_DODGE = SKILL_STARTING_TERTIARY,
		SKILL_SURVIVAL 2 = SKILL_STARTING_SECONDARY,

		 = SKILL_STARTING_TERTIARY,
		SKILL_THEFT = SKILL_STARTING_TERTIARY,

		SKILL_ALCHEMY = SKILL_STARTING_TERTIARY,
		SKILL_COOKING = SKILL_STARTING_TERTIARY,
		SKILL_CRAFTING = SKILL_STARTING_PRIMARY,

		//THESE MUST HAVE SKILL_STARTING_NONE
		SKILL_MAGIC = SKILL_STARTING_NONE,
		SKILL_PARRY 2 = SKILL_STARTING_NONE,
		SKILL_SORCERY 2 = SKILL_STARTING_NONE,
		 = SKILL_STARTING_NONE,
		SKILL_ENCHANTING = SKILL_STARTING_NONE,
		SKILL_LOCKPICKING = SKILL_STARTING_NONE,

	)