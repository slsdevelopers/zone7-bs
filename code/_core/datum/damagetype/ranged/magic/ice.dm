/damagetype/ranged/magic/ice
	name = "ice shard"

	//The base attack damage of the weapon. It's a flat value, unaffected by any skills or attributes.
	attack_damage_base = list(
		PIERCE = 20,
		COLD = 20
	)

	attribute_stats = list(
		ATTRIBUTE_INTELLIGENCE = 20
	)

	attribute_damage = list(
		ATTRIBUTE_INTELLIGENCE = list(COLD)
	)

	skill_stats = list(
		SKILL_SORCERY = 20
	)

	skill_damage = list(
		SKILL_SORCERY = list(COLD)
	)

	bonus_experience = list(
		SKILL_SORCERY = 50
	)