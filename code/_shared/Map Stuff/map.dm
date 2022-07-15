turf
	background
		Title
			icon = 'pngs/goatitle.png'
			mouse_opacity = 0
		Select
			icon = 'pngs/goatitle2.png'
			mouse_opacity = 0
		Creation
			icon = 'pngs/charactercreation.png'
			mouse_opacity = 0
		Creation2
			icon = 'CreationScreen/creation.png'

		Skilltreeselection
			icon = 'pngs/skillmenus.png'
			mouse_opacity = 0
		Merchant
			icon = 'pngs/Menu.png'
		Tree_Clan
			icon = 'pngs/Skill-Menu-Clan.png'
			mouse_opacity = 0
		Tree_Non_Clan
			icon = 'pngs/Skill-Menu-Non.png'
			mouse_opacity = 0
		Tree_Passive
			icon = 'pngs/Skill-Menu-Passive.png'
			mouse_opacity = 0
		Slot_Machine
			icon = 'pngs/SlotMachine.png'
			mouse_opacity = 0

	tutorial
		tutorial1
			icon = 'pngs/tutorial1.png'
		tutorial2
			icon = 'pngs/tutorial2.png'
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
				//	usr.client.mob.hidestat=0
	towerdoor


obj
	mapcontrol
		World
			icon='icons/gui2.dmi'
			icon_state="map"

	skilltree
		Back
			mouse_opacity = 2
		Clan_C
			mouse_opacity = 2
		Nonclan_C
			mouse_opacity = 2
		Nonclan2_C
			mouse_opacity = 2
		Passive_C
			mouse_opacity = 2
		Skillpoints
			mouse_opacity = 2
			icon = 'pngs/skillpoints.png'

	login
		Enter
			mouse_opacity = 2
		New
			mouse_opacity = 2
		Load
			mouse_opacity = 2
		Delete
			mouse_opacity = 2
		Quit
			mouse_opacity = 2
		BuildDesigner
			mouse_opacity = 2

	slotmachine
		Start_Button
			mouse_opacity = 2
			icon = 'icons/slotbutton.dmi'
		Slots
			mouse_opacity= 2
			icon = 'icons/slots.dmi'

	character_creation
		clan_selection
			Konoha
				mouse_opacity = 2
				icon = 'CreationScreen/leaf.png'
			Suna
				mouse_opacity = 2
				icon = 'CreationScreen/sand.png'
			Mist
				mouse_opacity = 2
				icon = 'CreationScreen/mist.png'
			Nonclan
				mouse_opacity = 2
				icon = 'CreationScreen/non-clan.png'
			Clan
				mouse_opacity = 2
				icon = 'CreationScreen/clan.png'
			Info
				mouse_opacity = 2
				icon = 'CreationScreen/info.png'
			Blank_Slot
				icon = 'CreationScreen/blank.png'
				Slot1
				Slot2
				Slot3
				Slot4
				Slot5
				Slot6

		FinishCharCreate
			mouse_opacity = 2

		Done
			mouse_opacity = 2

		character_appearance
			hair
				mouse_opacity = 2
				hair1
					layer = MOB_LAYER
					icon = 'icons/hair_legacy/hairs.dmi'
					icon_state = "hair1"
				hair2
					layer = MOB_LAYER
					icon = 'icons/hair_legacy/hairs.dmi'
					icon_state = "hair2"
				hair3
					layer = MOB_LAYER
					icon = 'icons/hair_legacy/hairs.dmi'
					icon_state = "hair3"
				hair4
					layer = MOB_LAYER
					icon = 'icons/hair_legacy/hairs.dmi'
					icon_state = "hair4"
				hair5
					layer = MOB_LAYER
					icon = 'icons/hair_legacy/hairs.dmi'
					icon_state = "hair5"
				hair6
					layer = MOB_LAYER
					icon = 'icons/hair_legacy/hairs.dmi'
					icon_state = "hair6"
				hair7
					layer = MOB_LAYER
					icon = 'icons/hair_legacy/hairs.dmi'
					icon_state = "hair7"
				hair8
					layer = MOB_LAYER
					icon = 'icons/hair_legacy/hairs.dmi'
					icon_state = "hair8"
				hair9
					layer = MOB_LAYER
					icon = 'icons/hair_legacy/hairs.dmi'
					icon_state = "hair9"
				hair10
					layer = MOB_LAYER
					icon = 'icons/hair_legacy/hairs.dmi'
					icon_state = "hair10"
				hair11
					layer = MOB_LAYER
					icon = 'icons/hair_legacy/hairs.dmi'
					icon_state = "hair11"
				hair12
					layer = MOB_LAYER
					icon = 'icons/hair_legacy/hairs.dmi'
					icon_state = "hair12"
				hair13
					layer = MOB_LAYER
					icon = 'icons/hair_legacy/hairs.dmi'
					icon_state = "hair13"
				hair14
					layer = MOB_LAYER
					icon='icons/hair_legacy/hairs.dmi'
					icon_state="hair14"
				hair15
					layer = MOB_LAYER
					icon='icons/hair_legacy/hairs.dmi'
					icon_state="hair15"
				hair16
					layer = MOB_LAYER
					icon='icons/hair_legacy/hairs.dmi'
					icon_state="hair16"
				hair17
					layer = MOB_LAYER
					icon='icons/hair_legacy/hairs.dmi'
					icon_state="hair17"
				hair18
					layer = MOB_LAYER
					icon = 'icons/hair_legacy/hairs.dmi'
					icon_state = "hair18"
				hair19
					layer = MOB_LAYER
					icon = 'icons/hair_legacy/hairs.dmi'
					icon_state = "hair19"
				hair20
					layer = MOB_LAYER
					icon = 'icons/hair_legacy/hairs.dmi'
					icon_state = "hair20"
				hair21
					layer = MOB_LAYER
					icon = 'icons/hair_legacy/hairs.dmi'
					icon_state = "hair21"
				hair22
					layer = MOB_LAYER
					icon = 'icons/hair_legacy/hairs.dmi'
					icon_state = "hair22"
				hair23
					layer = MOB_LAYER
					icon = 'icons/hair_legacy/hairs.dmi'
					icon_state = "hair23"
				hair24
					layer = MOB_LAYER
					icon = 'icons/hair_legacy/hairs.dmi'
					icon_state = "hair24"
				hair25
					layer = MOB_LAYER
					icon = 'icons/hair_legacy/hairs.dmi'
					icon_state = "hair25"
				hair26
					layer = MOB_LAYER
					icon = 'icons/hair_legacy/hairs.dmi'
					icon_state = "hair26"
				hair0
					layer = MOB_LAYER
					icon = 'icons/charcreate.dmi'
					icon_state = "none"

			icon
				layer = MOB_LAYER
				mouse_opacity = 2
				base3
					icon = 'icons/base_m3.dmi'
				base2
					icon = 'icons/base_m2.dmi'
				base1
					icon = 'icons/base_m1.dmi'

			hair_color
				layer = MOB_LAYER
				mouse_opacity = 2
				icon = 'icons/hair_legacy/haircolors.dmi'
				haircolor1
					icon_state = "0,1"
				haircolor2
					icon_state = "1,1"
				haircolor3
					icon_state = "2,1"
				haircolor4
					icon_state = "3,1"
				haircolor5
					icon_state = "4,1"
				haircolor6
					icon_state = "5,1"
				haircolor7
					icon_state = "6,1"
				haircolor8
					icon_state = "7,1"
				haircolor9
					icon_state = "8,1"
				haircolor10
					icon_state = "9,1"
				haircolor11
					icon_state = "0,0"
				haircolor12
					icon_state = "1,0"
				haircolor13
					icon_state = "2,0"
				haircolor14
					icon_state = "3,0"
				haircolor15
					icon_state = "4,0"
				haircolor16
					icon_state = "5,0"
				haircolor17
					icon_state = "6,0"
				haircolor18
					icon_state = "7,0"
				haircolor19
					icon_state = "8,0"
				haircolor20
					icon_state = "9,0"
				haircolor21
					icon_state = "10,0"
				rgb
					icon = 'icons/charcreate.dmi'
					icon_state = "rgb"

			preview_dir
				icon = 'icons/charcreate.dmi'
				right
					icon_state = "right"
				left
					icon_state = "left"
				up
					icon_state = "up"
				down
					icon_state = "down"

			eye_color
				pixel_y = 16
				icon = 'icons/eye colors.dmi'
				eyecolor1
					icon_state = "0,0"
				eyecolor2
					icon_state = "1,0"
				eyecolor3
					icon_state = "2,0"
				eyecolor4
					icon_state = "3,0"
				eyecolor5
					icon_state = "4,0"
				eyecolor6
					icon_state = "5,0"
				eyecolor7
					icon_state = "6,0"
				rgb
					icon = 'icons/charcreate.dmi'
					icon_state = "rgb"

turf/Housewall
	White
		icon = 'icons/eye colors.dmi'
		density = 0
		layer = MOB_LAYER + 1
		Main
			icon_state = ""
		Right
			icon_state = "6,0"
		Left
			icon_state = "6,0"
		Door
			icon_state = "6,0"
	Taza_Wall
		icon = 'icons/Gai_Taza_Wall.dmi'
		density = 1
		layer = MOB_LAYER + 1
		Main_wall
			icon_state = ""
		Extended_wall
			icon_state = "Post"

	Yellow
		icon = 'icons/houseturfyellow.dmi'
		density = 0
		layer = MOB_LAYER + 1
		Main
			icon_state = ""
		Right
			icon_state = "r"
		Left
			icon_state = "l"
		Door
			icon_state = "door"
	DYellow
		icon = 'icons/houseturfyellow.dmi'
		density = 1
		layer = MOB_LAYER + 1
		Main
			icon_state = ""
		Right
			icon_state = "r"
		Left
			icon_state = "l"
	Dark
		icon = 'icons/housedark.dmi'
		density = 0
		layer = MOB_LAYER + 1
		Main
			icon_state = ""
		Rightt
			icon_state = "rt"
		Leftt
			icon_state = "lt"
		Right
			icon_state = "r"
		Left
			icon_state = "l"
		Door
			icon_state = "door"
		LightBrown
		Roof
			icon = 'icons/roofinglightbrown.dmi'
			roof
				icon_state = "roof"
			edge

				icon_state = "edge"
			edgeleft

				icon_state = "edge_left"
			edgeright

				icon_state = "edge_right"
			edgetop
				icon_state = "edge_top"
			roofpeak1

				icon_state = "roof_peak1"
			roofpeak2

				icon_state = "roof_peak2"
	DDark
		icon = 'icons/housedark.dmi'
		density = 1
		layer = MOB_LAYER + 1
		Main
			icon_state = ""
		Right
			icon_state = "r"
		Left
			icon_state = "l"
		Door
			icon_state = "door"
			density = 0
	Red
		icon = 'icons/houseturfred.dmi'
		density = 0
		layer = MOB_LAYER + 1
		Main
			icon_state = ""
		Right
			icon_state = "r"
		Left
			icon_state = "l"
		Door
			icon_state = "door"
	DRed
		icon = 'icons/houseturfred.dmi'
		density = 1
		layer = MOB_LAYER + 1
		Main
			icon_state = ""
		Right
			icon_state = "r"
		Left
			icon_state = "l"
	Blue
		icon = 'icons/houseturfblue.dmi'
		density = 0
		layer = MOB_LAYER + 1
		Main
			icon_state = ""
		Right
			icon_state = "r"
		Left
			icon_state = "l"
		Door
			icon_state = "door"
	DBlue
		icon = 'icons/houseturfblue.dmi'
		density = 1
		layer = MOB_LAYER + 1
		Main
			icon_state = ""
		Right
			icon_state = "r"
		Left
			icon_state = "l"

turf/hokagebuilding
	layer = MOB_LAYER + 1
	icon = 'pngs/hokage.png'
	density = 0

obj/skilltree
	progress
		icon = 'icons/gui.dmi'
		icon_state = "progress"
		layer = 9999999999999
	level25
		icon = 'icons/gui2.dmi'
		icon_state = "level25"
	line1
		icon = 'icons/gui.dmi'
		icon_state = "line1"
	line2
		icon = 'icons/gui.dmi'
		icon_state = "line2"
	line3
		icon = 'icons/gui.dmi'
		icon_state = "line3"
	line4
		icon = 'icons/gui.dmi'
		icon_state = "line4"
	line5
		icon = 'icons/gui.dmi'
		icon_state = "line5"
	line6
		icon = 'icons/gui.dmi'
		icon_state = "line6"
	line7
		icon = 'icons/gui.dmi'
		icon_state = "line7"
	line8
		icon = 'icons/gui.dmi'
		icon_state = "line8"
	line9
		icon = 'icons/gui.dmi'
		icon_state = "line9"
	line10
		icon = 'icons/gui.dmi'
		icon_state = "line10"
	line11
		icon = 'icons/gui.dmi'
		icon_state = "line11"
	line12
		icon = 'icons/gui.dmi'
		icon_state = "line12"
	line13
		icon = 'icons/gui.dmi'
		icon_state = "line13"
	line14
		icon = 'icons/gui.dmi'
		icon_state = "line14"
	line15
		icon = 'icons/gui.dmi'
		icon_state = "line15"
	line16
		icon = 'icons/gui.dmi'
		icon_state = "line16"
	line17
		icon = 'icons/gui.dmi'
		icon_state = "line17"
	line18
		icon = 'icons/gui.dmi'
		icon_state = "line18"
	line19
		icon = 'icons/gui.dmi'
		icon_state = "line19"
	line20
		icon = 'icons/gui.dmi'
		icon_state = "line20"

obj
	dojo_sign
		density = 1
		layer = MOB_LAYER + 1.15
		icon =  'icons/dojo_sign.dmi'




	fence
		density = 1
		layer = MOB_LAYER + 1
		icon = 'icons/fence.dmi'

		left
			density = 0
			icon_state = "left"

		right
			density = 0
			icon_state = "right"

		top
			icon = 'icons/scenic.dmi'
			left
				icon_state = "fencel"
				nondense
					density = 0
			right
				icon_state = "fencer"
				nondense
					density = 0
		rail
			icon= 'icons/mountain.dmi'
			density = 1
			layer = MOB_LAYER + 1
			icon_state = "Railing"

	leaf_wall
		density = 0
		icon = 'pngs/A-Konoha Walls.PNG'
		layer = MOB_LAYER + 1
		W1
			density = 0
			icon = 'pngs/W1.png'
		W2

			icon = 'pngs/W2.png'
		W3

			icon = 'pngs/W3.png'
		W4

			icon = 'pngs/W4.png'
		W5

			icon = 'pngs/W5.png'
		W6

			icon = 'pngs/W6.png'
		W7

			icon = 'pngs/W7.png'
		W8

			icon = 'pngs/W8.png'
		W9

			icon = 'pngs/W9.png'
		W10

			icon = 'pngs/W10.png'
		W11

			icon = 'pngs/W11.png'
		W12
			icon = 'pngs/W12.png'
		W13
			icon = 'pngs/W13.png'
		W14
			icon = 'pngs/W14.png'
		W15
			icon = 'pngs/W15.png'
		W16
			icon = 'pngs/W16.png'

	trees
		density = 1
		covervalue = 1
		layer = MOB_LAYER + 1

		mouse_opacity = 0

		basic
			icon = 'icons/tree.dmi'
			pixel_x = -32
		big
			icon = 'icons/tree2.dmi'
			pixel_x = -64
		big_dark
			icon = 'icons/tree3.dmi'
			pixel_x = -64
		fod
			icon = 'icons/treefod.dmi'
			pixel_x = -32
		giant
			icon = 'icons/forest/giant.dmi'
			pixel_x = 0

		forest
			Basic
				Dark
					icon = 'icons/forest/thicketIII.dmi'
					density = 0
					Center
						icon_state = "C"
					Left
						icon_state = "L"
					Right
						icon_state = "R"
					Top_Center
						icon_state = "TC"
					Top_Left
						icon_state = "TL"
					Top_Right
						icon_state = "TR"
					Bottom_Center
						icon_state = "BC"
					Bottom_Right
						icon_state = "BR"
					Bottom_Left
						icon_state = "BL"
					Cross_Section
						icon_state = "C-BR"
				NewForest
					icon = 'icons/turf/NewForest.dmi'

				patch
					icon = 'icons/forest/Forest-Patch.dmi'
					icon_state = "Center"
					pixel_x = 0
					density = 0

				Double
					icon = 'icons/forest/Forest-Patch.dmi'
					icon_state = "Cross"
					pixel_x = 0
					density = 0

				top_left
					icon = 'icons/forest/Forest-Patch.dmi'
					icon_state = "TL"
					pixel_x = 0
					density = 0

				top_center
					icon = 'icons/forest/Forest-Patch.dmi'
					icon_state = "TC"
					pixel_x = 0
					density = 0

				top_right
					icon = 'icons/forest/Forest-Patch.dmi'
					icon_state = "TR"
					pixel_x = 0
					density = 0

				bottom_left
					icon = 'icons/forest/Forest-Patch.dmi'
					icon_state = "BR"
					pixel_x = 0
					density = 0

				bottom_center
					icon = 'icons/forest/Forest-Patch.dmi'
					icon_state = "BC"
					pixel_x = 0
					density = 0

				bottom_right
					icon = 'icons/forest/Forest-Patch.dmi'
					icon_state = "BL"
					pixel_x = 0
					density = 0

				trim_right
					icon = 'icons/forest/Forest-Patch.dmi'
					icon_state = "R"
					pixel_x = 0
					density = 0

				trim_left
					icon = 'icons/forest/Forest-Patch.dmi'
					icon_state = "L"
					pixel_x = 0
					density = 0

			Secondary
				icon = 'icons/forest/thicket.dmi'
				density = 0
				Center
					icon_state = "Center"
				Top_Center
					icon_state = "LTC"
				Bottom_Center
					icon_state = "LBC"
				Right_Trim
					icon_state = "R"
				Left_Trim
					icon_state = "L"
				Right_Bottom_Trim
					icon_state = "LBR"
				Left_Bottom_Trim
					icon_state = "LBL"
				Right_Top_Trim
					icon_state = "LTR"
				Left_Top_Trim
					icon_state = "LTL"
			Dark
				icon = 'icons/thicketIV.dmi'
				density = 0
				Center
					icon_state = "Center"
				Top_Center
					icon_state = "LTC"
				Bottom_Center
					icon_state = "LBC"
				Right_Trim
					icon_state = "R"
				Left_Trim
					icon_state = "L"
				Right_Bottom_Trim
					icon_state = "LBR"
				Left_Bottom_Trim
					icon_state = "LBL"
				Right_Top_Trim
					icon_state = "LTR"
				Left_Top_Trim
					icon_state = "LTL"
			Tertiary
				icon = 'icons/forest/thicketII.dmi'
				density = 0
				Center
					icon_state = "Center"
				Top_Center
					icon_state = "LTC"
				Bottom_Center
					icon_state = "LBC"
				Right_Trim
					icon_state = "Right"
				Left_Trim
					icon_state = "Left"

		light
			icon = 'icons/forest/treelight.dmi'
			pixel_x = -64
			density = 0

		mild
			icon = 'icons/forest/treelight.dmi'
			pixel_x = -64
			density = 0

		dark
			icon = 'icons/forest/treedark.dmi'
			pixel_x = -64
			density = 0

		dark_patches
			icon = 'icons/forest/tree_patches.dmi'
			icon_state = "dark"
			density = 0

		dead
			icon= 'icons/forest/treedark.dmi'
			pixel_x= -64
			density = 0

turf
	indoor
		WallWhite
			icon = 'icons/wallwhite.dmi'
			density = 1
			B
				icon_state = "b"
			T
				icon_state = "t"
			BL
				icon_state = "bl"
			BR
				icon_state = "br"
			TL
				icon_state = "tl"
			TR
				icon_state = "tr"
		walls
			density = 1
			icon = 'icons/indoor.dmi'
			sidelwall
				icon_state = "sidelwall"
				layer = MOB_LAYER + 3
			siderwall
				icon_state = "siderwall"
				layer = MOB_LAYER + 3
			sideltop
				icon_state = "sideltop"
				layer = MOB_LAYER + 3
			sidertop
				icon_state = "sidertop"
				layer = MOB_LAYER + 3
			b1
				icon = 'icons/wallwhite.dmi'
				icon_state = "bl"
			b2
				icon = 'icons/wallwhite.dmi'
				icon_state = "b"
			b3
				icon = 'icons/wallwhite.dmi'
				icon_state = "br"
			t1
				icon = 'icons/wallwhite.dmi'
				icon_state = "tl"
			t2
				icon = 'icons/wallwhite.dmi'
				icon_state = "t"
			t3
				icon = 'icons/wallwhite.dmi'
				icon_state = "tr"
			sideu
				icon_state = "sideu"
				layer = MOB_LAYER + 3
			sided
				icon_state = "sided"
				layer = MOB_LAYER + 3
			sider
				icon_state = "sider"
				layer = MOB_LAYER + 3
			sidel
				icon_state = "sidel"
				layer = MOB_LAYER + 3
			corner1
				icon_state = "corner1"
				layer = MOB_LAYER + 3
			corner2
				icon_state = "corner2"
				layer = MOB_LAYER + 3
			corner3
				icon_state = "corner3"
				layer = MOB_LAYER + 3
			corner4
				icon_state = "corner4"
				layer = MOB_LAYER + 3
		floor
			density = 0
			icon = 'icons/indoor.dmi'
			marble
				icon_state = "marble"
			wood
				icon = 'icons/flooring.dmi'
				icon_state = "wood"
			dojo
				icon = 'icons/flooring.dmi'
				icon_state = "dojo"


obj
	Signs
		pixel_x = 10
		layer = MOB_LAYER + 1
		store
			icon = 'icons/scenic.dmi'
			icon_state = "store"
		hospital
			icon = 'icons/scenic.dmi'
			icon_state = "hospital"
		academy
			icon = 'icons/scenic.dmi'
			icon_state = "academy"
		windowu
			icon = 'icons/konohahouse2.dmi'
			icon_state = "window2up"
		windowd
			icon = 'icons/konohahouse2.dmi'
			icon_state = "window2down"
		windowdbottom
			icon = 'icons/konohahouse2.dmi'
			icon_state = "window2down"
			density = 1
			layer = TURF_LAYER + 0.1
		barber
			density = 1
			icon = 'icons/scenic.dmi'
			icon_state = "barber"
		barber2
			icon = 'icons/scenic.dmi'
			icon_state = "barber2"
		apparel
			icon = 'icons/scenic.dmi'
			icon_state = "apparel"
		apparel2
			icon = 'icons/scenic.dmi'
			icon_state = "apparel2"
		dojo
			icon = 'icons/scenic.dmi'
			icon_state = "dojo"
		weapons
			icon = 'icons/scenic.dmi'
			icon_state = "weapons"
		academy2
			icon = 'icons/scenic.dmi'
			icon_state = "academy2"
		hospital2
			icon = 'icons/scenic.dmi'
			icon_state = "hospital2"

turf
	konoha
		layer = MOB_LAYER + 1
		density = 0

		buildings
			door
				density = 1
				layer = TURF_LAYER + 0.1
				icon = 'icons/konohahouse.dmi'
				icon_state = "enter"
			window
				store
					icon = 'icons/scenic.dmi'
					icon_state = "store"
				hospital
					icon = 'icons/scenic.dmi'
					icon_state = "hospital"
				academy
					icon = 'icons/scenic.dmi'
					icon_state = "academy"
				windowu
					icon = 'icons/konohahouse2.dmi'
					icon_state = "window2up"
				windowd
					icon = 'icons/konohahouse2.dmi'
					icon_state = "window2down"
				windowdbottom
					icon = 'icons/konohahouse2.dmi'
					icon_state = "window2down"
					density = 1
					layer = TURF_LAYER + 0.1
				barber
					density = 1
					icon = 'icons/scenic.dmi'
					icon_state = "barber"
				barber2
					icon = 'icons/scenic.dmi'
					icon_state = "barber2"
				apparel
					icon = 'icons/scenic.dmi'
					icon_state = "apparel"
				apparel2
					icon = 'icons/scenic.dmi'
					icon_state = "apparel2"
				dojo
					icon = 'icons/scenic.dmi'
					icon_state = "dojo"
				weapons
					icon = 'icons/scenic.dmi'
					icon_state = "weapons"
				academy2
					icon = 'icons/scenic.dmi'
					icon_state = "academy2"
				hospital2
					icon = 'icons/scenic.dmi'
					icon_state = "hospital2"
			house1
				icon = 'icons/house1.dmi'
				layer = TURF_LAYER + 0.1
				density = 1

			house2
				icon = 'icons/house2.dmi'
				layer = TURF_LAYER + 0.1
				density = 1

			house3
				icon = 'icons/house3.dmi'
				layer = TURF_LAYER + 0.1
				density = 1

			house4
				icon = 'icons/house4.dmi'
				layer = TURF_LAYER + 0.1
				density = 1

			roof
				layer = MOB_LAYER + 1
				density = 0
				icon = 'icons/roof.dmi'
				rlc
					icon_state = "rlc"
				rb
					icon_state = "rb"
				r1
					icon_state = "r1"
				rrc
					icon_state = "rrc"
				r2
					icon_state = "r2"
				rl
					icon_state = "rl"
				ru1
					icon_state = "ru1"
				ru2
					icon_state = "ru2"
				r3
					icon_state = "r3"
				ru3
					icon_state = "ru3"
				rr
					icon_state = "rr"
				r1b
					icon_state = "r1b"
				r2b
					icon_state = "r2b"
				r3b
					icon_state = "r3b"
				r1bh
					icon_state = "r1bh"
				r2bh
					icon_state = "r2bh"
				r3bh
					icon_state = "r3bh"

turf
	Terrain
		icon = 'icons/mountain.dmi'
		density = 0
		GrassFod
			icon = 'icons/fodturf.dmi'
			icon_state = "grass"
		Grass
			icon = 'icons/mountain.dmi'
			icon_state = "grass"

obj/water
	icon='icons/water.dmi'
	icon_state="still"
	layer=TURF_LAYER+1
	var/pkzone = 0

obj/lava
	icon='icons/Lava.dmi'
	layer=TURF_LAYER+1
	var/pkzone = 0

obj
	gui
		layer = 9
		icon = 'icons/gui.dmi'

		levelup
			rfx_uparrow
				icon_state = "up"
			str_uparrow
				icon_state = "up"
			int_uparrow
				icon_state = "up"
			con_uparrow
				icon_state = "up"

		passives
			icon = 'icons/gui2.dmi'
			gauge
				str
					icon_state = "str"
				rfx
					icon_state = "rfx"
				int
					icon_state = "int"
				con
					icon_state = "con"
			str
				Better_Criticals
					icon_state = "2"
				Built_Solid
					icon_state = "9"
				Piercing_Strike
					icon_state = "10"
				Impact
					icon_state = "11"
				Deflection
					icon_state = "12"
				Combo
					icon_state = "13"
			rfx
				Weak_Spot
					icon_state = "14"
				Projectile_Master
					icon_state = "15"
				Blindside
					icon_state = "16"
				Speed_Demon
					icon_state = "4"
				Rend
					icon_state = "17"
				Sword_Mastery
					icon_state = "18"
			int
				Tracking
					icon_state = "8"
				Analytical
					icon_state = "7"
				Genjutsu_Mastery
					icon_state = "19"
				Trap_Mastery
					icon_state = "20"
				Bunshin_Mastery
					icon_state = "1"
				Concentration
					icon_state = "21"
			con
				Efficiency
					icon_state = "5"
				Powerhouse
					icon_state = "22"
				Medic_Training
					icon_state = "23"
				Pure_Power
					icon_state = "24"
				Regeneration
					icon_state = "3"
				Hand_Seal_Mastery
					icon_state = "6"
