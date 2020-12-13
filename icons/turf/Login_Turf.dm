obj
	SplashScreen
		icon = 'splashScreen.dmi'
		icon_state = "final"
		New(client/c)
			screen_loc = "splashMap:1,1:8"
			c.screen+=src
	SplashScreenAnimation
		icon = 'splashScreen.dmi'
		icon_state = "animation"
		New(client/c)
			screen_loc = "splashMap:1,1:16"
			c.screen+=src
	NewTurf1
		icon = 'blank.dmi'
		icon_state ="night"
		layer = 1001
		New(client/c)
			screen_loc = "splashMap:10:10,6:30 to 14:22,6:30"
			c.screen+=src
		Click()
			var/player/P = usr
			P.creator = new(P)
			spawn(1)
				winset(usr, null, {"
					window.child.left = "default";
					window.size = "801x657";
					window.macro = "macro";
					"})
	LoadTurf1
		icon = 'blank.dmi'
		icon_state ="night"
		layer = 1001
		New(client/c)
			screen_loc = "splashMap:10:10,5:30 to 14:22,5:30"
			c.screen+=src
		Click()
			usr << "Nothing for continue yet."
			winset(usr, null, {"
				window.child.left = "default";
				window.size = "801x657";
				window.macro = "macro";
				"})
	DeleteTurf1
		icon = 'blank.dmi'
		icon_state ="night"
		layer = 1001
		New(client/c)
			screen_loc = "splashMap:10:10,4:30 to 14:22,4:30"
			c.screen+=src
		Click()
			usr << "Nothing for delete yet."
			winset(usr, "default", "is-visible=true")
			winset(usr, "default", "is-default=true")
			//winset(usr, "splashWindow", "is-visible=false")
			//winset(usr, "splashWindow", "is-default=false")
turf
	Screens
		Splash
			icon='Splash.dmi'
			layer = 999
		NarutoUniverse
			icon = 'narutoX.dmi'
			layer = 1000
		KonohaScreen
			icon = 'KonohaCreator.dmi'
		KirigakureScreen
			icon = 'KiriCreator.dmi'
		SunaScreen
			icon = 'SunaCreator.dmi'
		NewLoad
			icon = 'title2.dmi'
			layer = 1000
		NewTurf
			icon = 'blank.dmi'
			layer = 1001
			Click()
				var/player/P = usr
				P.creator = new(P)
		LoadTurf
			icon = 'blank.dmi'
			layer = 1001
			Click()
				usr.system.Load(usr)
			//	usr << "Nothing for continue yet."
		DeleteTurf
			icon = 'blank.dmi'
			layer = 1001
			Click()
				usr << "Nothing for delete yet."
		ChangeStateRight
			icon = 'blank.dmi'
			layer= 100
			pixel_y = -12
			Click()
				var/player/P = usr
				P.dir = turn(P.dir, 90)
		ChangeStateLeft
			icon = 'blank.dmi'
			layer = 100
			pixel_y = -12
			Click()
				var/player/P = usr
				P.dir = turn(P.dir, -90)
		ChangeVillageSuna
			icon = 'blank.dmi'
			layer = 9999
			Click()
				var/player/P = usr
				P.creator.changeVillage("Sunagakure")
		ChangeVillageKiri
			icon = 'blank.dmi'
			layer = 9999
			Click()
				var/player/P = usr
				P.creator.changeVillage("Kirigakure")
		ChangeVillageKonoha
			icon = 'blank.dmi'
			layer = 9999
			Click()
				var/player/P = usr
				//P.loc = locate(
				P.creator.changeVillage("Konoha")
		nextBase
			icon = 'blank.dmi'
			layer = 9999
			pixel_x = 16
			Click()
				var/player/P = usr
				P.creator.nextBase()
		prevBase
			icon = 'blank.dmi'
			pixel_x = -16
			layer = 9999
			Click()
				var/player/P = usr
				P.creator.prevBase()
		genderMale
			icon = 'blank.dmi'
			layer = 9999
			pixel_x = 5
			pixel_y = 16
			Click()
				var/player/P = usr
				P.creator.changeGenderMale()
		genderFemale
			icon = 'blank.dmi'
			layer = 9999
			pixel_x = -10
			pixel_y = 16
			Click()
				var/player/P = usr
				P.creator.changeGenderFemale()
		FinishCreation
			icon = 'blank.dmi'
			layer = 100
			Click()
				var/player/P = usr
				P.creator.finish()
		changeFaceNext
			icon = 'blank.dmi'
			layer = 100
			pixel_x = 16
			Click()
				var/player/P = usr
				P.creator.changeFaceNext()
		changeFacePrev
			icon = 'blank.dmi'
			layer = 100
			pixel_x = -16
			Click()
				var/player/P = usr
				P.creator.changeFacePrev()
		nextHair
			icon = 'blank.dmi'
			layer = 100
			pixel_x = 16
			Click()
				var/player/P = usr
				P.creator.nextHair()
		prevHair
			icon = 'blank.dmi'
			layer = 100
			pixel_x = -16
			Click()
				var/player/P = usr
				P.creator.prevHair()