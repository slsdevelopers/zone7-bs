/dialogue/npc/soldier/

/dialogue/npc/soldier/get_dialogue_options(var/mob/living/advanced/player/P,var/list/known_options)

	var/mob/living/L = P.dialogue_target

	. = list()

	if(L.following) //If we're following someone
		if(L.following == P) //If we're following the person we're talking to.
			.["hello"] = list(
				"Awaiting orders1.",
				"*stop following me"
			)
			.["*stop following me"] = list(
				"I will wait here."
			)
		else //If we're following someone else.
			.["hello"] = list(
				"Awaiting orders2.",
				"*follow me"
			)
			.["*follow me"] = list(
				"I am currently following the orders of [L.following.real_name]."
			)
	else //We're not following someone.
		.["hello"] = list(
			"Awaiting orders3.",
			"*follow me"
		)
		if(length(P.followers) <= 0) //They have no followers.
			.["*follow me"] = list(
				"I will follow."
			)
		else
			.["*follow me"] = list(
				"You already have someone with you."
			)

	return .


/dialogue/npc/soldier/set_topic(var/mob/living/advanced/player/P,var/topic)

	. = ..()

	if(!is_living(P.dialogue_target))
		return .

	var/mob/living/L = P.dialogue_target

	if(!L.ai)
		return .

	switch(topic)
		if("*stop following me")
			if(L in P.followers)
				L.ai.set_move_objective(null)
				L.following = null
				P.followers -= L
		if("*follow me")
			if(length(P.followers) <= 0 && !L.following)
				P.followers += L
				L.ai.set_move_objective(P,TRUE)
				L.following = P
	return .