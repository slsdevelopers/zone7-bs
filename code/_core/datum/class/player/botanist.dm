/class/botanist
	name = "The Botanist"
	desc = "\
		The Botanist is known for their love of plants, nature, and their trusty hatchet. Years of working with plants and putting up with the \
		chef's bullshit have given them a considerable amount of natural recovery and fortitude. The fact that they're also a fucking talking tree also helps."
	id = "botanist"

	starting_species = /species/diona

	//Limits:
	//1 ATTRIBUTE_STARTING_PRIMARY
	//2 ATTRIBUTE_STARTING_SECONDARY
	//3 ATTRIBUTE_STARTING_TERTIARY
	//3 ATTRIBUTE_STARTING_NONE
	//Luck untouched
	//10 total attributes
	attributes = list(
		ATTRIBUTE_STRENGTH = ATTRIBUTE_STARTING_SECONDARY,
		ATTRIBUTE_VITALITY = ATTRIBUTE_STARTING_TERTIARY,
		ATTRIBUTE_FORTITUDE = ATTRIBUTE_STARTING_PRIMARY,

		ATTRIBUTE_INTELLIGENCE = ATTRIBUTE_STARTING_TERTIARY,
		ATTRIBUTE_WISDOM = ATTRIBUTE_STARTING_TERTIARY,
		ATTRIBUTE_WILLPOWER = ATTRIBUTE_STARTING_NONE,

		ATTRIBUTE_DEXTERITY = ATTRIBUTE_STARTING_SECONDARY,
		ATTRIBUTE_AGILITY = ATTRIBUTE_STARTING_NONE,
		ATTRIBUTE_ENDURANCE = ATTRIBUTE_STARTING_NONE,

		ATTRIBUTE_LUCK = 50
	)

	//Limits
	//3 SKILL_STARTING_PRIMARY
	//3 SKILL_STARTING_SECONDARY
	//3 SKILL_STARTING_TERTIARY
	//13 SKILL_STARTING_NONE
	//22 total skills
	skills = list(
		SKILL_RANGED = SKILL_STARTING_SECONDARY,
		SKILL_DODGE = SKILL_STARTING_NONE,
		 = SKILL_STARTING_TERTIARY,
		 = SKILL_STARTING_NONE,
		SKILL_PRECISION 2 = SKILL_STARTING_PRIMARY,
		SKILL_SURVIVAL 2 = SKILL_STARTING_NONE,

		SKILL_MELEE = SKILL_STARTING_PRIMARY,
		SKILL_BLOCK = SKILL_STARTING_NONE,
		SKILL_UNARMED = SKILL_STARTING_NONE,
		SKILL_PRAYER = SKILL_STARTING_NONE,
		 = SKILL_STARTING_NONE,
		 = SKILL_STARTING_PRIMARY,

		SKILL_MEDICINE = SKILL_STARTING_SECONDARY,
		SKILL_MAGIC = SKILL_STARTING_NONE,
		SKILL_SORCERY 2 = SKILL_STARTING_NONE,
		SKILL_PARRY 2 = SKILL_STARTING_NONE,
		 = SKILL_STARTING_NONE,
		 = SKILL_STARTING_NONE,

		SKILL_ALCHEMY = SKILL_STARTING_SECONDARY,
		SKILL_COOKING = SKILL_STARTING_TERTIARY,
		SKILL_CRAFTING = SKILL_STARTING_TERTIARY,
		SKILL_ENCHANTING = SKILL_STARTING_NONE
	)