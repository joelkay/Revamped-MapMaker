var/list/map_infos = list()

obj/mapinfo
	icon = 'icons/maptag_marker.dmi'
	// Make maptags completely invisible.
	// Since their sole purpose is to mark a location,
	// players don't need to ever interact with them.
	invisibility = 101
	var
		alert_level=0
		attacking_village

		in_war = 0
		attacker_deaths = 0
		defender_deaths = 0

		village_players[0]
		alert_cool[6]
		alert_imgs[6]

	New()
		. = ..()
		map_infos.Add(src)//add to our list
		var/tile_x = MAP_START_X+oX-1
		var/tile_y = MAP_START_Y-oY
		for(var/level in 0 to 5)
			alert_imgs[level+1] = new /image('icons/map_overlays/alerts.dmi', icon_state="[level]", loc=locate(tile_x,tile_y,2))

	CanLeave(mob/human/M)
		if(M.faction)
			if(in_war && (M.faction:village == attacking_village || M.faction:village == village_control))
				M << "You cannot run from this battle!"
				return 0
		return 1

	CanEnter(mob/human/M)
		if(M.faction)
			if(in_war && !(M.faction:village == attacking_village || M.faction:village == village_control))
				M << "That area is too dangerous to enter."
				return 0
		return 1

	PlayerEntered(mob/human/M)

		if(!istype(M, /mob/human/player/npc) && !istype(M, /mob/human/player/npc/bunshin) && !istype(M, /mob/human/player/npc/kage_bunshin) /*&& !istype(M, /mob/human/player/npc/waterclone) */&& M.faction)
			++village_players[M.faction:village]

			//online_admins << "[oX],[oY] [village_control]: PlayerEntered([M]) [M.faction] [M.faction:village] [village_players[M.faction:village]]"

			RefreshAlert()
			//if(can_capture) Check_War(src, M.faction:village)

	PlayerLeft(mob/human/M)

		if(!istype(M, /mob/human/player/npc) && !istype(M, /mob/human/player/npc/bunshin) && !istype(M, /mob/human/player/npc/kage_bunshin) /*&& !istype(M, /mob/human/player/npc/waterclone) */&& M.faction)
			village_players[M.faction:village] = max(0, village_players[M.faction:village]-1)

			//online_admins << "[oX],[oY] [village_control]: PlayerLeft([M]) [M.faction] [M.faction:village] [village_players[M.faction:village]]"

			RefreshAlert()
			/*
			if(in_war)
				if(M.faction:village == village_control)
					++defender_deaths
				else if(M.faction:village == attacking_village)
					++attacker_deaths
			*/

	proc
		RefreshAlert()
			var/enemy_players = 0
			if(village_control != "Missing")
				for(var/village in village_players)
					if(village != village_control)
						enemy_players += village_players[village]
				var/old_alert = alert_level
				switch(enemy_players)
					if(0 to 1)
						alert_level = 0
					if(2 to 3)
						alert_level = 1
					if(4 to 5)
						alert_level = 2
					if(6 to 7)
						alert_level = 3
					if(8 to 9)
						alert_level = 4
					else
						alert_level = 5
				if(alert_level != old_alert && !alert_cool[alert_level+1])
					var/cool_level = alert_level+1
					alert_cool[cool_level]=1
					spawn(600)
						alert_cool[cool_level]=0
					if(alert_level > 0)
						for(var/faction/F)
							if(F.village==village_control)
								F.online_members<<"<span class='territory_info'>(Alert): One of your village's controlled areas is now at alert level [alert_level]!</span>"
					else
						for(var/faction/F)
							if(F.village==village_control)
								F.online_members<<"<span class='territory_info'>(Alert): One of your village's controlled areas is no longer on alert!</span>"

var/list/control_overlay_dir_bitflags = list(1, 16, 0, 4, 2, 8, 0, 64, 128, 32)

obj/control_overlay
	layer=5
	// AutoJoin from LummoxJR
	proc/AutoJoin()
		var/joinflag = 0
		for(var/d = 1 to 10)
			if(!control_overlay_dir_bitflags[d]) continue
			var/turf/T = get_step(src, d)
			for(var/obj/control_overlay/O in T)
				if(O && (O.type == type || istype(O, /obj/control_overlay/blank)))
					joinflag |= control_overlay_dir_bitflags[d]
		/*
		    Bitwise math for 47-state joining:
		    Leave cardinal directions (1+4+16+64=85) on, but AND others with
		    neighboring bits.
		 */
		joinflag &= ((joinflag << 1) & ((joinflag << 7) | (joinflag >> 1))) | 85
		icon_state = "[joinflag]"

	New(loc)
		. = ..()
		for(var/obj/control_overlay/A in range(1, loc))
			A.AutoJoin()

	Del()
		var/oldloc = loc
		loc = null
		for(var/obj/control_overlay/A in range(1, oldloc))
			A.AutoJoin()
		. = ..()


	konoha
		icon = 'icons/map_overlays/konoha.dmi'

	kiri
		icon = 'icons/map_overlays/kiri.dmi'

	suna
		icon = 'icons/map_overlays/suna.dmi'

	missing
		icon = 'icons/map_overlays/missing.dmi'

	blank
		AutoJoin()
			var/joinflag = 0
			for(var/d = 1 to 10)
				if(!control_overlay_dir_bitflags[d]) continue
				var/turf/T = get_step(src, d)
				for(var/obj/control_overlay/O in T)
					if(O && (istype(O, /obj/control_overlay)))
						joinflag |= control_overlay_dir_bitflags[d]
			/*
			    Bitwise math for 47-state joining:
			    Leave cardinal directions (1+4+16+64=85) on, but AND others with
			    neighboring bits.
			 */
			joinflag &= ((joinflag << 1) & ((joinflag << 7) | (joinflag >> 1))) | 85
			icon_state = "[joinflag]"

obj
	constested_control
		icon = 'icons/map_overlays/contested.dmi'
		layer=5
	war_control
		icon = 'icons/map_overlays/war.dmi'
		layer=6

proc
	Setup_Map()
		var/list/map_turfs = block(locate(MAP_START_X,MAP_START_Y,MAP_START_Z), locate(MAP_START_X+8,MAP_START_Y+8,MAP_START_Z))
		if(fexists("war.sav"))
			var/savefile/F = new("war.sav")
			for(var/obj/mapinfo/Minfo in map_infos)
				if(!Minfo) continue

				var/turf/T = locate(MAP_START_X+Minfo.oX-1, MAP_START_Y-Minfo.oY, MAP_START_Z)
				map_turfs -= T

				F.cd = "/[Minfo.oX]/[Minfo.oY]"
				F["control"] >> Minfo.village_control
				F["can_capture"] >> Minfo.base_capture
				Minfo.can_capture = Minfo.base_capture
				Set_Control_Display(Minfo.oX, Minfo.oY, Minfo.village_control)
		else
			for(var/obj/mapinfo/Minfo in map_infos)
				if(!Minfo) continue

				var/turf/T = locate(MAP_START_X+Minfo.oX-1, MAP_START_Y-Minfo.oY, MAP_START_Z)
				//world.log<<"Using Z => [MAP_START_Z]"
				map_turfs -= T

				if(Minfo.oY <= 3)
					Minfo.village_control = "Konoha"
					if(Minfo.oY <= 2)
						Minfo.can_capture = 0
						Minfo.base_capture = 0
				else
					if(Minfo.oY >= 6 && Minfo.oY <= 9 && Minfo.oX <= 3)
						Minfo.village_control = "Suna"
						if(Minfo.oY >= 6 && Minfo.oY <= 8 && Minfo.oX <= 2)
							Minfo.can_capture = 0
							Minfo.base_capture = 0
					else
						if(Minfo.oX >= 7)
							Minfo.village_control = "Kiri"
							if(Minfo.oX >= 8)
								Minfo.can_capture = 0
								Minfo.base_capture = 0
						else
							Minfo.village_control = "Missing"
							if(Minfo.oX == 5 && Minfo.oY == 6)
								Minfo.can_capture = 0
								Minfo.base_capture = 0
				Set_Control_Display(Minfo.oX, Minfo.oY, Minfo.village_control)

			Save_Map()

		for(var/turf/T in map_turfs)
			new /obj/control_overlay/blank(T)


	Save_Map()
		var/savefile/F = new("war.sav")
		for(var/obj/mapinfo/Minfo in map_infos)
			if(!Minfo) continue

			F.cd = "/[Minfo.oX]/[Minfo.oY]"
			F["control"] << Minfo.village_control
			F["can_capture"] << Minfo.base_capture

	Set_Control_Display(map_x, map_y, new_village)
		var/turf/T = locate(MAP_START_X+map_x-1, MAP_START_Y-map_y, 2)
		for(var/obj/O in T)
			O.loc = null
		var/type
		if(T)world.log<<"[map_x],[map_y] => [new_village] => Turf{[T.x],[T.y],[T.z]}"
		switch(new_village)
			if("Konoha")
				type = /obj/control_overlay/konoha
			if("Kiri")
				type = /obj/control_overlay/kiri
			if("Suna")
				type = /obj/control_overlay/suna
			else
				type = /obj/control_overlay/missing
		new type(T)

	Set_Contested_Control_Display(map_x, map_y, defend_vil, attack_vil)
		var/turf/T = locate(MAP_START_X+map_x-1, MAP_START_Y-map_y, 2)
		for(var/obj/O in T)
			O.loc = null
		for(var/obj/control_overlay/A in range(1, T))
			A.AutoJoin()
		var/obj/constested_control/obj = new (T)
		obj.icon_state = "[defend_vil]-[attack_vil]"

	Set_War_Control_Display(map_x, map_y, defend_vil, attack_vil)
		Set_Contested_Control_Display(map_x, map_y, defend_vil, attack_vil)
		var/turf/T = locate(MAP_START_X+map_x-1, MAP_START_Y-map_y, 2)
		var/obj/war_control/obj = new (T)
		obj.icon_state = "[defend_vil]-[attack_vil]"

	Check_War(obj/mapinfo/M, village)
		var/village_players = M.village_players[village]
		online_admins << "[M.oX],[M.oY] Current Controller=>([M.village_control]), CanCap=>([M.can_capture]), village=>([village]), village_players=>([village_players]) CAPTURE_THRESHOLD([CAPTURE_THRESHOLD])"
		if(!M.can_capture || village==M.village_control || village_players < CAPTURE_THRESHOLD)
			return

		var/map_x = M.oX
		var/map_y = M.oY

		var/adjacent[0]
		for(var/x in list(map_x-1, map_x+1))
			if(x >= 1 && x <= map_coords.len)
				var/obj/mapinfo/map = map_coords[x][map_y+1]
				if(map)
					adjacent += map
		for(var/y in list(map_y, map_y+2))
			var/list/map_col = map_coords[map_x]
			if(y >= 1 && y <= map_col.len)
				var/obj/mapinfo/map = map_col[y]
				if(map)
					adjacent += map

		var/can_capture = 0
		for(var/obj/mapinfo/map in adjacent)
			if(map.village_control == village)
				can_capture = 1
				break

		if(can_capture)
			M.can_capture = 0
			Set_Contested_Control_Display(map_x, map_y, M.village_control, village)
			for(var/faction/F)
				if(F.village == M.village_control)
					F.online_members<<"<span class='territory_info'>(Alert): One of your village's controlled areas is being captured by [village]!</span>"
				if(F.village == village)
					F.online_members<<"<span class='territory_info'>(Alert): Your village is capturing one of [M.village_control]'s areas!</span>"
			spawn() Capture_Loop(M, village, M.village_control)

	Capture_Loop(obj/mapinfo/M, attacking_village, defending_village)
		var/map_x = M.oX
		var/map_y = M.oY
		var/countdown = 300
		var/capturing = 1
		var/war = 0
		while(countdown >= 1 && capturing)
			if(M.village_players[attacking_village] < LOSE_CAPTURE)
				capturing = 0
				break
			if(M.village_players[defending_village] >= CAPTURE_THRESHOLD)
				war = 1
				break
			sleep(10)
			--countdown
			if(countdown && !(countdown % 60))
				for(var/mob/P in gameLists["mobiles"])
					if(P.z == M.z)
						P << "<span class='territory_info'>(Alert): [countdown/60] minutes remaning until this area is captured!</span>"
		if(war)
			for(var/faction/F)
				if(F.village == defending_village)
					F.online_members<<"<span class='war_info'>(Alert): Fighting has broken out between your village and [attacking_village]!</span>"
				if(F.village == attacking_village)
					F.online_members<<"<span class='war_info'>(Alert): Fighting has broken out between your village and [defending_village]!</span>"
			spawn() War_Loop(M, attacking_village, defending_village)
		else if(capturing)
			M.can_capture = 1
			M.village_control = attacking_village
			M.alert_level = 0
			M.RefreshAlert()
			Set_Control_Display(map_x, map_y, attacking_village)

			for(var/mob/P in gameLists["mobiles"])
				if(P.z == M.z && P.faction && P.faction:village == attacking_village)
					P.body += 1500*lp_mult
					P << "You gained [1500*lp_mult] Level Points!"

			for(var/faction/F)
				if(F.village == defending_village)
					F.online_members<<"<span class='territory_info'>(Alert): One of your village's controlled areas has been captured by [attacking_village]!</span>"
				if(F.village == attacking_village)
					F.online_members<<"<span class='territory_info'>(Alert): Your village has captured one of [defending_village]'s areas!</span>"
		else
			M.can_capture = 1
			M.village_control = defending_village
			M.alert_level = 0
			M.RefreshAlert()
			Set_Control_Display(map_x, map_y, defending_village)
			for(var/faction/F)
				if(F.village == defending_village)
					F.online_members<<"<span class='territory_info'>(Alert): [attacking_village] has stopped their attempt to capture one of your areas!</span>"
				if(F.village == attacking_village)
					F.online_members<<"<span class='territory_info'>(Alert): Your village has stopped trying to capture one of [defending_village]'s areas!</span>"

	War_Loop(obj/mapinfo/M, attacking_village, defending_village)
		var/map_x = M.oX
		var/map_y = M.oY
		Set_War_Control_Display(map_x, map_y, defending_village, attacking_village)
		M.in_war = 1
		M.attacking_village = attacking_village
		var/countdown = 600
		var/lose_village
		var/win_village
		while(countdown >= 1 && M.in_war)
			sleep(10)
			--countdown
			if(M.village_players[attacking_village] < LOSE_CAPTURE)
				M.in_war = 0
				lose_village = attacking_village
				win_village = defending_village
				break
			if(M.village_players[defending_village] < LOSE_CAPTURE)
				M.in_war = 0
				lose_village = defending_village
				win_village = attacking_village
				break
			if(countdown && !(countdown % 60))
				for(var/mob/P in gameLists["mobiles"])
					if(P.z == M.z)
						P << "<span class='war_info'>(Alert): [countdown/60] minutes remaning in war! [M.attacker_deaths >= M.defender_deaths?"[defending_village]":"[attacking_village]"] is winning!</span>"
		if(M.in_war)
			if(M.attacker_deaths >= M.defender_deaths)
				lose_village = attacking_village
				win_village = defending_village
			else
				lose_village = defending_village
				win_village = attacking_village

			M.village_control = win_village
			M.alert_level = 0
			M.RefreshAlert()
			Set_Control_Display(map_x, map_y, win_village)
			for(var/mob/P in gameLists["mobiles"])
				if(P.z == M.z && P.faction)
					if(P.faction:village == win_village)
						P.body += 7000*lp_mult
						P << "You gained [7000*lp_mult] Level Points!"
						P << "War stats:\n\t[attacking_village]: [M.attacker_deaths] deaths\n\t[defending_village]: [M.defender_deaths] deaths"
					else if(P.faction:village == lose_village)
						P << "War stats:\n\t[attacking_village]: [M.attacker_deaths] deaths\n\t[defending_village]: [M.defender_deaths] deaths"
			for(var/faction/F)
				if(F.village == win_village)
					F.online_members<<"<span class='war_info'>(Alert): [lose_village] has been defeated while trying to capture one of your areas!</span>"
				if(F.village == lose_village)
					F.online_members<<"<span class='war_info'>(Alert): Your village has been defeated while trying to capture one of [win_village]'s areas!</span>"

			spawn(6000)
				M.can_capture = 1
			M.in_war = 0
			M.attacker_deaths = 0
			M.defender_deaths = 0
		else if(lose_village && win_village)
			M.village_control = win_village
			M.alert_level = 0
			M.RefreshAlert()
			Set_Control_Display(map_x, map_y, win_village)
			for(var/mob/P in gameLists["mobiles"])
				if(P.z == M.z && P.faction)
					if(P.faction:village == win_village)
						if(!RP)
							P.body += 3000*lp_mult
							P << "You gained [3000*lp_mult] Level Points!"
						P << "War stats:\n\t[attacking_village]: [M.attacker_deaths] deaths\n\t[defending_village]: [M.defender_deaths] deaths"
					else if(P.faction:village == lose_village)
						P << "War stats:\n\t[attacking_village]: [M.attacker_deaths] deaths\n\t[defending_village]: [M.defender_deaths] deaths"
			for(var/faction/F)
				if(F.village == win_village)
					F.online_members<<"<span class='war_info'>(Alert): [lose_village] has run from the war with your village!</span>"
				if(F.village == lose_village)
					F.online_members<<"<span class='war_info'>(Alert): Your village has run from the war with [win_village]!</span>"
			spawn(6000)
				M.can_capture = 1
			M.in_war = 0
			M.attacker_deaths = 0
			M.defender_deaths = 0

var/const
	//world
	MAP_START_X = 76
	MAP_START_Y = 4
	MAP_START_Z = 1

	//leaf
	MAP_LEAF_START_X = 94
	MAP_LEAF_START_Y = 4
	MAP_LEAF_START_Z = 1
	MAP_LEAF_WIDTH = 300
	MAP_LEAF_HEIGHT = 300
	MAP_LEAF_PIN_X = 82
	MAP_LEAF_PIN_Y = 8
	MAP_LEAF_PIN_PX = 0
	MAP_LEAF_PIN_PY = 0

	//mist
	MAP_MIST_START_X = 112
	MAP_MIST_START_Y = 4
	MAP_MIST_START_Z = 1
	MAP_MIST_WIDTH = 300
	MAP_MIST_HEIGHT = 300
	MAP_MIST_PIN_X = 86
	MAP_MIST_PIN_Y = 8
	MAP_MIST_PIN_PX = 0
	MAP_MIST_PIN_PY = 30

	//sand
	MAP_SAND_START_X = 130
	MAP_SAND_START_Y = 4
	MAP_SAND_START_Z = 1
	MAP_SAND_WIDTH = 300
	MAP_SAND_HEIGHT = 300
	MAP_SAND_PIN_X = 76
	MAP_SAND_PIN_Y = 6
	MAP_SAND_PIN_PX = 0
	MAP_SAND_PIN_PY = 10

	CAPTURE_THRESHOLD = 9
	LOSE_CAPTURE = 2

