/damagetype/melee/club/pickaxe/
	name = "pickaxe"

	impact_sounds = list(
		'sound/weapons/pickaxe/picaxe1.ogg',
		'sound/weapons/pickaxe/picaxe2.ogg',
		'sound/weapons/pickaxe/picaxe3.ogg'
	)


	//The base attack damage of the weapon. It's a flat value, unaffected by any skills or attributes.
	attack_damage_base = list(
		BLADE = 5,
		BLUNT = 15,
		PIERCE = 20
	)

	//How much armor to penetrate. It basically removes the percentage of the armor using these values.
	attack_damage_penetration = list(
		BLADE = 20,
		BLUNT = 20,
		PIERCE = 20
	)

	attribute_stats = list(
		ATTRIBUTE_STRENGTH = 30
	)

	attribute_damage = list(
		ATTRIBUTE_STRENGTH = list(BLUNT, BLADE, PIERCE)
	)

	skill_stats = list(
		SKILL_MELEE = 10
	)

	skill_damage = list(
		SKILL_MELEE = list(BLUNT, BLADE, PIERCE)
	)

/damagetype/melee/club/pickaxe/get_critical_hit_condition(var/atom/attacker,var/atom/victim,var/atom/weapon,var/atom/hit_object)
	if(is_wall(hit_object))
		return TRUE
	return ..()

/damagetype/melee/club/pickaxe/do_critical_hit(var/atom/attacker,var/atom/victim,var/atom/weapon,var/atom/hit_object,var/list/damage_to_deal)
	if(is_wall(hit_object))
		return 4
	return ..()
