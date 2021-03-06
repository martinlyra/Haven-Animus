//Food
/datum/job/bartender
	title = "Bartender"
	flag = BARTENDER
	department_head = list("Head of Personnel")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#dddddd"
	access = list(access_hydroponics, access_bar, access_kitchen, access_morgue)
	minimal_access = list(access_bar)

	uniform = /obj/item/clothing/under/rank/bartender
	pda = /obj/item/device/pda/bar
//	ear = /obj/item/device/radio/headset/headset_service

	equip(var/mob/living/carbon/human/H)
		if(!..())	return 0
		var/obj/item/weapon/storage/box/survival/Barpack = null
		if(H.back)
			Barpack = locate() in H.back
			if(!Barpack)
				Barpack = new(H)
				H.equip_to_slot_or_del(Barpack, slot_in_backpack)

		if(!Barpack)
			if(!H.r_hand)
				Barpack = new /obj/item/weapon/storage/box/survival(H)
				H.equip_to_slot_or_del(Barpack, slot_r_hand)
			else if(istype(H.r_hand, /obj/item/weapon/storage/box))
				Barpack = H.r_hand

		if(Barpack)
			new /obj/item/ammo_casing/shotgun/beanbag(Barpack)
			new /obj/item/ammo_casing/shotgun/beanbag(Barpack)
			new /obj/item/ammo_casing/shotgun/beanbag(Barpack)
			new /obj/item/ammo_casing/shotgun/beanbag(Barpack)

		return 1



/datum/job/chef
	title = "Chef"
	flag = CHEF
	department_head = list("Head of Personnel")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#dddddd"
	idtype = /obj/item/weapon/card/id/ltgrey
	access = list(access_hydroponics, access_bar, access_kitchen, access_morgue)
	minimal_access = list(access_kitchen)


	uniform = /obj/item/clothing/under/rank/chef
	shoes = /obj/item/clothing/shoes/black
	pda = /obj/item/device/pda/chef
	hat = /obj/item/clothing/head/chefhat
	suit = /obj/item/clothing/suit/chef
//	ear = /obj/item/device/radio/headset/headset_service

/datum/job/hydro
	title = "Botanist"
	flag = BOTANIST
	department_head = list("Head of Personnel")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 3
	spawn_positions = 2
	supervisors = "the head of personnel"
	selection_color = "#dddddd"
	idtype = /obj/item/weapon/card/id/hydro
	access = list(access_hydroponics, access_bar, access_kitchen, access_morgue) // Removed tox and chem access because STOP PISSING OFF THE CHEMIST GUYS // //Removed medical access because WHAT THE FUCK YOU AREN'T A DOCTOR YOU GROW WHEAT //Given Morgue access because they have a viable means of cloning.
	minimal_access = list(access_hydroponics, access_morgue) // Removed tox and chem access because STOP PISSING OFF THE CHEMIST GUYS // //Removed medical access because WHAT THE FUCK YOU AREN'T A DOCTOR YOU GROW WHEAT //Given Morgue access because they have a viable means of cloning.


	uniform = /obj/item/clothing/under/rank/hydroponics
	pda = /obj/item/device/pda/botanist
	suit = /obj/item/clothing/suit/apron
	gloves = /obj/item/clothing/gloves/botanic_leather
//	ear = /obj/item/device/radio/headset/headset_service

	backpacks = list(
		/obj/item/weapon/storage/backpack/,\
		///obj/item/weapon/storage/backpack/hydroponics,\
		/obj/item/weapon/storage/backpack/satchel_hyd,\
		/obj/item/weapon/storage/backpack/satchel
		)

	put_in_backpack = list(\
		/obj/item/device/analyzer/plant_analyzer
		)


//Cargo
/datum/job/qm
	title = "Quartermaster"
	flag = QUARTERMASTER
	department_head = list("Head of Personnel")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#dddddd"
	idtype = /obj/item/weapon/card/id/qm
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mint, access_mining, access_mining_station)
	minimal_access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mint, access_mining, access_mining_station)

	uniform = /obj/item/clothing/under/rank/cargo
	shoes = /obj/item/clothing/shoes/brown
	pda = /obj/item/device/pda/quartermaster
//	gloves = /obj/item/clothing/gloves/black
	ear = /obj/item/device/radio/headset/headset_cargo
	hand = /obj/item/weapon/clipboard
	glasses = /obj/item/clothing/glasses/sunglasses



/datum/job/cargo_tech
	title = "Cargo Technician"
	flag = CARGOTECH
	department_head = list("Head of Personnel")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the quartermaster and the head of personnel"
	selection_color = "#dddddd"
	idtype = /obj/item/weapon/card/id/qm
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mint, access_mining, access_mining_station)
	minimal_access = list(access_maint_tunnels, access_cargo, access_cargo_bot, access_mailsorting)

	uniform = /obj/item/clothing/under/rank/cargotech
	pda = /obj/item/device/pda/cargo
	ear = /obj/item/device/radio/headset/headset_cargo


/datum/job/mining
	title = "Shaft Miner"
	flag = MINER
	department_head = list("Head of Personnel")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the quartermaster and the head of personnel"
	selection_color = "#dddddd"
	idtype = /obj/item/weapon/card/id/engie
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mint, access_mining, access_mining_station)
	minimal_access = list(access_mining, access_mint, access_mining_station, access_mailsorting)


	uniform = /obj/item/clothing/under/rank/miner
	pda = /obj/item/device/pda/shaftminer
	ear = /obj/item/device/radio/headset/headset_cargo
	survival_gear = /obj/item/weapon/storage/box/engineer

	put_in_backpack = list(\
		/obj/item/weapon/crowbar,\
		/obj/item/weapon/storage/bag/ore
		)



/datum/job/clown
	title = "Clown"
	flag = CLOWN
	department_head = list("Head of Personnel")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#dddddd"
	access = list(access_clown, access_theatre, access_maint_tunnels)
	minimal_access = list(access_clown, access_theatre)

	uniform = /obj/item/clothing/under/rank/clown
	shoes = /obj/item/clothing/shoes/clown_shoes
	pda = /obj/item/device/pda/clown
	mask = /obj/item/clothing/mask/gas/clown_hat
//	ear = /obj/item/device/radio/headset/headset_service

	put_in_backpack = list(\
		/obj/item/weapon/reagent_containers/food/snacks/grown/banana,\
		/obj/item/weapon/bikehorn,\
		/obj/item/toy/crayon/rainbow,\
		/obj/item/weapon/storage/fancy/crayons,\
		/obj/item/toy/waterflower,\
		/obj/item/weapon/stamp/clown
		)

	backpacks = list(
		/obj/item/weapon/storage/backpack/clown,\
		/obj/item/weapon/storage/backpack/satchel_norm,\
		/obj/item/weapon/storage/backpack/satchel
		)

	equip(var/mob/living/carbon/human/H)
		if(!..())	return 0
		H.mutations.Add(CLUMSY)
		return 1



/datum/job/mime
	title = "Mime"
	flag = MIME
	department_head = list("Head of Personnel")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#dddddd"
	access = list(access_mime, access_theatre, access_maint_tunnels)
	minimal_access = list(access_mime, access_theatre)

	uniform = /obj/item/clothing/under/mime
	suit = /obj/item/clothing/suit/suspenders
	pda = /obj/item/device/pda/mime
	hat = /obj/item/clothing/head/beret
	gloves = /obj/item/clothing/gloves/white
	mask = /obj/item/clothing/mask/gas/mime
//	ear = /obj/item/device/radio/headset/headset_service

	put_in_backpack = list(\
		/obj/item/toy/crayon/mime,\
		/obj/item/weapon/reagent_containers/food/drinks/bottle/bottleofnothing
	)
	equip(var/mob/living/carbon/human/H)
		if(!..())	return 0
		H.verbs += /client/proc/mimespeak
		H.verbs += /client/proc/mimewall
		H.mind.special_verbs += /client/proc/mimespeak
		H.mind.special_verbs += /client/proc/mimewall
		H.miming = 1
		return 1


/datum/job/janitor
	title = "Janitor"
	flag = JANITOR
	department_head = list("Head of Personnel")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#dddddd"
	access = list(access_janitor, access_maint_tunnels)
	minimal_access = list(access_janitor, access_maint_tunnels)

	uniform = /obj/item/clothing/under/rank/janitor
	pda = /obj/item/device/pda/janitor
//	ear = /obj/item/device/radio/headset/headset_service



//More or less assistants
/datum/job/librarian
	title = "Librarian"
	flag = LIBRARIAN
	department_head = list("Head of Personnel")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#dddddd"
	access = list(access_library, access_maint_tunnels)
	minimal_access = list(access_library)


	uniform = /obj/item/clothing/under/suit_jacket/red
	pda = /obj/item/device/pda/librarian
	hand = /obj/item/weapon/barcodescanner



//var/global/lawyer = 0//Checks for another lawyer //This changed clothes on 2nd lawyer, both IA get the same dreds.
/datum/job/lawyer
	title = "Lawyer"
	flag = LAWYER
	department_head = list("Head of Personnel")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the captain"
	selection_color = "#dddddd"
	access = list(access_lawyer, access_court, access_sec_doors, access_maint_tunnels)
	minimal_access = list(access_lawyer, access_court, access_sec_doors)

	implanted = 0
	uniform = /obj/item/clothing/under/rank/internalaffairs
	shoes = /obj/item/clothing/shoes/brown
	pda = /obj/item/device/pda/lawyer
	suit = /obj/item/clothing/suit/storage/internalaffairs
	ear = /obj/item/device/radio/headset/headset_sec
	hand = /obj/item/weapon/storage/briefcase
	glasses = /obj/item/clothing/glasses/sunglasses/big
