turf
	Terrain
		Sand
// TODO: Fix these. They ended up totally broken anyway
			var/tmp
				show_enter_track
				show_exit_track
				image
					enter_tracks
					enter_runtracks
					exit_tracks
					exit_runtracks

			New()
				enter_tracks=image('icons/sandtracks.dmi',icon_state="enter",layer=OBJ_LAYER)
				enter_runtracks=image('icons/sandtracksrun.dmi',icon_state="enter",layer=OBJ_LAYER)
				exit_tracks=image('icons/sandtracks.dmi',icon_state="exit",layer=OBJ_LAYER)
				exit_runtracks=image('icons/sandtracksrun.dmi',icon_state="exit",layer=OBJ_LAYER)

			Entered(mob/human/O)
				..()
				if(!(istype(O,/mob/human)) || !O.client) return

				spawn(3)
					if(istype(O,/mob/human) && O.client && !show_enter_track)
						show_enter_track = 1
						if(O.client.run_count<4)
							enter_tracks.dir = O.dir
							src.overlays+=enter_tracks
							spawn(200)
								src.overlays-=enter_tracks
								show_enter_track = 0
						else
							enter_runtracks.dir = O.dir
							src.overlays+=enter_runtracks
							spawn(200)
								src.overlays-=enter_runtracks
								show_enter_track = 0
				return ..()


			Exited(mob/human/O)
				..()
				if(!(istype(O,/mob/human)) || !O.client) return
				spawn(3)
					if(istype(O,/mob/human) && O.client && !show_exit_track)
						show_exit_track = 1
						if(O.client.run_count<4)
							exit_tracks.dir = O.dir
							src.overlays+=exit_tracks
							spawn(200)
								src.overlays-=exit_tracks
								show_exit_track = 0
						else
							exit_runtracks.dir = O.dir
							src.overlays+=exit_runtracks
							spawn(200)
								src.overlays-=exit_runtracks
								show_exit_track = 0
				return ..()

	tutorial
		NextPage
			Click()
				if(usr.client)usr.client.eye=locate("help2")
		PrevPage
			Click()
				if(usr.client)usr.client.eye=locate("help1")
		Done
			Click()
				if(usr.client)
					usr.client.eye=usr.client.mob
			//		usr.client.mob.hidestat=0


area
	var
		safe=0
	mouse_opacity = 0
	//layer = 150

	Entered(O)
		if(istype(O,/mob))
			if(src.pkzone)
				O:pk=1
				O:dojo=0
			else
				O:pk=0
				O:risk=0
				O:oppo = list()
				O:dojo=1
				if(istype(O,/mob/human))
					var/mob/human/h = O
					if(h.gate) h.CloseGates()

		..()

	//this will be removed when I remove area/nopkzone, but I'm leaving it in for now
	nopkzone
		safe=1
		Entered(O)
			if(istype(O,/mob))
				O:pk=0
				O:dojo=1
			..()


	//forest_of_death //disabled because 1.) it's ugly with the new large icons in the fod 2.) maybe there's a better way to recreate it. ~Dipic
		//luminosity = 0

	main_village2
		Konohagakure
			Entered(mob/O)
				if(istype(O) && O.dir == NORTH)
					O.LocationEnter("Konoha")
					O<<"You have entered Konoha"
					spawn() scroll_drop(O,"konoha")
					if(istype(O, /mob/human/player))
						if(O.client && O.faction:village != "Konoha")
							for(var/faction/F)
								if(F.village=="konoha")
									F.online_members<<"<span class='territory_info'>(Alert): Raider Detected!! Your village is now at alert level 1!</span>"

//				..()

		Sunagakure
			Entered(mob/O)
				if(istype(O))
					O.LocationEnter("Suna")
					O<<"You have entered Suna"
					spawn() scroll_drop(O,"suna")
					if(istype(O, /mob/human/player))
						if(O.client && O.faction:village != "Suna")
							for(var/faction/F)
								if(F.village=="suna")
									F.online_members<<"<span class='territory_info'>(Alert): Raider Detected!! Your village is now at alert level 1!</span>"


//				..()

		Mist
			Entered(mob/O)
				if(istype(O))
					O.LocationEnter("Kiri")
					O<<"You have entered Hidden Mist"
					spawn() scroll_drop(O,"kiri")
					if(istype(O, /mob/human/player))
						if(O.client && O.faction:village != "Kiri")
							for(var/faction/F)
								if(F.village=="Kiri")
									F.online_members<<"<span class='territory_info'>(Alert): Raider Detected!! Your village is now at alert level 1!</span>"


//				..()
/*
		proc
			daycycle7()
				/*overlays += 'entardecer.dmi'	// add a 25% dither for a fading effect
				world<<"It's gonna be dark soon"
				sleep(3000)
				overlays -= 'entardecer.dmi'	// remove the dither
				overlays += 'black50.dmi'	// add the 50% dither
				world<<"It's now Night"
				sleep(12000)
				overlays -= 'black50.dmi'	// add the 50% dither
				overlays += 'amanhecer.dmi'
				world<<"It is gets bright"
				sleep(3000)
				overlays -= 'amanhecer.dmi'
				world<<"It's a new day!"
				sleep(12000)*/
				overlays -= 'amanhecer.dmi'	// add a 25% dither for a fading effect
				world<<"It's a new day"
				sleep(500)
				overlays += 'entardecer.dmi'	// remove the dither
				world<<"It's going to be dark soon"
				sleep(300)
				overlays -= 'entardecer.dmi'	// remove the dither
				overlays += 'black50.dmi'	// add the 50% dither
				world<<"It's now Night"
				sleep(500)
				overlays -= 'black50.dmi'	// add the 50% dither
				overlays += 'amanhecer.dmi'
				world<<"It's getting bright"
				sleep(300)
				daycycle7()	// change the 20 to make longer days and night

			SetWeather7(WeatherType)
				if(Weather)	// see if this area already has a weather effect
					if(istype(Weather,WeatherType)) return	// no need to reset it
					overlays -= Weather	// remove the weather display
					del(Weather)	// destroy the weather object
				if(WeatherType)	// if WeatherType is null, it just removes the old settings
					Weather = new WeatherType()	// make a new obj/weather of the right type
					overlays += Weather	/// display it as an overlay for the area
*/
	Kawa
		Entered(mob/O)
			if(istype(O))
				O.LocationEnter("Kawa no Kuni")
				O<<"You have entered Kawa no Kuni"
			..()

	Cha
		Entered(mob/O)
			if(istype(O))
				O.LocationEnter("Cha no Kuni")
				spawn() scroll_drop(O,"missing")
				O<<"You have entered Cha no Kuni"
			..()

	Ishi
		Entered(mob/O)
			if(istype(O))
				O.LocationEnter("Ishi no Kuni")
				O<<"You have entered Ishi no Kuni"
			..()

	inns
		var/propername
		Entered(mob/O)
			if(istype(O))
				O.LocationEnter(src.propername)
				O<<"You are approaching the [src.propername]"
			..()
		dragon
			propername = "Dragon Inn"
		rooster
			propername = "Rooster Inn"
		dog
			propername = "Dog Inn"
		tiger
			propername = "Tiger Inn"
		toad
			propername = "Toad Inn"
		pig
			propername = "Pig Inn"
		snake
			propername = "Snake Inn"
		rabbit
			propername = "Rabbit Inn"

	dojo
		safe=0
		Entered(O)
			if(istype(O,/mob))
				O:pk=1
				O:dojo=1
			..()
