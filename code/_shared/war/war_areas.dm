area
	map_area
		var/obj/mapinfo/war_object
		var/id
		proc/Find_Info()
			if(!src.war_object)
				for(var/obj/war_object/wo in warObjects)
					if(wo.id == src.id)
						src.war_object = wo
						//world << "[src] has found map_info [minfo]"
						break


		Entered(mob/human/M)
			Find_Info()
			if(istype(M,/mob/human))
				war_object.PlayerEntered(M)
			..()

		Exited(mob/human/M)
			Find_Info()
			if(istype(M,/mob/human))
				war_object.PlayerLeft(M)
			..()

		/*
		Enter(mob/human/M)
			Find_Info()
			if(ismob(M) && M.client)
				if(!(map_info.CanEnter(M)))
					M << "Can't Enter"
					return 1
			M << "Can Enter"
			..()


		Exit(mob/human/M)
			Find_Info()
			if(ismob(M) && M.client)
				if(!(map_info.CanLeave(M)))
					return 1
			..()

		*/

		map_area_1
			id = 12
		map_area_2
			id = 13
		map_area_3
			id = 14
		map_area_4
			id = 15
		map_area_5
			id = 16
		map_area_6
			id = 17
		map_area_7
			id = 18
		map_area_8
			id = 19
		map_area_9
			id = 20
		map_area_10
			id = 21
		map_area_11
			id = 22
		map_area_12
			id = 23
		map_area_13
			id = 24
		map_area_14
			id = 25


		map_area_15
			id = 26
		map_area_16
			id = 27
		map_area_17
			id = 28
		map_area_18
			id = 29
		map_area_19
			id = 30
		map_area_20
			id = 31


		map_area_21
			id = 32
		map_area_22
			id = 33
		map_area_23
			id = 34
		map_area_24
			id = 35
		map_area_25
			id = 36
		map_area_26
			id = 37
		map_area_27
			id = 38
		map_area_28
			id = 39
		map_area_29
			id = 40
		map_area_30
			id = 41
		map_area_31
			id = 42
		map_area_32
			id = 43
		map_area_33
			id = 44
		map_area_34
			id = 45
		map_area_35
			id = 46
		map_area_36
			id = 47
		map_area_37
			id = 48
		map_area_38
			id = 49
		map_area_39
			id = 50

