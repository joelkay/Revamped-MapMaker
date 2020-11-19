turf
	dense_dark
		icon='black2.dmi'
		density=1
		opacity=1

	Grassleft
		icon = 'mountain2.dmi'
		icon_state = "gleft"
		density = 1

turf //outdated version of Terrain, dont use this, its being phased out.
	mountain
		rockyground
			icon='mountain2.dmi'
			icon_state="rockyground"
			rup
				icon_state="rup"
			rdown
				icon_state="rdown"
			rleft
				icon_state="rleft"
			rright
				icon_state="rright"
		SandSouth
			icon='mountain2.dmi'
			icon_state="ssouth"
		SandNorth
			icon='mountain2.dmi'
			icon_state="snorth"
		SandEast
			icon='mountain2.dmi'
			icon_state="seast"
		SandWest
			icon='mountain2.dmi'
			icon_state="swest"
		Grass
			icon='mountain2.dmi'
			icon_state ="grass"
			density=0
		DGrass
			icon='mountain2.dmi'
			icon_state ="dgrass"
			density=0
		LDGrass
			icon='mountain2.dmi'
			icon_state ="ldgrass"
			density=0
		Sand
			icon='mountain2.dmi'
			icon_state ="sand"
			density=0


		Dirt
			icon = 'mountain2.dmi'
			icon_state = "dirt"
			density = 0
		Dirtbottom
			icon = 'mountain2.dmi'
			icon_state = "bottom"
			density = 1
		Dirtup
			icon = 'mountain2.dmi'
			icon_state = "up"
			density = 1
		Dirtleft
			icon = 'mountain2.dmi'
			icon_state = "left"
			density = 1
		Dirtright
			icon = 'mountain2.dmi'
			icon_state = "right"
			density = 1
		Dirttl
			icon = 'mountain2.dmi'
			icon_state = "tl"
			density = 1
		Dirttr
			icon = 'mountain2.dmi'
			icon_state = "tr"
			density = 1

		Grassbottom
			icon = 'mountain2.dmi'
			icon_state = "gbottom"
			density = 1
		Grassup
			icon = 'mountain2.dmi'
			icon_state = "gtop"
			density = 1
		Grassleft
			icon = 'mountain2.dmi'
			icon_state = "gleft"
			density = 1
		Grassright
			icon = 'mountain2.dmi'
			icon_state = "gright"
			density = 1
		Grasstl
			icon = 'mountain2.dmi'
			icon_state = "gtl"
			density = 1

		Grasstr
			icon = 'mountain2.dmi'
			icon_state = "gtr"
			density = 1
		Sandbottom
			icon = 'mountain2.dmi'
			icon_state = "sbottom"
			density = 1
		Sandup
			icon = 'mountain2.dmi'
			icon_state = "stop"
			density = 1
		Sandleft
			icon = 'mountain2.dmi'
			icon_state = "sleft"
			density = 1
		Sandright
			icon = 'mountain2.dmi'
			icon_state = "sright"
			density = 1
		Sandtl
			icon = 'mountain2.dmi'
			icon_state = "stl"
			density = 1
		Sandtr
			icon = 'mountain2.dmi'
			icon_state = "str"
			density = 1

		cliffbl
			icon = 'mountain2.dmi'
			icon_state = "bl"
			density = 1
			layer=MOB_LAYER
		cliffbr
			icon = 'mountain2.dmi'
			icon_state = "br"
			density = 1
			layer=MOB_LAYER
		Side
			layer=MOB_LAYER
			icon='mountain2.dmi'
			icon_state="side"
			density=1
		cliff
			icon = 'mountain2.dmi'
			icon_state = "cliff-drop"
			density = 1
			layer=MOB_LAYER
		Hokage_hill_new
			icon = 'hokagemountain2.dmi'
			density=1
			m1
				icon_state="m1"
				density=0
			m2
				icon_state="m2"
			m3
				icon_state="m3"
			m4
				icon_state="m4"
			m5
				icon_state="m5"
		Hokage_hill
			icon = 'hokagemountain2.dmi'
			cliffbl
				icon = 'hokagemountain2.dmi'
				icon_state = "bl"
				density = 1
				layer=MOB_LAYER
			cliffbr
				icon = 'hokagemountain2.dmi'
				icon_state = "br"
				density = 1
				layer=MOB_LAYER
			Side
				layer=MOB_LAYER
				icon = 'hokagemountain2.dmi'
				icon_state="side"
				density=1
			cliff
				icon = 'hokagemountain2.dmi'
				icon_state = "cliff-drop"
				density = 1
				layer=MOB_LAYER
			tleft
				icon_state = "tleft"
			tbottom
				icon_state = "tbottom"
			tright
				icon_state = "tright"
			ttop
				icon_state = "tup"
			left
				icon_state = "left"
				layer=MOB_LAYER+3
			right
				icon_state = "right"
				layer=MOB_LAYER+3

	denseforppl
		density=0
		Enter(o)
			if(istype(o,/mob/human/player))
				return 0
			else
				return 1

turf/water_sides
	icon='water.dmi'
	layer=OBJ_LAYER
	density=0
	var
		sleepdie=100
	wl
		icon_state="left"
	wr
		icon_state="right"
	wd
		icon_state="down"
	wu
		icon_state="up"
	w0l
		icon_state="left"
	w0r
		icon_state="right"
	w0d
		icon_state="down"
	w0u
		icon_state="up"






obj
	fence2
		density=1
		icon='scenic2.dmi'
		ftop
			density=0
			layer=MOB_LAYER+1
			icon_state="fencet"

		ftopl
			density=0
			layer=MOB_LAYER+1
			icon_state="fencetl"
		ftopr
			density=0
			layer=MOB_LAYER+1
			icon_state="fencetr"
		fbot
			icon_state="fenceb"


		fleftb
			icon_state="fencelb"


		frightb
			icon_state="fencerb"

		fleft
			icon_state="fencel"


		fleftp
			icon_state="fencel"
			density=0
			layer=MOB_LAYER+1
		frightp
			icon_state="fencer"
			density=0
			layer=MOB_LAYER+1
		fright
			icon_state="fencer"

		placable
			icon=0

turf
	LightDirtroad
		icon='LightDirtRoad2.dmi'
		density=0
		left
			icon_state="left"
		right
			icon_state="right"
		bottom
			icon_state="bottom"
		top
			icon_state="top"
		C1
			icon_state="1"
		C2
			icon_state="2"
		C3
			icon_state="3"
		C4
			icon_state="4"
		C5
			icon_state="5"
		C6
			icon_state="6"
		C7
			icon_state="7"
		C8
			icon_state="8"
	Dirtroad
		icon='DirtRoad2.dmi'
		density=0
		left
			icon_state="left"
		right
			icon_state="right"
		bottom
			icon_state="bottom"
		top
			icon_state="top"
		C1
			icon_state="1"
		C2
			icon_state="2"
		C3
			icon_state="3"
		C4
			icon_state="4"
		C5
			icon_state="5"
		C6
			icon_state="6"
		C7
			icon_state="7"
		C8
			icon_state="8"


turf

	Terrain
		Side
			layer=MOB_LAYER
			icon='mountain2.dmi'
			icon_state="side"
			density=1

turf
	konoha/fence
		layer=TURF_LAYER+0.1
		density=1
		icon='scenic.dmi'
		ftop
			density=0
			layer=MOB_LAYER+1
			icon_state="fencet"
		fbot
			icon_state="fenceb"
		fleft
			icon_state="fencel"
		fright
			icon_state="fencer"

obj
	fence2
		ftop
			New()
				if(locate(/obj/fence2/fright) in locate(src.x+1,src.y,src.z))
					new/obj/fence2/fbot(locate(src.x+1,src.y-1,src.z))
				if(locate(/obj/fence2/fleft) in locate(src.x-1,src.y,src.z))
					new/obj/fence2/fbot(locate(src.x-1,src.y-1,src.z))
		fbot
			New()
				new/obj/fence2/ftop(locate(src.x,src.y+1,src.z))
		fleftb
			New()
				new/obj/fence2/ftopl(locate(src.x,src.y+1,src.z))
		frightb
			New()
				new/obj/fence2/ftopr(locate(src.x,src.y+1,src.z))
		fleft
			New()
				if(!locate(/obj/fence2) in locate(src.x,src.y-1,src.z))
					var/turf/X = src.loc
					for(var/obj/fence2/K in src.loc)
						K.loc=null
					new/obj/fence2/fleftb(X)
					del(src)
				if(!locate(/obj/fence2) in locate(src.x,src.y+1,src.z))
					new/obj/fence2/fleftp(locate(src.x,src.y+1,src.z))
		fright
			New()
				if(!locate(/obj/fence2) in locate(src.x,src.y-1,src.z))
					var/turf/X = src.loc
					for(var/obj/fence2/K in src.loc)
						K.loc=null
					new/obj/fence2/frightb(X)
					del(src)
				if(!locate(/obj/fence2) in locate(src.x,src.y+1,src.z))
					new/obj/fence2/frightp(locate(src.x,src.y+1,src.z))
		placable
			icon='scenic2.dmi'
			icon_state="fenceb"
			Process()
				if((locate(/obj/fence2) in locate(src.x+1,src.y,src.z))&&(locate(/obj/fence2) in locate(src.x-1,src.y,src.z)))
					new/obj/fence2/fbot(locate(src.x,src.y,src.z))
					del(src)
				else
					spawn(10)
						if((locate(/obj/fence2/fbot) in locate(src.x+1,src.y,src.z)) && !(locate(/obj/fence2/fbot) in locate(src.x-1,src.y,src.z)))
							new/obj/fence2/fright(locate(src.x,src.y,src.z))
							for(var/obj/fence2/placable/K in src.loc)
								K.loc=null
							del(src)

						if((locate(/obj/fence2/fbot) in locate(src.x-1,src.y,src.z)) && !(locate(/obj/fence2/fbot) in locate(src.x+1,src.y,src.z)))
							new/obj/fence2/fleft(locate(src.x,src.y,src.z))
							for(var/obj/fence2/placable/K in src.loc)
								K.loc=null
							del(src)

						sleep(10)

						var/fence_helper/helper=new
						spawn(60)
							if(!helper.doin)
								var/obj/d = (locate(/obj/fence2) in locate(src.x,src.y-1,src.z))
								if(d)
									var/dtype=d.type
									if(dtype==/obj/fence2/ftopl||dtype==/obj/fence2/fleftb)
										dtype=/obj/fence2/fleft
									else if(dtype==/obj/fence2/ftopr||dtype==/obj/fence2/frightb)
										dtype=/obj/fence2/fright
									new dtype(locate(src.x,src.y,src.z))
									for(var/obj/fence2/placable/K in src.loc)
										K.loc=null
									del(src)
						spawn(70)
							if(!helper.doin)
								del(src)
						while(!helper.doin&&(locate(/obj/fence2/placable) in locate(src.x,src.y+1,src.z)))
							CHECK_TICK
						helper.doin=1
						var/obj/u = (locate(/obj/fence2) in locate(src.x,src.y+1,src.z))

						if(u)
							var/utype=u.type
							if(utype==/obj/fence2/ftopl||utype==/obj/fence2/fleftb)
								utype=/obj/fence2/fleft
							else if(utype==/obj/fence2/ftopr||utype==/obj/fence2/frightb)
								utype=/obj/fence2/fright
							new utype(locate(src.x,src.y,src.z))
							for(var/obj/fence2/placable/K in src.loc)
								K.loc=null
							del(src)

fence_helper
	var/doin = 0

turf


	Terrain
		icon='Terrainset.dmi'
		density=0
		Water
			icon_state="5"
			density=1
		Grass
			icon='mountain2.dmi'
			icon_state="grass"
		Desert
			Desert1
				icon_state="1"
			Desert2
				icon_state="2"
			Desert3
				icon_state="3"
			Desert4
				icon_state="4"
			Desert6
				icon_state="6"
			Desert7
				icon_state="7"
			Desert8
				icon_state="8"
			Desert9
				icon_state="9"
			Desert10
				icon_state="10"
			Desert11
				icon_state="11"
			Desert12
				icon_state="12"
			Desert13
				icon_state="13"
			Desert14
				icon_state="14"
				density=1
			Desert15
				icon_state="15"
				density=1
			Desert16
				density=1
				icon_state="16"
			Desert17
				density=1
				icon_state="17"
			Desert18
				density=1
				icon_state="18"
			Desert19
				density=1
				icon_state="19"
			Desert20
				icon_state="20"
			Desert21
				density=1
				icon_state="21"
			Desert22
				density=1
				icon_state="22"
			Desert23
				density=1
				icon_state="23"
			Desert24
				density=1
				icon_state="24"
			Desert25
				icon_state="25"
			Desert26
				icon_state="26"
			Desert27
				icon_state="27"
			Desert28
				icon_state="28"
			Desert29
				icon_state="29"
			Desert30
				icon_state="30"
			Desert31
				icon_state="31"
			Desert32
				icon_state="32"
			Desert33
				icon_state="33"
			Desert34
				icon_state="34"
			Desert35
				icon_state="35"
			Desert36
				icon_state="36"
			Desert37
				icon_state="37"
			Desert38
				icon_state="38"
			Desert39
				icon_state="39"
			Desert40
				icon_state="40"
			Desert41
				icon_state="41"
			Desert42
				density=1
				icon_state="42"
			Desert43
				density=1
				icon_state="43"
			Desert44
				density=1
				icon_state="44"
			Desert45
				density=1
				icon_state="45"
			Desert46
				density=1
				icon_state="46"
			Desert47
				density=1
				icon_state="47"
			Desert48
				density=1
				icon_state="48"
			Desert49
				density=1
				icon_state="49"
			Desert50
				density=1
				icon_state="50"
			Desert51
				density=1
				icon_state="51"
			Desert52
				density=1
				icon_state="52"
			Desert53
				density=1
				icon_state="53"
			Desert54
				density=1
				icon_state="54"
			Desert55
				icon_state="55"

	Terrain
		Pave
			icon='mountain2.dmi'
			icon_state="pavement"
			density=0
		DDGrass
			icon='mountain2.dmi'
			icon_state ="doubledensegrass"
			density=0

		LightDirt
			icon='LightDirtRoad_o2.dmi'
			density=0
		Dirt
			icon='DirtRoad_o2.dmi'
			density=0
		rockyground
			icon='mountain2.dmi'
			icon_state="rockyground"
			rup
				icon_state="rup"
			rdown
				icon_state="rdown"
			rleft
				icon_state="rleft"
			rright
				icon_state="rright"
		SandSouth
			icon='mountain2.dmi'
			icon_state="ssouth"
		SandNorth
			icon='mountain2.dmi'
			icon_state="snorth"
		SandEast
			icon='mountain2.dmi'
			icon_state="seast"
		SandWest
			icon='mountain2.dmi'
			icon_state="swest"
		Grass
			icon='mountain2.dmi'
			icon_state ="grass"
			density=0
		DGrass
			icon='mountain2.dmi'
			icon_state ="densegrass"
			density=0
		LDGrass
			icon='mountain2.dmi'
			icon_state ="ldgrass"
			density=0
		Sand
			icon='mountain2.dmi'
			icon_state ="sand"
			density=0

		cliff
			icon = 'mountain2.dmi'
			icon_state = "cliff-drop"
			density = 1
			layer=MOB_LAYER
		Dirtold
			icon = 'mountain2.dmi'
			icon_state = "dirt"
			density = 0
		Dirtbottom
			icon = 'mountain2.dmi'
			icon_state = "bottom"
			density = 1
		Dirtup
			icon = 'mountain2.dmi'
			icon_state = "up"
			density = 1
		Dirtleft
			icon = 'mountain2.dmi'
			icon_state = "left"
			density = 1
		Dirtright
			icon = 'mountain2.dmi'
			icon_state = "right"
			density = 1
		Dirttl
			icon = 'mountain2.dmi'
			icon_state = "tl"
			density = 1
		Dirttr
			icon = 'mountain2.dmi'
			icon_state = "tr"
			density = 1

		Grassbottom
			icon = 'mountain2.dmi'
			icon_state = "gbottom"
			density = 1
		Grassup
			icon = 'mountain2.dmi'
			icon_state = "gtop"
			density = 1
		Grassleft
			icon = 'mountain2.dmi'
			icon_state = "gleft"
			density = 1
		Grassright
			icon = 'mountain2.dmi'
			icon_state = "gright"
			density = 1
		Grasstl
			icon = 'mountain2.dmi'
			icon_state = "gtl"
			density = 1

		Grasstr
			icon = 'mountain2.dmi'
			icon_state = "gtr"
			density = 1
		Sandbottom
			icon = 'mountain2.dmi'
			icon_state = "sbottom"
			density = 1
		Sandup
			icon = 'mountain2.dmi'
			icon_state = "stop"
			density = 1
		Sandleft
			icon = 'mountain2.dmi'
			icon_state = "sleft"
			density = 1
		Sandright
			icon = 'mountain2.dmi'
			icon_state = "sright"
			density = 1
		Sandtl
			icon = 'mountain2.dmi'
			icon_state = "stl"
			density = 1
		Sandtr
			icon = 'mountain2.dmi'
			icon_state = "str"
			density = 1

		cliffbl
			icon = 'mountain2.dmi'
			icon_state = "bl"
			density = 1
			layer=MOB_LAYER
		cliffbr
			icon = 'mountain2.dmi'
			icon_state = "br"
			density = 1
			layer=MOB_LAYER
		Side
			layer=MOB_LAYER
			icon='mountain2.dmi'
			icon_state="side"
			density=1


atom
	var
		do_sides = 0
		//list/side_match_types
		side_level = 0
		north_type
		south_type
		east_type
		west_type
	proc
		Process()
			if(do_sides)
				var/adjacent_turfs[0]
				for(var/dx in x-1 to x+1)
					if(dx > 0 && dx <= world.maxx)
						adjacent_turfs += locate(dx, y, z)
				for(var/dy in y-1 to y+1)
					if(dy > 0 && dy <= world.maxy)
						adjacent_turfs += locate(x, dy, z)
				for(var/turf/T in adjacent_turfs)
					var/need_side = 1
					for(var/atom/A in T)
						if(A.side_level >= side_level)
							need_side = 0
							break
					if(T.side_level >= side_level)
						need_side = 0

					if(need_side)
						var/side_type
						switch(get_dir(src, T))
							if(NORTH)
								side_type = north_type
							if(SOUTH)
								side_type = south_type
							if(EAST)
								side_type = east_type
							if(WEST)
								side_type = west_type
						if(side_type) new side_type(T)

turf
	UnrealKonohaWalls
		density=0
		icon='pngs/A-Konoha Walls.PNG'
		layer=MOB_LAYER+1
		W1
			density=0
			icon='pngs/W1.png'
		W2

			icon='pngs/W2.png'
		W3

			icon='pngs/W3.png'
		W4

			icon='pngs/W4.png'
		W5

			icon='pngs/W5.png'
		W6

			icon='pngs/W6.png'
		W7

			icon='pngs/W7.png'
		W8

			icon='pngs/W8.png'
		W9

			icon='pngs/W9.png'
		W10

			icon='pngs/W10.png'
		W11

			icon='pngs/W11.png'
		W12
			icon='pngs/W12.png'
		W13
			icon='pngs/W13.png'
		W14
			icon='pngs/W14.png'
		W15
			icon='pngs/W15.png'
		W16
			icon='pngs/W16.png'

obj
	NewTree
		icon = 'NewTree.dmi'
		layer = 30

	NewChuunin
		icon = 'Chuunin.png'
		layer = 30