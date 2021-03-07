atom
	var
		covervalue = 0

turf
	headbands
		icon = 'icons/scenic.dmi'
		icon_state = "headbands"

	desk2
		icon = 'icons/scenic.dmi'
		icon_state = "desk2"

	denseempty
		density=1

	dense
		density = 1
		layer = 10

		opac
			density = 1
			opacity = 1
		dark
			icon = 'icons/black.dmi'
			density = 1
			opacity = 1

		players_only
			density = 0
			Enter(o)
				if(istype(o, /mob/human/player))
					return 0
				else
					return 1

	Hokage_Desk
		icon = 'interior/hokage-desk.png'
		density = 1
		layer = OBJ_LAYER

	Entrances
		icon = 'icons/boulder_entrance.dmi'
		density = 0
		layer = OBJ_LAYER + 0.1
		South_Prison
			icon ='icons/hideout.dmi'
			icon_state = "Southern_Prison"
			density = 0
			layer = OBJ_LAYER + 0.1
		North_Prison
			icon ='icons/hideout.dmi'
			icon_state = "Northern_Prison"
			density = 0
			layer = OBJ_LAYER + 0.1
		Ruin_Hideout
			icon ='icons/hideout.dmi'
			icon_state = "ruin"
			density = 0
			layer = OBJ_LAYER + 0.1
		Well_Hideout
			icon ='icons/hideout.dmi'
			icon_state = "well"
			density = 0
			layer = OBJ_LAYER + 0.1
		OCave_Hideout
			icon ='icons/hideout.dmi'
			icon_state = "OCave"
			density = 0
			layer = OBJ_LAYER + 0.1
		Gravyard_Hideout
			icon ='icons/mountain/mountainside.dmi'
			icon_state = "hideout"
			density = 0
			layer = OBJ_LAYER + 0.1


	buildings
		density = 0
		layer = MOB_LAYER + 1

		Neutral
			Roof
				icon = 'pngs/Neutral_House_Roof.png'
				layer = 5

			Hospital_Bottom
				icon = 'pngs/Neutral_Hospital_bottom.png'
				layer = 5
			Hospital_Top
				icon = 'pngs/Neutral_Hospital_top.png'
				layer = 5

			House_1
				icon = 'pngs/Neutral_House_1_bottom.png'
				layer = TURF_LAYER + 0.1
			House_2
				icon = 'pngs/Neutral_House_2_bottom.png'
				layer = TURF_LAYER + 0.1
			House_3
				icon = 'pngs/Neutral_House_3_bottom.png'
				layer = TURF_LAYER + 0.1


		barber
			icon = 'pngs/Barber1.png'
		inn
			icon = 'icons/INNS.dmi'
			Tiger_inn
				icon_state= "Tiger"
		chuunin_tower
			icon = 'pngs/chuuninbuilding.png'
		clothing
			icon = 'pngs/Clothing1.png'
		dojo
			icon = 'pngs/Dojo1.png'
		ramen
			icon = 'pngs/ramen.png'
		weapons
			icon = 'pngs/Weapons1.png'

		dojos
			icon = 'icons/dojos.dmi'
			layer = MOB_LAYER + 1

			leaf/icon_state = "leaf"
			sand/icon_state = "sand"
			mist/icon_state = "mist"




		leaf
			shops
				icon = 'icons/shops.dmi'
				layer = MOB_LAYER + 1

				weapons
					icon_state= "WS"

				clothing
					icon_state= "CS"

				barbar
					icon_state= "BS"

			academy
				icon = 'pngs/Konoha-Academy.png'
			arena
				icon = 'pngs/arena.png'
			hospital
				icon = 'pngs/konohahospital.png'
			Buildings
				icon = 'icons/konohabuilding.dmi'
			Towers
				icon = 'icons/konohabuildings.dmi'
				layer = MOB_LAYER + 1
				A
					icon_state= "A"
				B
					icon_state= "B"
				C
					icon_state= "C"
				D
					icon_state= "D"
				E
					icon_state= "E"
				F
					icon_state= "F"
				G
					icon_state= "G"
				H
					icon_state= "H"
				I
					icon_state= "I"
				J
					icon_state= "J"
				K
					icon_state= "K"
				L
					icon_state= "L"
			kage
				icon = 'pngs/adminbuilding.png'
			police
				icon = 'pngs/konohapolice.png'

		mist
			academy
				icon = 'pngs/Mist-Academy.png'
			arena
				icon = 'pngs/mistarena.png'
			hospital
				icon = 'pngs/misthospital.png'
			building
				icon = 'icons/Mist_House.dmi'
				icon_state= "1A"
			building2
				icon = 'icons/Mist_House.dmi'
				icon_state= "1B"
			building3
				icon = 'icons/Mist_House.dmi'
				icon_state= "1C"

				Wall1/icon_state = "1C1"
				Wall2/icon_state = "1C2"
				Wall3/icon_state = "1C3"
				Wall4/icon_state = "1C4"
				Wall5/icon_state = "1C5"
				Wall6/icon_state = "1C6"
			tower
				icon = 'icons/Mist_Tower.dmi'
				A
					icon_state= "A"
				B
					icon_state= "B"
				C
					icon_state= "C"
			kage
				icon = 'pngs/mistadmin.png'
			shops
				icon = 'icons/shops.dmi'
				barber
					icon_state= "BSM"
				clothing
					icon_state= "CSM"
				weapon
					icon_state= "WSM"

		sand
			academy
				icon = 'pngs/Sand-Academy.png'
			arena
				icon = 'pngs/sandarena.png'
			shops
				icon = 'icons/shops.dmi'
				barber
					icon_state= "BSS"
				clothing
					icon_state= "CSS"
				weapon
					icon_state= "WSS"
			mountain
				icon = 'icons/mountain/Mountain.dmi'
				icon_state = "loud"
				layer = MOB_LAYER + 0.01
			buildings
				icon = 'icons/sunabuildings.dmi'
				Building_B
					icon_state  = "B"
				Building_C
					icon_state  = "C"
				Building_D
					icon_state  = "D"
				Building_E
					icon_state  = "E"
				Building_F
					icon_state  = "F"
				Building_G
					icon_state  = "G"
				Building_H
					icon_state  = "H"
				Building_I
					icon_state  = "I"
				Building_J
					icon_state  = "J"
				Building_K
					icon_state  = "K"
				Building_L
					icon_state  = "L"
				Building_M
					icon_state  = "M"
				Building_N
					icon_state  = "N"
				Building_O
					icon_state  = "O"
				Building_P
					icon_state  = "P"

			dojo
				icon = 'pngs/sdojo.png'
			hospital
				icon = 'pngs/sunahospital.png'
			house1
				icon = 'pngs/sanhouse1.png'
			house2
				icon = 'pngs/sandhouse2.png'
			house3
				icon = 'pngs/sandhouse3.png'
			kage
				icon = 'pngs/sunaadmin.png'

	GraveStone
		density = 0
		icon = 'pngs/grave.png'
		layer = TURF_LAYER + 0.1
	GraveStones
		density = 0
		icon = 'icons/graveyard.dmi'
		layer = TURF_LAYER + 0.1

	HokageMonument
		density = 1
		layer = OBJ_LAYER + 2
		icon = 'pngs/Hokage-Mountain.png'

	Map
		Map
			density = 1
			icon = 'pngs/map.png'
		Leaf
			density = 1
			icon = 'pngs/map_leaf.png'
		Sand
			density = 1
			icon = 'pngs/map_sand.png'
		Mist
			density = 1
			icon = 'pngs/map_mist.png'
		Error
			density = 1
			icon = 'pngs/map_error.png'

	Bridges
		TreeTrunk
			icon = 'icons/mountain.dmi'
			layer = TURF_LAYER + 1
			icon_state = "trunk"
		Boat
			icon = 'icons/boat.dmi'
			layer = MOB_LAYER - 0.5
		KannabiBridge
			icon = 'icons/warbridge.dmi'
			layer = TURF_LAYER + 2
		NarutoBridge
			icon = 'icons/bridge.dmi'
			EntranceL
				icon = 'pngs/EntranceL.png'
				layer = MOB_LAYER + 1
				density = 0
			EntranceR
				icon = 'pngs/EntranceR.png'
				layer = MOB_LAYER + 1
				density = 0
			bot
				icon_state = "bot"
				density = 0
			mid1
				icon_state = "mid1"
				density = 0
			mid2
				icon_state = "mid2"
				density = 0
			mid3
				icon_state = "mid3"
				density = 0
			mid4
				icon_state = "mid4"
				density = 0
			top
				icon_state = "top"
				layer = MOB_LAYER + 1
				density = 0
			colm
				icon_state = "col"
				density = 1
				layer = MOB_LAYER + 1
			bot_over
				icon_state = "bot-over"
				layer = MOB_LAYER + 1
				density = 0

	mountain_rock
		density = 0
		icon = 'icons/mountain/mountainside.dmi'
		layer = TURF_LAYER + 2.5
		Low
			icon_state = "Low"
		Lowend
			icon_state = "Low-side-end"
		ConenctorR
			icon_state = "L-M-R"
		ConnectorL
			icon_state = "L-M-L"
		Middle
			icon_state = "Mid"
		Highest
			icon_state = "High"
		Side
			icon_state = "Side"
		SideWest/icon_state = "Side1"
		SideEast/icon_state = "Side2"
		SideNorth/icon_state = "Side3"
		SideSouth/icon_state = "Side4"
		Sideend
			icon_state= "Side-end"
		Highend
			icon_state= "High-End"
		Soundrock
			icon = 'icons/mountain/ridge_side.dmi'
			layer = TURF_LAYER + 2.5
			Rock_side_left
				icon_state = "left"
			Rock_side_right
				icon_state = "right"

	sides
		layer = TURF_LAYER + 0.1
		Ridge3
			icon = 'icons/mountain.dmi'
			icon_state = "ridge3_side"
			layer = OBJ_LAYER + 0.2

		Ridge2
			icon = 'icons/mountain.dmi'
			icon_state = "ridge2_side"
			layer = OBJ_LAYER + 0.2


		Ridge
			icon = 'icons/mountain.dmi'
			icon_state = "ridge_side"

			layer = OBJ_LAYER + 0.2

			North/icon_state = "ridge_north_side"
			South/icon_state = "ridge_south_side"
			East/icon_state = "ridge_east_side"; density = 1
			West/icon_state = "ridge_west_side"; density = 1

		L
			icon = 'icons/LightDirtRoad_o.dmi'
			south
				icon_state = "down"
			north
				icon_state = "up"
			east
				icon_state = "right"
			west
				icon_state = "left"
		D
			icon = 'icons/DirtRoad_o.dmi'
			south
				icon_state = "down"
			north
				icon_state = "up"
			east
				icon_state = "right"
			west
				icon_state = "left"
		C
			icon = 'icons/mountain/cdirt.dmi'
			cdirtup
				icon_state = "cdup"
			cdirtdown
				icon_state = "cddown"
			cdirtleft
				icon_state = "cdleft"
			cirtright
				icon_state = "cdright"
		Leaf
			icon = 'icons/mountain/lground.dmi'
			cdirtup
				icon_state = "cdup"
			cdirtdown
				icon_state = "cddown"
			cdirtleft
				icon_state = "cdleft"
			cirtright
				icon_state = "cdright"
		R
			icon = 'icons/mountain/rdirt.dmi'
			rdirtup
				icon_state = "rdup"
			rdirtdown
				icon_state = "rddown"
			rdirtleft
				icon_state = "rdleft"
			rdirtright
				icon_state = "rdright"
			rdirttrimright
				icon_state="rdur"
			rdirttrimleft
				icon_state="rdul"
			rdirtbottomright
				icon_state="rddr"
			rdirtbottomleft
				icon_state="rddl"
		G
			icon = 'icons/mountain/gmdirt.dmi'
			rdirtup
				icon_state = "rdup"
			rdirtdown
				icon_state = "rddown"
			rdirtleft
				icon_state = "rdleft"
			rdirtright
				icon_state = "rdright"
		Cliff
			icon = 'icons/mountain.dmi'
			icon_state = "cliffside"
			density = 1
			layer = MOB_LAYER
			cliffsideL
				icon_state = "cliffside-dropl"
			cliffsideR
				icon_state = "cliffside-dropr"
			cliffleft
				icon_state = "cliffsideleft"
			cliffright
				icon_state = "cliffsideright"
			cliffedgeR
				icon_state = "cliffedge-bl"
			cliffedgeL
				icon_state = "cliffedge-br"
			cliffedgeC
				icon_state = "cliffedge-center"

		Cliffsand
			icon = 'icons/mountain.dmi'
			icon_state = "cliffsand"
			density = 1
			layer = MOB_LAYER
			cliffsideL
				icon_state = "cliffsand-dropl"
			cliffsideR
				icon_state = "cliffsand-dropr"
			cliffleft
				icon_state = "cliffsandleft"
			cliffright
				icon_state = "cliffsandright"
			cliffedgeR
				icon_state = "cliffsand-bl"
			cliffedgeL
				icon_state = "cliffsand-br"
			cliffedgeC
				icon_state = "cliffsand-center"



		SandSouth
			icon = 'icons/mountain.dmi'
			icon_state = "ssouth"
		SandNorth
			icon = 'icons/mountain.dmi'
			icon_state = "snorth"
		SandEast
			icon = 'icons/mountain.dmi'
			icon_state = "seast"
		SandWest
			icon = 'icons/mountain.dmi'
			icon_state = "swest"
		ddgsouth
			icon = 'icons/mountain.dmi'
			icon_state = "ddgsouth"
		ddgeast
			icon = 'icons/mountain.dmi'
			icon_state = "ddgeast"
		ddgwest
			icon = 'icons/mountain.dmi'
			icon_state = "ddgwest"
		ddgnorth
			icon = 'icons/mountain.dmi'
			icon_state = "ddgnorth"
		dgsouth
			icon = 'icons/mountain.dmi'
			icon_state = "dgsouth"
		dgeast
			icon = 'icons/mountain.dmi'
			icon_state = "dgeast"
		dgwest
			icon = 'icons/mountain.dmi'
			icon_state = "dgwest"
		dgnorth
			icon = 'icons/mountain.dmi'
			icon_state = "dgnorth"
		gsouth
			icon = 'icons/mountain.dmi'
			icon_state = "gsouth"
		geast
			icon = 'icons/mountain.dmi'
			icon_state = "geast"
		gwest
			icon = 'icons/mountain.dmi'
			icon_state = "gwest"
		gnorth
			icon = 'icons/mountain.dmi'
			icon_state = "gnorth"
		rnorth
			icon = 'icons/mountain.dmi'
			icon_state = "rup"
		rsouth
			icon = 'icons/mountain.dmi'
			icon_state = "rdown"
		rwest
			icon = 'icons/mountain.dmi'
			icon_state = "rleft"
		reast
			icon = 'icons/mountain.dmi'
			icon_state = "rright"

	Chuunin_Exam
		icon = 'icons/chuuninexam.dmi'
		tv
			icon = 'pngs/tv.png'
			density = 1
		hands
			icon = 'pngs/hands.png'
			density = 1
		floor
			icon_state = "floor"
		rfloor
			icon_state = "rfloor"
		regfloor
			icon_state = "floor"
		wall
			icon_state = "wall"
			density = 1
		wallb
			icon_state = "wallb"
			density = 1
		railn
			icon_state = "railn"

		railw
			icon_state = "railw"

		raile
			icon_state = "raile"
		rails
			icon_state = "rails"


		railcorner1
			icon_state = "railcorner1"

		railcorner2
			icon_state = "railcorner2"

		railcorner3
			icon_state = "railcorner3"

		railcorner4
			icon_state = "railcorner4"

	desk
		icon = 'icons/scenic.dmi'
		icon_state = "desk"
		density = 1


	blackboard
		icon = 'icons/scenic.dmi'
		icon_state = "blackboard"
		left
			icon_state = "blackleft"
		right
			icon_state = "blackright"
		top
			icon_state = "blacktop"

	remove_projectiles

	heads
		icon = 'pngs/heads.png'

	gen
		icon = 'icons/gen.dmi'
		density = 1

	Terrain
		Pave
			icon = 'icons/mountain.dmi'
			icon_state = "pavement"
			density = 0
		DDGrass
			icon = 'icons/mountain.dmi'
			icon_state ="doubledensegrass"
			density = 0
		LightDirt
			icon = 'icons/LightDirtRoad_o.dmi'
			density = 0
		Dirt
			icon = 'icons/DirtRoad_o.dmi'
			density = 0
		Clay
			icon = 'icons/mountain.dmi'
			icon_state = "clay"
			density = 0
		CrackedDirt
			icon = 'icons/mountain/cdirt.dmi'
			density = 0
		Stone_Ground
			icon = 'icons/cliff.dmi'
			icon_state = "floor"
			density=0
			layer=TURF_LAYER+1
		Ridge
			icon = 'icons/mountain.dmi'
			icon_state = "ridge"
			density = 1
			layer = MOB_LAYER
		RockyDirt
			icon = 'icons/mountain/rdirt.dmi'
			density = 0
		SandSouth
			icon = 'icons/mountain.dmi'
			icon_state = "ssouth"
		SandNorth
			icon = 'icons/mountain.dmi'
			icon_state = "snorth"
		SandEast
			icon = 'icons/mountain.dmi'
			icon_state = "seast"
		SandWest
			icon = 'icons/mountain.dmi'
			icon_state = "swest"
		Grass
			icon = 'icons/mountain.dmi'
			icon_state ="grass"
			density = 0
		DGrass
			icon = 'icons/mountain.dmi'
			icon_state ="densegrass"
			density = 0
		LDGrass
			icon = 'icons/mountain.dmi'
			icon_state ="ldgrass"
			density = 0
		Sand
			icon = 'icons/mountain.dmi'
			icon_state ="sand"
			density = 0

		cliff
			icon = 'icons/mountain.dmi'
			icon_state = "cliffside-drop"
			density = 1
			layer = MOB_LAYER

		Dirtold
			icon = 'icons/mountain.dmi'
			icon_state = "dirt"
			density = 0
		Dirtbottom
			icon = 'icons/mountain.dmi'
			icon_state = "bottom"
			density = 1
		Dirtup
			icon = 'icons/mountain.dmi'
			icon_state = "up"
			density = 1
		Dirtleft
			icon = 'icons/mountain.dmi'
			icon_state = "left"
			density = 1
		Dirtright
			icon = 'icons/mountain.dmi'
			icon_state = "right"
			density = 1
		Dirttl
			icon = 'icons/mountain.dmi'
			icon_state = "tl"
			density = 1
		Dirttr
			icon = 'icons/mountain.dmi'
			icon_state = "tr"
			density = 1

		Grassbottom
			icon = 'icons/mountain.dmi'
			icon_state = "gbottom"
			density = 1
		Grassup
			icon = 'icons/mountain.dmi'
			icon_state = "gtop"
			density = 1
		Grassleft
			icon = 'icons/mountain.dmi'
			icon_state = "gleft"
			density = 1
		Grassright
			icon = 'icons/mountain.dmi'
			icon_state = "gright"
			density = 1
		Grasstl
			icon = 'icons/mountain.dmi'
			icon_state = "gtl"
			density = 1

		HighGrass
			icon = 'icons/mountain.dmi'
			icon_state = "hgrass"

		DarkHighGrass
			icon = 'icons/mountain.dmi'
			icon_state = "hdgrass"

		Grasstr
			icon = 'icons/mountain.dmi'
			icon_state = "gtr"
			density = 1
		Sandbottom
			icon = 'icons/mountain.dmi'
			icon_state = "sbottom"
			density = 1
		Sandup
			icon = 'icons/mountain.dmi'
			icon_state = "stop"
			density = 1
		Sandleft
			icon = 'icons/mountain.dmi'
			icon_state = "sleft"
			density = 1
		Sandright
			icon = 'icons/mountain.dmi'
			icon_state = "sright"
			density = 1
		Sandtl
			icon = 'icons/mountain.dmi'
			icon_state = "stl"
			density = 1
		Sandtr
			icon = 'icons/mountain.dmi'
			icon_state = "str"
			density = 1

		cliffbl
			icon = 'icons/mountain.dmi'
			icon_state = "cliffside-bl"
			density = 1
			layer = MOB_LAYER
		cliffbr
			icon = 'icons/mountain.dmi'
			icon_state = "cliffside-br"
			density = 1
			layer = MOB_LAYER
		CliffSide
			layer = MOB_LAYER
			icon = 'icons/mountain.dmi'
			icon_state = "cliffside"
			density = 1
		Hokage_Mountain
			layer = MOB_LAYER
			icon = 'icons/mountain.dmi'
			icon_state = "leaf_ridge"
			density = 1
		CliffSide1
			layer = MOB_LAYER
			icon = 'icons/mountain.dmi'
			icon_state = "4"
			density = 1
		CliffSide2
			layer = MOB_LAYER
			icon = 'icons/mountain.dmi'
			icon_state = "3"
			density = 1
		Side2
			layer = MOB_LAYER
			icon = 'icons/mountain.dmi'
			icon_state = "a"
			density = 1
	faces
		icon = 'icons/heads.dmi'
		layer = MOB_LAYER
		f1
			icon_state = "1"
		f2
			icon_state = "2"
		f3
			icon_state = "3"
		f4
			icon_state = "4"
		f5
			icon_state = "5"
		f6
			icon_state = "6"
		f7
			icon_state = "7"
		f8
			icon_state = "8"
		f9
			icon_state = "9"
		f10
			icon_state = "10"
		f11
			icon_state = "11"
		f12
			icon_state = "12"
		f13
			icon_state = "13"
		f14
			icon_state = "14"
		f15
			icon_state = "15"
		f16
			icon_state = "16"
		f17
			icon_state = "17"
		f18
			icon_state = "18"
		f19
			icon_state = "19"
		f20
			icon_state = "20"
		f21
			icon_state = "21"
		f22
			icon_state = "22"
		f23
			icon_state = "23"
		f24
			icon_state = "24"
		f25
			icon_state = "25"
		f26
			icon_state = "26"
		f27
			icon_state = "27"
		f28
			icon_state = "28"
		f29
			icon_state = "29"

	konoha_tower
		icon = 'icons/Tower.dmi'
		layer = MOB_LAYER + 1
		density = 0
		bl
			icon_state = "BL"
			layer = TURF_LAYER + 0.1
			density = 1
		bm
			icon_state = "BM"
			layer = TURF_LAYER + 0.1
			density = 1
		br
			icon_state = "BR"
			layer = TURF_LAYER + 0.1
			density = 1
		ml
			icon_state = "ML"
		mm
			icon_state = "MM"
		mr
			icon_state = "MR"
		divl
			icon_state = "DivL"
		divm
			icon_state = "DivM"
		divr
			icon_state = "DivR"
		extenL
			icon_state = "ExtenL"
		extenM
			icon_state = "ExtenM"
		extenR
			icon_state = "ExtenR"
		RoofBL
			icon_state = "RoofBL"
		RoofBM
			icon_state = "RoofBM"
		RoofBR
			icon_state = "RoofBR"
		RoofTL
			icon_state = "RoofTL"
		RoofTM
			icon_state = "RoofTM"
		RoofTR
			icon_state = "RoofTR"

	stairs
		density = 0
		icon = 'icons/decor.dmi'
		icon_state = "stairs"

	konoha/fence
		layer = TURF_LAYER + 0.1
		density = 1
		icon = 'icons/scenic.dmi'
		ftop
			density = 0
			layer = MOB_LAYER + 1
			icon_state = "fencet"
		fbot
			icon_state = "fenceb"
		fleft
			icon_state = "fencel"
		fright
			icon_state = "fencer"

	Rocks
		Rock1
			icon = 'pngs/rock1.png'
			density = 0
			layer = MOB_LAYER

obj
	var
		owner

	respawn_markers
		density = 0

		New()
			..()
			gameLists["spawns"] += src
		//	spawn(50) world << "src was added to game list"

		dojorespawn
		arenaspawn
		cexamspawn

		respawn
			var
				ind = 0//0 = neutral, 1 = konoha, 2 = suna, 3 = Mist
			missing
				ind = 0
			leaf
				ind = 1
			mist
				ind = 3
			sand
				ind = 2
			leafwar
				ind = 4
			mistwar
				ind = 6
			sandwar
				ind = 5

	jutsusign
		icon = 'icons/gui.dmi'
		icon_state = "jutsusign"

	clock
		icon = 'icons/gui.dmi'
		icon_state = "clock"

	MapMaking
		Interior
			icon = 'icons/house_stuff.dmi'
			Book1
				icon_state = "book1"
			Book2
				icon_state = "book2"
			Book3
				icon_state = "book3"
			Book4
				icon_state = "book4"
			Book5
				icon_state = "book5"
			Book6
				icon_state = "book6"
			Book7
				icon_state = "book7"
			Book8
				icon_state = "book8"

	displaysword
		icon = 'icons/sword_display.dmi'

	interactable
		hospitalbed //this turf acts as a spawn point! dont use it
			icon = 'icons/decor.dmi'
			icon_state = "bed"
			density = 1

		bed
			icon = 'icons/decor.dmi'
			icon_state = "bed"
			density = 1
	boat
		icon = 'icons/boat.dmi'

	sheet
		layer = MOB_LAYER + 2
		icon = 'icons/decor.dmi'
		icon_state = "sheet"

area
	var
		pkzone = 1
		lit = 1
		obj/weather/Weather
	mouse_opacity = 0


	nopkzone//used for indoor nonpkzones. outdoor nonpkzones will have to have their pkzone variable set to 0
		pkzone = 0
	forest_of_death
	main_village
		layer = 150
		mouse_opacity=0
		pkzone = 1
		World
		Konoha
		Suna
		//	icon = 'icons/country.dmi'
		//	icon_state = "sand"
	//		layer = 14
		Kiri



	main_village2
		layer = 150
		mouse_opacity=0
		pkzone = 1
		World
		Konohagakure
		Sunagakure
		//	icon = 'icons/country.dmi'
		//	icon_state = "sand"
	//		layer = 14
		Mist




	inns
		layer = 150
		mouse_opacity=0
		dragon
		rooster
		dog
		tiger
		toad
		pig
		snake
		rabbit

	village
		layer=105
		mouse_opacity=0
		outside
		tea
		river
		stone

	country
		icon='icons/country.dmi'
		layer=OBJ_LAYER+5
		stone
			icon_state="stone"
		river
			icon_state="river"
		rain
			icon_state="rain"
		fire
			icon_state="fire"
		wind
			icon_state="wind"
		water
			icon_state="water"
		earth
			icon_state="earth"
		lightning
			icon_state="lightning"
		waterfall
			icon_state="waterfall"
		grass
			icon_state="grass"
		sound
			icon_state="sounds"
		snow
			icon_state="snow"
		frost
			icon_state="frost"

obj
	water
		icon='icons/water.dmi'
		icon_state="still"
		layer=TURF_LAYER+1

area
	overworld
		layer=105
		mouse_opacity=0



	dojo
		Konoha
		Kiri
		Suna
		//	icon = 'icons/country.dmi'
		//	icon_state =  "sand"
		//	layer = 14