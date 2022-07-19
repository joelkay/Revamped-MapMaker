//credits: https://opengameart.org/content/teleporter-circle
mob/var/inportal=0
turf
	Portal_Area
		var/turf/Portal/linked_obj

		Entered(mob/human/O)
			..()
			if(!(istype(O,/mob/human)) || !O.client || O.inportal) return
			O.inportal=1
			//make it animate
			if(!linked_obj.locked)
				var/num=1
				while(O && num<4)
					num++
					linked_obj.locked=1
					linked_obj.icon = 'map/icons/portal/teleporter_active.dmi'
					sleep(4)//check if they are still in
				linked_obj.icon = 'map/icons/portal/teleporter.dmi'
				linked_obj.locked=0


			if(istype(O, /mob/human/player))
				var/mob/human/player/M = O
				if(M.war)
					M << "You may not enter portals during wars!"
					return 0
				if(M.pk && (M.isCombatFlag(20,"offense") || M.isCombatFlag(10,"defense")))
					if(M.warp_warn_time < world.time-20)
						M << "You may not retreat so soon!"
						O.inportal=0
					M.warp_warn_time = world.time
					O.inportal=0
					return 0

				//pass


				var/list/locations = list("Cha","Kawa","Ishi","Konoha","Kiri","Suna","Cancel")
				var/chosen = input(M,"Select a location.",
					"Portal",
					"[linked_obj.portalName]") in locations

				if(chosen!="Cancel")
					//find out where they wana go
					O.inportal=1
					//put them in combat to stop triggering portal on arrival
					var/orig_z = O.z
					var/turf/exitportal = locate_portal(chosen)
					LogMessage("Source=[linked_obj.portalName] Chosen=[chosen] Chosen_Loc=[loc]")
					if(exitportal)
						O.loc = exitportal.loc
						O.Get_Global_Coords()
						if(istype(O,/mob/human/player) && !istype(O,/mob/human/player/npc))
							var/obj/mapinfo/old_map = locate("__mapinfo__[orig_z]")
							var/obj/mapinfo/new_map = locate("__mapinfo__[O.z]")
							if(old_map) old_map.PlayerLeft(O)
							if(new_map) new_map.PlayerEntered(O)
			else
				return ..()

	Portal
		icon='map/icons/portal/teleporter.dmi'
		icon_state="1"
		density=0
		layer=MOB_LAYER-1
		var/portalName=""
		var/locked=0
		var/portallocx=0
		var/portallocy=0
		var/portallocz=0

		New()
			..()
			for(var/turf/Portal_Area/PA in range(64,src))
				PA.linked_obj=src
		Cha
			portalName="Cha"
			portallocx=525
			portallocy=412
			portallocz=MAIN_MAP_Z
		Kawa
			portalName="Kawa"
			portallocx=311
			portallocy=546
			portallocz=MAIN_MAP_Z
		Ishi
			portalName="Ishi"
			portallocx=222
			portallocy=58
			portallocz=MAIN_MAP_Z
		Konoha
			portalName="Konoha"
			portallocx=528
			portallocy=763
			portallocz=MAIN_MAP_Z
		Kiri
			portalName="Kiri"
			portallocx=525
			portallocy=412
			portallocz=MAIN_MAP_Z
		Suna
			portalName="Suna"
			portallocx=224
			portallocy=253
			portallocz=MAIN_MAP_Z



var/list/searchcache_locate_portal[]//lol it works first time.. beautiful

proc
	locate_portal(msg as text)
		set background=1
		if(!searchcache_locate_portal) searchcache_locate_portal = new()
		var/res = searchcache_locate_portal.Find("[msg]")
		if(res)
			return searchcache_locate_portal["[msg]"]

		else
			for(var/turf/Portal/P in world)
				if(P.portalName==msg)
					var/finalret = locate(P.portallocx,P.portallocy,P.portallocz)
					searchcache_locate_portal["[msg]"] = finalret
					return finalret