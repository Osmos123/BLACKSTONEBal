/datum/job/roguetown/markswoman
	title = "Royal Ranger"
	flag = GUARDSMAN
	department_flag = GARRISON
	faction = "Station"
	total_positions = 0
	spawn_positions = 2

	allowed_sexes = list(FEMALE)
	allowed_races = list("Elf","Dark Elf")

	allowed_ages = list(AGE_ADULT, AGE_MIDDLEAGED)
	tutorial = "From either indoctrination or enjoyment of extra privileges, these once native elven rangers have embraced the humen ways and sworn an oath to defend their liege. Years of opulence and debauchery has led them to be apathetic to the plight of their kin."
	display_order = JDO_MARKSWOMAN
	whitelist_req = TRUE

	outfit = /datum/outfit/job/roguetown/markswoman
	give_bank_account = 10
	min_pq = 2


/datum/outfit/job/roguetown/markswoman/pre_equip(mob/living/carbon/human/H)
	..()
	pants = /obj/item/clothing/under/roguetown/chainlegs
	cloak = /obj/item/clothing/cloak/cape/guard
	neck = /obj/item/clothing/neck/roguetown/gorget
	armor = /obj/item/clothing/suit/roguetown/armor/chainmail/chainkini
	shoes = /obj/item/clothing/shoes/roguetown/boots
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
	belt = /obj/item/storage/belt/rogue/leather
	beltl = /obj/item/quiver/arrows
	backl = backr = /obj/item/gun/ballistic/revolver/grenadelauncher/bow
	backr = /obj/item/storage/backpack/rogue/satchel
	backpack_contents = list(/obj/item/keyring/guardcastle=1, /obj/item/rogueweapon/huntingknife/idagger/steel=1)
	beltr = /obj/item/rogueweapon/sword

	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/combat/axesmaces, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/bows, 5, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/swords, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.change_stat("perception", 3)
		H.change_stat("endurance", 1)
		H.change_stat("speed", 3)

	ADD_TRAIT(H, RTRAIT_MEDIUMARMOR, TRAIT_GENERIC)
