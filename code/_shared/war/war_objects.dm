 //war_new.dm
proc
	get_true_dist(atom/A,atom/B)
		var/xx = abs(A.x - B.x)
		var/yy = abs(A.y - B.y)
		return xx+yy
mob
	Bump(obj/warbarrier/o)
		if(istype(o,/obj/warbarrier))
			var/pass
			if(o.attacking_type == "village" && usr.faction && usr.faction:village != "Missing")
				if(o.attacking_faction == usr.faction:village)
					pass = 1
			else if(o.attacking_type == "faction" && usr.faction && usr.faction:village == "Missing" && usr.faction:name != "Missing")
				if(o.attacking_faction == usr.faction:name)
					pass = 1
			if(o.defending_type == "village" && usr.faction && usr.faction:village != "Missing")
				if(o.defending_faction == usr.faction:village)
					pass = 1
			else if(o.defending_type == "faction" && usr.faction && usr.faction:village == "Missing" && usr.faction:name != "Missing")
				if(o.defending_faction == usr.faction:name)
					pass = 1

			var/curstatus
			if(get_dist(o,o.middle) < get_dist(usr,o.middle))//usr is on the outside
				curstatus = "outside"
			else if(get_dist(o,o.middle) > get_dist(usr,o.middle))//usr is on the inside
				curstatus = "inside"
			else //tie, switching to true distance
				if(get_true_dist(o,o.middle) < get_true_dist(usr,o.middle))//usr is on the outside
					curstatus = "outside"
				else if(get_true_dist(o,o.middle) > get_true_dist(usr,o.middle))//usr is on the outside
					curstatus = "inside"

			var/xmod
			var/ymod
			switch(usr.dir)
				if(EAST)
					xmod = 9
				if(WEST)
					xmod = -9
				if(NORTH)
					ymod = 9
				if(SOUTH)
					ymod = -9
				if(NORTHEAST)
					xmod = 9
					ymod = 9
				if(NORTHWEST)
					xmod = -9
					ymod = 9
				if(SOUTHEAST)
					xmod = 9
					ymod = -9
				if(SOUTHWEST)
					xmod = -9
					ymod = -9
			if(curstatus == "inside")
				if(pass)
					usr << "You cannot run from the war between [o.defending_faction] and [o.attacking_faction]!"
				else
					if(!locate(/obj/warbarrier) in locate(usr.x+xmod,usr.y+ymod,usr.z))
						usr.loc = locate(usr.x+xmod,usr.y+ymod,usr.z)
			else if(curstatus == "outside")
				if(pass)
					if(!locate(/obj/warbarrier) in locate(usr.x+xmod,usr.y+ymod,usr.z))
						usr.loc = locate(usr.x+xmod,usr.y+ymod,usr.z)
						usr << "You have entered the war between [o.defending_faction] and [o.attacking_faction]. Do your best!"
				else
					usr << "This area is too dangerous for you to enter due to the war between [o.defending_faction] and [o.attacking_faction]"
		..()
obj
	warbarrier
		icon = 'icons/warbarrier.dmi'
		density = 1
		layer = 10
		var
			turf/middle
			attacking_type
			attacking_faction
			defending_type
			defending_faction
		Click()
			usr << "This is the barrier surrounding the war between [defending_faction] and [attacking_faction]"
		New(loc,tm,at,af,dt,df)
			..()
			middle = tm
			attacking_type = at
			attacking_faction = af
			defending_type = dt
			defending_faction = df
mob
	verb
		createBorder()//some kind of limit is breaking this. the limit is 5041, I think it's with view()/range()
			if(!(usr.ckey in admins)) return
			var/land_radius = 50
			var/list/turfs = list()
			for(var/turf/t in obounds((land_radius+world.view)*world.icon_size,src))
				turfs += t
			for(var/turf/t in obounds(land_radius*world.icon_size,src))
				turfs -= t
			for(var/turf/t in turfs)
				new/obj/warbarrier(t,usr.loc,"village","Konoha","village","Kiri")
		removeBorder()
			if(!(usr.ckey in admins)) return
			var/land_radius = 50
			for(var/obj/warbarrier/wb in obounds((land_radius+world.view)*world.icon_size,src))
				wb.loc = null


obj
	items/war_beacon
		name = "War Spawn Marker"
		density = 1
		pixel_x = -16
		pixel_y = -22
		icon = 'icons/warstatue.dmi'
		var
			wtype
			wfaction
			obj/rdense
			mob/holder
		New(loc,tm,t,f)
			..()
			wtype = t
			wfaction = f
		Del()
			if(rdense) rdense.loc = null
			..()
		Click()
			if(src in usr)
				src.Drop(usr)
			else
				src.Get(usr)
		verb
			Get()
				set src in oview(1)
				if(!usr.ko)
					if((wtype == "village" && usr.faction:village == wfaction) || (wtype == "faction" && usr.faction == wfaction))
						if(rdense) rdense.loc = null
						Move(usr)
						src.holder = usr
			Drop()
				src.loc=locate(usr.x,usr.y,usr.z)
				rdense = new/obj/dense(src.loc)
				rdense.x++
				src.holder = null


	war_object
		icon = 'icons/maptag_marker.dmi'
		// Make maptags completely invisible.
		// Since their sole purpose is to mark a location,
		// players don't need to ever interact with them.
		invisibility = 101
		density = 0
		layer = 6
		var
			MIN_CAP=2
			tmp/id
			tmp/land_radius = 49
			tmp/status
			defending_type
			defending_faction = "Neutral"
			tmp/defender_deaths
			tmp/obj/items/war_beacon/defender_beacon
			tmp/list/defenders = list()
			tmp/attacking_type
			tmp/attacking_faction
			tmp/obj/items/war_beacon/attacker_beacon
			tmp/attacker_deaths
			tmp/list/attackers = list()
			tmp/village_players[0]
			tmp/list/mob_list=list()
			tmp/image/wo_map_pin
			tmp/prevState
			tmp/wo_map_pin_icon = 'icons/map_overlays/war.dmi'
		New()
			..()
			src.WO_Load()
			spawn() Get_Global_Coords()
			warObjects.Add(src)

		proc
			PlayerEntered(mob/human/M)

				if(M.client && !istype(M, /mob/human/player/npc) && !istype(M, /mob/human/player/npc/bunshin) && !istype(M, /mob/human/player/npc/kage_bunshin) && M.faction)
					++village_players[M.faction:name]
					if(!mob_list.Find(M)) mob_list.Add(M)
					//online_admins << "[id] -> [defending_faction]: PlayerEntered([M]) [M.faction] [M.faction:village] [village_players[M.faction:village]]"

					//RefreshAlert()
					//if(can_capture) Check_War(src, M.faction:village)
					beginCapture(M)

			PlayerLeft(mob/human/M)

				if(M.client && !istype(M, /mob/human/player/npc) && !istype(M, /mob/human/player/npc/bunshin) && !istype(M, /mob/human/player/npc/kage_bunshin) && M.faction)
					village_players[M.faction:name] = max(0, village_players[M.faction:name]-1)
					if(mob_list.Find(M)) mob_list.Remove(M)
					//online_admins << "[id] -> [defending_faction]: PlayerLeft([M]) [M.faction] [M.faction:village] [village_players[M.faction:village]]"

					//RefreshAlert()
					//if(in_war)
					//	if(M.faction:village == village_control)
					//		++defender_deaths
					//	else if(M.faction:village == attacking_village)
					//		++attacker_deaths

			WO_Save()
				if(src.id)
					var/savefile/F = new("war_object_saves/[src.id].sav")
					F["faction_owner"] << src.id
					F["defending_type"] << src.defending_type
					F["defending_faction"] << src.defending_faction
					Write(F)

			WO_Load()
				if(src.id)
					if(fexists("war_object_saves/[src.id].sav"))
						var/savefile/F = new("war_object_saves/[src.id].sav")
						Read(F)
						src.id << F["id"]
						src.defending_type << F["defending_type"]
						src.defending_faction << F["defending_faction"]


			getInfo()
				if(defending_faction) usr << "[defending_faction] is currently in control of this land"


			beginCapture(mob/M)
				//world<<"status=[status],defending_type=[defending_type],defending_faction=[defending_faction],mob_village=[M.faction:village],mob_faction=[M.faction:name]"
				//pre-checks
				if(status) return 0

				else if(defending_type == "village" && M.faction:village == defending_faction)
					//online_admins << " [M.faction:village] already controls this land"
					return 0
				else if(defending_type == "faction" && M.faction:name == defending_faction)
					//online_admins << " [M.faction:name] already controls this land"
					return 0

				set_attacking_faction(M)
				//jean_info("[M.faction:name] => [village_players[M.faction:name]] countAttackers()=>[countAttackers(1)]")

				if(countAttackers(49) >= MIN_CAP)
					//start capturing land
					status = "being captured"
					world << "<font size=4 color=#CCCCCC>[attacking_faction] has begun capturing!"


					var/capture_timer = 0
					var/capture_timelimit = 18
					var/warstarted
					while((countAttackers(49) >= MIN_CAP) && (capture_timer < capture_timelimit) && !warstarted)
						if(countDefenders(49) >= MIN_CAP)
							warstarted = 1
						sleep(100)
						capture_timer++
					if(warstarted)
						world << "<font size=4 color=#CCCCCC>War has broken out between [defending_faction] and [attacking_faction]!"
						status = "war"
						countDefenders(land_radius)
						countAttackers(land_radius)
						createBorder()
						createBeacons()
						var/war_timelimit = 600
						var/war_timer = 0
						while((status == "war") && (war_timer < war_timelimit) && (countDefenders(land_radius) >= 1) && (countAttackers(land_radius) >= 1))
							//debug output
							/*
							world << "DEBUG War Count: Defenders: [countDefenders(land_radius)] vs Attackers: [countAttackers(land_radius)]"
							for(var/mob/m in defenders)
								world.log << "DEBUG Defender: [m.realname]"
							for(var/mob/m in attackers)
								world.log << "DEBUG Attacker: [m.realname]"
							*/
							//end debug output

							//announcements, announcements, ANNOUNCEments
							if(war_timer && ((war_timer / 60) == round(war_timer / 60))) //this should pass once for every minute of war
								var/timeleft = war_timelimit/60 - war_timer/60
								var/s = ""
								if(timeleft > 1) s = "s"
								if(defender_deaths > attacker_deaths)
									warParticipants() << "<font size=4 color=#CCCCCC>[attacking_faction] is winning the war! [timeleft] minute[s] remaining"
								else
									warParticipants() << "<font size=4 color=#CCCCCC>[defending_faction] is winning the war! [timeleft] minute[s] remaining"

							if(!attacker_beacon) createAttackerBeacon()
							if(!defender_beacon) createDefenderBeacon()

							sleep(100) //sleep for 10 seconds
							war_timer += 10 //+10 seconds to the timer every loop

						killDead()
						removeBeacons()
						removeBorder()
						status = null
						if(defender_deaths > attacker_deaths)
							world << "[attacking_faction] has won the war against [defending_faction]! Deaths: [attacking_faction]: [attacker_deaths] - [defending_faction]: [defender_deaths]"
							countDefenders(49)
							countAttackers(49,300000)
							switch(attacking_faction)
								if("Konoha","Suna","Kiri")
									icon_state = attacking_faction
									for(var/mob/A in mob_list)
										if(attacking_faction == A.faction:village)//who the f is usr in this context????
											A.repgain(10,"Winning a war.")
								else
									icon_state = "Missing"

							defending_type = attacking_type
							defending_faction = attacking_faction
						else
							world << "[defending_faction] has won the war against [attacking_faction]! Deaths: [defending_faction]: [defender_deaths] - [attacking_faction]: [attacker_deaths]"
							countDefenders(49,300000)
							countAttackers(49)
							for(var/mob/A in mob_list)
								if(defending_faction == A.faction:village)
									A.repgain(10,"Winning a war.")
					else if(capture_timer == capture_timelimit) //capture complete!
						world << "[attacking_faction] has successfully captured land!"
						switch(attacking_faction)
							if("Konoha","Suna","Kiri")
								icon_state = attacking_faction
								for(var/mob/A in mob_list)
									if(attacking_faction == A.faction:village)
										A.repgain(2,"Captured Land.")
							else
								icon_state = "Missing"

						defending_type = attacking_type
						defending_faction = attacking_faction
						countAttackers(49,150000)
					else
						world << "[attacking_faction]'s attempt to capture the land has been canceled"
					status = null
					reset_defending_faction()
					reset_attacking_faction()
				else
					//requirements not met, do not start capturing land
					//usr << "You do not have enough allies to begin capturing the [src.name]"
					reset_attacking_faction()
				WO_Save()

			killDead()
				for(var/mob/m in warParticipants())
					if(m.ko && m.curwound > m.maxwound)
						m.Respawn()
			set_attacking_faction(mob/attacker)
				if(attacker.faction && attacker.faction:village != "Missing") //nonmissing village
					attacking_type = "village"
					attacking_faction = attacker.faction:village
					return 1
				else if(attacker.faction && attacker.faction:village == "Missing" && attacker.faction:name != "Missing") //missing faction
					attacking_type = "faction"
					attacking_faction = attacker.faction:name
					return 1
				return 0
			reset_defending_faction()
				for(var/mob/m in defenders)
					world << m
					m.warring = null
				defender_deaths = 0
				defenders = list()
			reset_attacking_faction()
				for(var/mob/m in attackers)
					world << m
					m.warring = null
				attacking_type = null
				attacking_faction = null
				attacker_deaths = 0
				attackers = list()

			countAttackers(radius,reward) //aka capturers
				var/count = 0

				//jean_info("Checking [src] => ([mob_list.len] mobs)")
				//for(var/mob/M in obounds(radius*world.icon_size,src))
				for(var/mob/M in mob_list)
					//jean_info("Found [M]")

					if(M && M.client && ((attacking_type == "village" && M.faction:village == attacking_faction) || (attacking_type == "faction" && M.faction:name == attacking_faction)))
						if(status == "war")
							if(!attackers.len || (attackers.len && !attackers.Find(M))) attackers.Add(M)
							if(!M.warring) M.warring = src
						else
							if(attackers && attackers.len && attackers.Find(M)) attackers.Remove(M)
							M.warring = null
						if(reward)
							M.body += reward
							var/randommoney=pick(500,800,1000,1200,1500)
							M.money += randommoney
							M << "You gained [reward] experience and [randommoney] ryo for capturing this land"
						count++
				return count

			countDefenders(radius,reward) //aka current owners of the land
				var/count = 0
				//for(var/mob/M in obounds(radius*world.icon_size,src))
				for(var/mob/M in mob_list)
					if(M.client && ((defending_type == "village" && M.faction:village == defending_faction) || (defending_type == "faction" && M.faction:name == defending_faction)))
						if(status == "war")
							if(!defenders.len || (defenders.len && !defenders.Find(M))) defenders.Add(M)
							if(!M.warring) M.warring = src
						else
							if(defenders && defenders.len && defenders.Find(M)) defenders.Remove(M)
							M.warring = null
						if(reward)
							M.body += reward
							var/randommoney=pick(500,800,1000,1200,1500)
							M.money += randommoney
							M << "You gained [reward] experience and [randommoney] ryo for capturing this land"
						count++
				return count

			warParticipants()
				var/list/p = list()
				if(attackers && attackers.len)
					for(var/mob/i in attackers)
						p.Add(i)
				if(defenders && defenders.len)
					for(var/mob/i in defenders)
						p.Add(i)
				return p

			createBorder()
				var/list/turfs = list()
				for(var/turf/t in obounds((land_radius+world.view)*world.icon_size,src))
					turfs += t
				for(var/turf/t in obounds(land_radius*world.icon_size,src))
					turfs -= t
				for(var/turf/t in turfs)
					new/obj/warbarrier(t,loc,attacking_type,attacking_faction,defending_type,defending_faction)

			removeBorder()
				for(var/obj/warbarrier/wb in obounds((land_radius+world.view)*world.icon_size,src))
					wb.loc = null

			createBeacons()
				createAttackerBeacon()
				createDefenderBeacon()
			createAttackerBeacon()
				var/mob/ma = pick(attackers)
				ma << "You have been chosen to carry the spawn point. Your allies will spawn on the spawn point. Carry it with you or place it strategically."
				attacker_beacon = new/obj/items/war_beacon(src,loc,attacking_type,attacking_faction)
				attacker_beacon.icon_state = "Attackers"
				ma.contents.Add(attacker_beacon)
			createDefenderBeacon()
				var/mob/md = pick(defenders)
				md << "You have been chosen to carry the spawn point. Your allies will spawn on the spawn point. Carry it with you or place it strategically."
				defender_beacon = new/obj/items/war_beacon(src,loc,defending_type,defending_faction)
				defender_beacon.icon_state = "Defenders"
				md.contents.Add(defender_beacon)

			removeBeacons()
				attacker_beacon.loc = null
				//attacker_beacon = null
				defender_beacon.loc = null
				//defender_beacon = null


		cap1
			id = 12
			name = "cap1"
		//	icon = ''
			icon_state = "Neutral"
		cap2
			id = 13
			name = "cap2"
		//	icon = 'icons/warflag.dmi'
			icon_state = "Neutral"
		cap3
			id = 14
			name = "cap3"
		//	icon = ''
			icon_state = "Neutral"
		cap4
			id = 15
			name = "cap4"
		//	icon = ''
			icon_state = "Neutral"
		cap5
			id = 16
			name = "cap5"
			//icon = ''
			icon_state = "Neutral"
		cap6
			id = 17
			name = "cap6"
		//	icon = ''
			icon_state = "Neutral"
		cap7
			id = 18
			name = "cap7"
		//	icon = ''
			icon_state = "Neutral"
		cap8
			id = 19
			name = "cap8"
		//	icon = 'icons/warflag.dmi'
			icon_state = "Neutral"
		cap9
			id = 20
			name = "cap9"
		//	icon = ''
			icon_state = "Neutral"
		cap10
			id = 21
			name = "cap10"
		//	icon = ''
			icon_state = "Neutral"
		cap11
			id = 22
			name = "cap11"
			//icon = ''
			icon_state = "Neutral"
		cap12
			id = 23
			name = "cap12"
		//	icon = ''
			icon_state = "Neutral"
		cap13
			id = 24
			name = "cap13"
		//	icon = ''
			icon_state = "Neutral"
		cap14
			id = 25
			name = "cap14"
		//	icon = 'icons/warflag.dmi'
			icon_state = "Neutral"

		cap15
			id = 26
			name = "cap15"
			icon_state = "Neutral"
		cap16
			id = 27
			name = "cap16"
			icon_state = "Neutral"
		cap17
			id = 28
			name = "cap17"
			icon_state = "Neutral"
		cap18
			id = 29
			name = "cap18"
			icon_state = "Neutral"
		cap19
			id = 30
			name = "cap19"
			icon_state = "Neutral"
		cap20
			id = 31
			name = "cap20"
			icon_state = "Neutral"

		cap21
			id = 32
			name = "cap21"
		//	icon = ''
			icon_state = "Neutral"
		cap22
			id = 33
			name = "cap22"
		//	icon = ''
			icon_state = "Neutral"
		cap23
			id = 34
			name = "cap23"
			//icon = ''
			icon_state = "Neutral"
		cap24
			id = 35
			name = "cap24"
		//	icon = ''
			icon_state = "Neutral"
		cap25
			id = 36
			name = "cap25"
		//	icon = 'icons/warflag.dmi'
			icon_state = "Neutral"
		cap26
			id = 37
			name = "cap26"
		//	icon = ''
			icon_state = "Neutral"
		cap27
			id = 38
			name = "cap27"
		//	icon = ''
			icon_state = "Neutral"
		cap28
			id = 39
			name = "cap28"
			//icon = ''
			icon_state = "Neutral"
		cap29
			id = 40
			name = "cap29"
		//	icon = ''
			icon_state = "Neutral"
		cap30
			id = 41
			name = "cap30"
		//	icon = ''
			icon_state = "Neutral"
		cap31
			id = 42
			name = "cap31"
		//	icon = ''
			icon_state = "Neutral"
		cap32
			id = 43
			name = "cap32"
		//	icon = ''
			icon_state = "Neutral"
		cap33
			id = 44
			name = "cap33"
		//	icon = ''
			icon_state = "Neutral"
		cap34
			id = 45
			name = "cap34"
		//	icon = ''
			icon_state = "Neutral"
		cap35
			id = 46
			name = "cap35"
		//	icon = ''
			icon_state = "Neutral"
		cap36
			id = 47
			name = "cap36"
		//	icon = ''
			icon_state = "Neutral"
		cap37
			id = 48
			name = "cap37"
		//	icon = ''
			icon_state = "Neutral"
		cap38
			id = 49
			name = "cap38"
		//	icon = ''
			icon_state = "Neutral"
		cap39
			id = 50
			name = "cap39"
		//	icon = ''
			icon_state = "Neutral"