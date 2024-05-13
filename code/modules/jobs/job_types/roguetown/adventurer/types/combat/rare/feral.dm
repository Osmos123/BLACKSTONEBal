/datum/advclass/feral
	name = "Feral"
	tutorial = "Unlike your domesticated reptilian brothers, you were hatched out into the bog wilds and are greater attuned to your natural state. All you feel is your gnawing hunger and the need to satiate it."
	allowed_sexes = list("male", "female")
	allowed_races = list(
		"Argonnian",
	)
	outfit = /datum/outfit/job/roguetown/adventurer/feral
	traits_applied = list(TRAIT_RAPID_REGENERATION)

/datum/outfit/job/roguetown/adventurer/feral/pre_equip(mob/living/carbon/human/H)
	..()
  remove_language(/datum/language/common)
  belt = /obj/item/storage/belt/rogue/leather/rope
  beltl = /obj/item/rogueweapon/huntingknife/stoneknife
  r_hand = /obj/item/rogueweapon/spear/stone
	H.mind.adjust_skillrank(/datum/skill/combat/polearms, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/tanning, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/crafting, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/swimming, 4, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/climbing, 4, TRUE)
  H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 4, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/sewing, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/medicine, 4, TRUE)
	H.change_stat("intelligence", -5)
  H.change_stat("constitution", 4)
	H.change_stat("endurance", 4)
	H.ambushable = FALSE
