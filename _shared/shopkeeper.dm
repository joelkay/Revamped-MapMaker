obj
	sale
		icon = 'icons/gui.dmi'

		var
			cost = 1
			eventcost=0
			refr = 0
			special = 0
			limit = 100
			stackable = 0

		New()
			..()

			if(refr && icon == 'icons/gui.dmi' && !icon_state)
				var/obj/X = new refr()
				icon = X.icon
				icon_state = X.icon_state
				X.loc = null
/*			if(faction.village=="Konoha")
				cost = round((leafrep - 50)/50 * cost)*/

		Nevermind
			icon_state = "nvm"

	/*	if(leafrep >= sandrep+15 && leafrep >= mistrep+15 && usr.faction.village=="Konoha")
			cost = cost/1.5*/

		Sasuke_Clothes
			icon = 'icons/sasuke_cloth.dmi'
			icon_state = "gui"
			refr = /obj/items/equipable/Sasuke_Clothes
			cost = 1500
		Arm_Guards
			icon = 'icons/arm_guards.dmi'
			icon_state = "gui"
			refr = /obj/items/equipable/Arm_Guards
			cost = 1500
		Face_Bandage
			icon = 'icons/FaceBandage1.dmi'
			icon_state = "gui"
			refr = /obj/items/equipable/Bandage1
			cost = 300
		shirt_sleeves
			icon = 'icons/shirt_sleeves/shirt_sleeves.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/shirt_sleeves/black
			cost = 300

		shirt_sleevesdred
			icon = 'icons/shirt_sleeves/shirt_sleevesdred.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/shirt_sleeves/dred
			cost = 300

		shirt_sleevesdgreen
			icon = 'icons/shirt_sleeves/shirt_sleevesdgreen.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/shirt_sleeves/dgreen
			cost = 300

		shirt_sleevesbrown
			icon = 'icons/shirt_sleeves/shirt_sleevesbrown.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/shirt_sleeves/brown
			cost = 300

		shirt_sleevesblue
			icon = 'icons/shirt_sleeves/shirt_sleevesblue.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/shirt_sleeves/blue
			cost = 300

		shirt_sleevesgrey
			icon = 'icons/shirt_sleeves/shirt_sleevesgrey.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/shirt_sleeves/grey
			cost = 300

		shirt_sleevesred
			icon = 'icons/shirt_sleeves/shirt_sleevesred.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/shirt_sleeves/red
			cost = 300

		jacket
			icon = 'jacket/jacket.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/jacket/black
			cost = 600
		jacketdred
			icon = 'jacket/jacketdred.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/jacket/dred
			cost = 600
		jacketdgreen
			icon = 'jacket/jacketdgreen.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/jacket/dgreen
			cost = 600
		jacketdblue
			icon = 'jacket/jacketdblue.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/jacket/dblue
			cost = 600
		jacketbrown
			icon = 'jacket/jacketbrown.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/jacket/brown
			cost = 600

		jacketgrey
			icon = 'jacket/jacketgrey.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/jacket/grey
			cost = 600

		jacketobito
			icon = 'jacket/jacketobito.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/jacket/obito
			cost = 1500
		shirt_sleevesgreen
			icon = 'icons/shirt_sleeves/shirt_sleevesgreen.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/shirt_sleeves/green
			cost = 300

		shirt_sleevesorange
			icon = 'icons/shirt_sleeves/shirt_sleevesorange.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/shirt_sleeves/orange
			cost = 300

		shirt_sleevesdblue
			icon = 'icons/shirt_sleeves/shirt_sleevesdblue.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/shirt_sleeves/dblue
			cost = 300

		shirt_sleevespurple
			icon = 'icons/shirt_sleeves/shirt_sleevespurple.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/shirt_sleeves/purple
			cost = 300

		shirt_sleeveswhite
			icon = 'icons/shirt_sleeves/shirt_sleeveswhite.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/shirt_sleeves/white
			cost = 300
		trench
			icon = 'trench/trench.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/trench/black
			cost = 800
		trenchdred
			icon = 'trench/trenchdred.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/trench/dred
			cost = 800
		trenchdgreen
			icon = 'trench/trenchdgreen.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/trench/dgreen
			cost = 800
		trenchbrown
			icon = 'trench/trenchbrown.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/trench/brown
			cost = 800
		trenchblue
			icon = 'trench/trenchblue.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/trench/blue
			cost = 800
		trenchgrey
			icon = 'trench/trenchgrey.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/trench/grey
			cost = 800
		trenchred
			icon = 'trench/trenchred.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/trench/red
			cost = 800
		trenchgreen
			icon = 'trench/trenchgreen.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/trench/green
			cost = 800
		trenchorange
			icon = 'trench/trenchorange.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/trench/orange
			cost = 800
		trenchdblue
			icon = 'trench/trenchblue.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/trench/dblue
			cost = 800
		trenchpurple
			icon = 'trench/trenchpurple.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/trench/purple
			cost = 800
		trenchwhite
			icon = 'trench/trenchwhite.dmi'
			icon_state = "HUD"
			refr = /obj/items/equipable/trench/white
			cost = 800
		Cloak
			icon = 'cloak/cloak.dmi'
			icon_state = "gui"
			refr = /obj/items/equipable/cloak/black
			cost = 800
		Cloakdred
			icon = 'cloak/cloakdred.dmi'
			icon_state = "gui"
			refr = /obj/items/equipable/cloak/dred
			cost = 800
		Cloakdgreen
			icon = 'cloak/cloakdgreen.dmi'
			icon_state = "gui"
			refr = /obj/items/equipable/cloak/dgreen
			cost = 800
		Cloakbrown
			icon = 'cloak/cloakbrown.dmi'
			icon_state = "gui"
			refr = /obj/items/equipable/cloak/brown
			cost = 800
		Cloakblue
			icon = 'cloak/cloakblue.dmi'
			icon_state = "gui"
			refr = /obj/items/equipable/cloak/blue
			cost = 800
		Cloakgrey
			icon = 'cloak/cloakgrey.dmi'
			icon_state = "gui"
			refr = /obj/items/equipable/cloak/grey
			cost = 800
		Cloakred
			icon = 'cloak/cloakred.dmi'
			icon_state = "gui"
			refr = /obj/items/equipable/cloak/red
			cost = 800
		Cloakgreen
			icon = 'cloak/cloakgreen.dmi'
			icon_state = "gui"
			refr = /obj/items/equipable/cloak/green
			cost = 800
		Cloakorange
			icon = 'cloak/cloakorange.dmi'
			icon_state = "gui"
			refr = /obj/items/equipable/cloak/orange
			cost = 800
		Cloakdblue
			icon = 'cloak/cloakblue.dmi'
			icon_state = "gui"
			refr = /obj/items/equipable/cloak/dblue
			cost = 800
		Cloakpurple
			icon = 'cloak/cloakpurple.dmi'
			icon_state = "gui"
			refr = /obj/items/equipable/cloak/purple
			cost = 800
		Cloakwhite
			icon = 'cloak/cloakwhite.dmi'
			icon_state = "gui"
			refr = /obj/items/equipable/cloak/white
			cost = 800

		Black_Pants
			icon = 'icons/pants/pants.dmi'
			icon_state = "gui"
			refr = /obj/items/equipable/Pants/Black
			cost = 200
		Blue_Pants
			icon = 'icons/pants/pantsblue.dmi'
			icon_state = "gui"
			refr = /obj/items/equipable/Pants/Blue
			cost = 200
		Brown_Pants
			icon = 'icons/pants/pantsbrown.dmi'
			icon_state = "gui"
			refr = /obj/items/equipable/Pants/Brown
			cost = 200
		Green_Pants
			icon = 'icons/pants/pantsgreen.dmi'
			icon_state = "gui"
			refr = /obj/items/equipable/Pants/Green
			cost = 200
		Grey_Pants
			icon = 'icons/pants/pantsgrey.dmi'
			icon_state = "gui"
			refr = /obj/items/equipable/Pants/Grey
			cost = 200
		LightBlue_Pants
			icon = 'icons/pants/pantslightblue.dmi'
			icon_state = "gui"
			refr = /obj/items/equipable/Pants/LightBlue
			cost = 200
		LightBrown_Pants
			icon = 'icons/pants/pantslightbrown.dmi'
			icon_state = "gui"
			refr = /obj/items/equipable/Pants/LightBrown
			cost = 200
		LightGrey_Pants
			icon = 'icons/pants/pantslightgrey.dmi'
			icon_state = "gui"
			refr = /obj/items/equipable/Pants/LightGrey
			cost = 200
		Orange_Pants
			icon = 'icons/pants/pantsorange.dmi'
			icon_state = "gui"
			refr = /obj/items/equipable/Pants/Orange
			cost = 200
		Red_Pants
			icon = 'icons/pants/pantsred.dmi'
			icon_state = "gui"
			refr = /obj/items/equipable/Pants/Red
			cost = 200
		White_Pants
			icon = 'icons/pants/pantswhite.dmi'
			icon_state = "gui"
			refr = /obj/items/equipable/Pants/White
			cost = 200
		Black_Shirt
			icon = 'icons/shirts/shirt.dmi'
			icon_state = "hud"
			refr = /obj/items/equipable/Shirt/Black
			cost = 100
		Blue_Shirt
			icon = 'icons/shirts/shirtblue.dmi'
			icon_state = "hud"
			refr = /obj/items/equipable/Shirt/Blue
			cost = 100
		DarkBlue_Shirt
			icon = 'icons/shirts/shirtdarkblue.dmi'
			icon_state = "hud"
			refr = /obj/items/equipable/Shirt/DarkBlue
			cost = 100
		DarkGreen_Shirt
			icon = 'icons/shirts/shirtdarkgreen.dmi'
			icon_state = "hud"
			refr = /obj/items/equipable/Shirt/DarkGreen
			cost = 100
		DarkOrange_Shirt
			icon = 'icons/shirts/shirtdarkorange.dmi'
			icon_state = "hud"
			refr = /obj/items/equipable/Shirt/DarkOrange
			cost = 100
		DarkRed_Shirt
			icon = 'icons/shirts/shirtdarkred.dmi'
			icon_state = "hud"
			refr = /obj/items/equipable/Shirt/DarkRed
			cost = 100
		Green_Shirt
			icon = 'icons/shirts/shirtgreen.dmi'
			icon_state = "hud"
			refr = /obj/items/equipable/Shirt/Green
			cost = 100
		Grey_Shirt
			icon = 'icons/shirts/shirtgrey.dmi'
			icon_state = "hud"
			refr = /obj/items/equipable/Shirt/Grey
			cost = 100
		LightBlue_Shirt
			icon = 'icons/shirts/shirtlightblue.dmi'
			icon_state = "hud"
			refr = /obj/items/equipable/Shirt/LightBlue
			cost = 100
		LightGrey_Shirt
			icon = 'icons/shirts/shirtlightgrey.dmi'
			icon_state = "hud"
			refr = /obj/items/equipable/Shirt/LightGrey
			cost = 100
		LightOrange_Shirt
			icon = 'icons/shirts/shirtlightorange.dmi'
			icon_state = "hud"
			refr = /obj/items/equipable/Shirt/LightOrange
			cost = 100
		LightRed_Shirt
			icon = 'icons/shirts/shirtlightred.dmi'
			icon_state = "hud"
			refr = /obj/items/equipable/Shirt/LightRed
			cost = 100
		Orange_Shirt
			icon = 'icons/shirts/shirtorange.dmi'
			icon_state = "hud"
			refr = /obj/items/equipable/Shirt/Orange
			cost = 100
		Red_Shirt
			icon = 'icons/shirts/shirtred.dmi'
			icon_state = "hud"
			refr = /obj/items/equipable/Shirt/Red
			cost = 100
		White_Shirt
			icon = 'icons/shirts/shirtwhite.dmi'
			icon_state = "hud"
			refr = /obj/items/equipable/Shirt/White
			cost = 100
		Yellow_Shirt
			icon = 'icons/shirts/shirtyellow.dmi'
			icon_state = "hud"
			refr = /obj/items/equipable/Shirt/Yellow
			cost = 100
		SupplyScroll
			icon = 'icons/gui.dmi'
			icon_state = "supplyscroll"
			refr = /obj/items/usable/Scroll/Supplyscroll
			cost = 150
			stackable = 1
			limit = 3
		Antidote
			icon = 'icons/gui.dmi'
			icon_state = "antidote"
			refr = /obj/items/usable/Antidote
			cost = 1000
			stackable = 1
			limit = 10
		Bandage
			icon = 'icons/gui.dmi'
			icon_state = "bandage"
			refr = /obj/items/usable/Bandage
			cost = 100
			stackable = 1
			limit = 10
		Caltrop
			icon = 'icons/gui.dmi'
			icon_state = "caltrop"
			refr = /obj/items/usable/Caltrop
			cost = 100
			stackable = 1
			limit = 10
		SmokeBomb
			icon = 'icons/gui.dmi'
			icon_state = "smoke2"
			refr = /obj/items/usable/SmokeBomb
			cost = 300
			stackable = 1
			limit = 4
		SScythe
			icon = 'icons/gui.dmi'
			icon_state = "Scythe-Seal"
			refr = /obj/items/usable/SScythe
			cost = 1700
			stackable = 1
			limit = 4
		SKnife
			icon = 'icons/gui.dmi'
			icon_state = "Knife-Seal"
			refr = /obj/items/usable/SKnife
			cost = 1700
			stackable = 1
			limit = 4
		SSpike
			icon = 'icons/gui.dmi'
			icon_state = "Spike-Seal"
			refr = /obj/items/usable/SSpike
			cost = 1700
			stackable = 1
			limit = 4
		SoldierPill
			icon = 'icons/gui.dmi'
			icon_state = "soldierpill"
			refr = /obj/items/usable/SoldierPill
			cost = 100
			stackable = 1
			limit = 50
		Tripwire
			icon = 'icons/gui.dmi'
			icon_state = "tripwire"
			refr = /obj/items/usable/Tripwire
			cost = 50
			stackable = 1
			limit = 20

		Anbu_Sword
			name = "ANBU Sword"
			icon = 'icons/projectiles.dmi'
			icon_state = "sword"
			cost = 2000
			refr = /obj/items/weapons/melee/sword/Sword
		Zabuza_Sword
			name = "Decapitator Sword"
			cost = 10000
			icon = 'icons/projectiles.dmi'
			icon_state = "zsword"
			refr = /obj/items/weapons/melee/sword/ZSword
		Supplies
			name = "Supplies"
			cost = 25
			icon = 'icons/gui.dmi'
			icon_state = "supplies"
			special = "Supplies"

		Karasu_Puppets
			icon = 'icons/puppet1.dmi'
			icon_state = "gui"
			refr = /obj/items/Puppet/Karasu
			cost = 300
		Advanced_Karasu_Puppets
			icon = 'icons/puppet1.dmi'
			icon_state = "gui"
			refr = /obj/items/Puppet/Advanced_Karasu
			cost = 1500
		Master_Karasu_Puppets
			icon = 'icons/puppet1.dmi'
			icon_state = "gui"
			refr = /obj/items/Puppet/Master_Karasu
			cost = 5000
		Hidden_Knife_Shots
			icon = 'icons/gui.dmi'
			icon_state = "mouthknife"
			refr = /obj/items/Puppet_Stuff/Hidden_Knife_Shot
			cost = 500
		Poison_Bombs
			icon = 'icons/gui.dmi'
			icon_state = "poisonbomb"
			refr = /obj/items/Puppet_Stuff/Poison_Bomb
			cost = 1100
		Body_Crushs
			icon = 'icons/gui.dmi'
			icon_state = "armbind"
			refr = /obj/items/Puppet_Stuff/Body_Crush
			cost = 750
		Poison_Tipped_Blades
			icon = 'icons/gui.dmi'
			icon_state = "mild-poison"
			refr = /obj/items/Puppet_Stuff/Poison_Tipped_Blade
			cost = 950
		Needle_Guns
			icon = 'icons/gui.dmi'
			icon_state = "needlegun"
			refr = /obj/items/Puppet_Stuff/Needle_Gun
			cost = 1350

		Chakra_Shields
			icon = 'icons/gui.dmi'
			icon_state = "chakrashield"
			refr = /obj/items/Puppet_Stuff/Chakra_Shield
			cost = 1250

		Fourth_Cloak
			refr = /obj/items/equipable/newsys/Fourth_Cloak
			cost = 2000
		Tobi_Mask
			refr = /obj/items/equipable/newsys/Tobi_Mask
			cost = 4000
		Shippuden_Neji
			refr = /obj/items/equipable/newsys/Shippuden_Neji
			cost = 2500
		Member_HCloak
			refr = /obj/items/equipable/newsys/Hebi_Cloak
			cost = 1500
		Member_NCloak
			refr = /obj/items/equipable/newsys/Naruto_Cloak
			cost = 1500
		Anbu_Armor
			refr = /obj/items/equipable/newsys/Anbu_Armor
			cost = 1200

		SAnbu_Armor
			refr = /obj/items/equipable/newsys/SAnbu_Armor
			cost = 3000

		Anbu_Mask_1
			refr = /obj/items/equipable/newsys/Anbu_Mask_1
			cost = 1500
		Anbu_Mask_2
			refr = /obj/items/equipable/newsys/Anbu_Mask_2
			cost = 1500
		Anbu_Mask_3
			refr = /obj/items/equipable/newsys/Anbu_Mask_3
			cost = 1500

		Armtape_Right
			refr = /obj/items/equipable/newsys/Armtape_Right
			cost = 300
		Armtape_Left
			refr = /obj/items/equipable/newsys/Armtape_Left
			cost = 300
		Fishnet
			refr = /obj/items/equipable/newsys/Fishnet
			cost = 500
		Armor_Sholders_Black
			refr = /obj/items/equipable/newsys/Armor_Sholders_Black
			cost = 1200
		Armor_Sholders_Brown
			refr = /obj/items/equipable/newsys/Armor_Sholders_Brown
			cost = 1200
		Armor_Sholders_Blue
			refr = /obj/items/equipable/newsys/Armor_Sholders_Blue
			cost = 1200
		Armor_Sholders_DBlue
			refr = /obj/items/equipable/newsys/Armor_Sholders_DBlue
			cost = 1200
		Armor_Sholders_DGreen
			refr = /obj/items/equipable/newsys/Armor_Sholders_DGreen
			cost = 1200
		Armor_Sholders_DRed
			refr = /obj/items/equipable/newsys/Armor_Sholders_DRed
			cost = 1200
		Armor_Sholders_Green
			refr = /obj/items/equipable/newsys/Armor_Sholders_Green
			cost = 1200
		Armor_Sholders_Grey
			refr = /obj/items/equipable/newsys/Armor_Sholders_Grey
			cost = 1200
		Armor_Sholders_Orange
			refr = /obj/items/equipable/newsys/Armor_Sholders_Orange
			cost = 1200
		Armor_Sholders_Purple
			refr = /obj/items/equipable/newsys/Armor_Sholders_Purple
			cost = 1200
		Armor_Sholders_Red
			refr = /obj/items/equipable/newsys/Armor_Sholders_Red
			cost = 1200
		Armor_Sholders_White
			refr = /obj/items/equipable/newsys/Armor_Sholders_White
			cost = 1200

		Armor_Body_Black
			refr = /obj/items/equipable/newsys/Armor_Body_Black
			cost = 2000
		Armor_Body_Brown
			refr = /obj/items/equipable/newsys/Armor_Body_Brown
			cost = 2000
		Armor_Body_Blue
			refr = /obj/items/equipable/newsys/Armor_Body_Blue
			cost = 2000
		Armor_Body_DBlue
			refr = /obj/items/equipable/newsys/Armor_Body_DBlue
			cost = 2000
		Armor_Body_DGreen
			refr = /obj/items/equipable/newsys/Armor_Body_DGreen
			cost = 2000
		Armor_Body_DRed
			refr = /obj/items/equipable/newsys/Armor_Body_DRed
			cost = 2000
		Armor_Body_Green
			refr = /obj/items/equipable/newsys/Armor_Body_Green
			cost = 2000
		Armor_Body_Grey
			refr = /obj/items/equipable/newsys/Armor_Body_Grey
			cost = 2000
		Armor_Body_Orange
			refr = /obj/items/equipable/newsys/Armor_Body_Orange
			cost = 2000
		Armor_Body_Purple
			refr = /obj/items/equipable/newsys/Armor_Body_Purple
			cost = 2000
		Armor_Body_Red
			refr = /obj/items/equipable/newsys/Armor_Body_Red
			cost = 2000
		Armor_Body_White
			refr = /obj/items/equipable/newsys/Armor_Body_White
			cost = 2000

		KMask_Black
			refr = /obj/items/equipable/newsys/KMask_Black
			cost = 300
		KMask_Brown
			refr = /obj/items/equipable/newsys/KMask_Brown
			cost = 300
		KMask_Blue
			refr = /obj/items/equipable/newsys/KMask_Blue
			cost = 300
		KMask_DBlue
			refr = /obj/items/equipable/newsys/KMask_DBlue
			cost = 300
		KMask_DGreen
			refr = /obj/items/equipable/newsys/KMask_DGreen
			cost = 300
		KMask_DRed
			refr = /obj/items/equipable/newsys/KMask_DRed
			cost = 300
		KMask_Green
			refr = /obj/items/equipable/newsys/KMask_Green
			cost = 300
		KMask_Grey
			refr = /obj/items/equipable/newsys/KMask_Grey
			cost = 300
		KMask_Orange
			refr = /obj/items/equipable/newsys/KMask_Orange
			cost = 300
		KMask_Purple
			refr = /obj/items/equipable/newsys/KMask_Purple
			cost = 300
		KMask_Red
			refr = /obj/items/equipable/newsys/KMask_Red
			cost = 300
		KMask_White
			refr = /obj/items/equipable/newsys/KMask_White
			cost = 300

		proc
			InfCost(var/orig_cost)
			//	world.log <<"Its up and running"
			//	return orig_cost/2
				if(usr.faction:village=="Konoha")
					orig_cost += round((leafrep - 33)/33 * orig_cost)
				else if(usr.faction:village=="Suna")
					orig_cost += round((sandrep - 33)/33 * orig_cost)
				else if(usr.faction:village=="Kiri")
					orig_cost += round((mistrep - 33)/33 * orig_cost)
