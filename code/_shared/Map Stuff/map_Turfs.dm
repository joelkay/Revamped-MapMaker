area
	var/inside=0
	mouse_opacity=0
	inside
		inside=1
	insidedensity
		density=1
		inside=1
		layer=99

		New()
			.=..()
			for(var/turf/T in src)
				T.density=1

turf
	density
		layer=99
		Enter(o)
			if(istype(o, /mob/human/player))
				var/mob/M = o
				if(M.Fly == 1)
					return 1
			else
				return 0
		New()
			icon = 'area.dmi'
			.=..()
			for(var/turf/T in src)
				T.density=1
			/*
			while(1)
				sleep(10)	//Every minute it changes
				if(icon_state=="night")	icon_state=""
				else	icon_state="night"*/

//	outsideArea
	/*	icon='area.dmi'
		icon_state = "night" // change after, only for easier mapping
		layer = FLY_LAYER
		New()
			. = ..()
			icon_state = ""
			while(1)
				sleep(10)	//Every minute it changes
				if(icon_state=="night")	icon_state=""
				else	icon_state="night"*/

turf
	var/cliff=0
	var/water=0
	teleport
		layer=999
		login
		login2
		login3
		login4

		skilltree1

		spawns
			leaf
			sand
			mist
		respawns
			leaf
			sand
			mist
		buildingteleports
			density=0
			Kiri_Hospital

				_1
					INSIDE
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Kiri_Hospital/_1/OUTSIDE)
							.=..()
					OUTSIDE
						Enter(atom/movable/M)
							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Kiri_Hospital/_1/INSIDE)
							.=..()
				_2
					INSIDE
						Enter(atom/movable/M)
							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Kiri_Hospital/_2/OUTSIDE)
							.=..()
					OUTSIDE
						Enter(atom/movable/M)
							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Kiri_Hospital/_2/INSIDE)
							.=..()
			Suna_Hospital

				_1
					INSIDE
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Suna_Hospital/_1/OUTSIDE)
							.=..()
					OUTSIDE
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Suna_Hospital/_1/INSIDE)
							.=..()
				_2
					INSIDE
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Suna_Hospital/_2/OUTSIDE)
							.=..()
					OUTSIDE
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Suna_Hospital/_2/INSIDE)
							.=..()
			Konoha_Hospital

				_1
					INSIDE
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Konoha_Hospital/_1/OUTSIDE)
							.=..()
					OUTSIDE
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Konoha_Hospital/_1/INSIDE)
							.=..()
				_2
					INSIDE
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Konoha_Hospital/_2/OUTSIDE)
							.=..()
					OUTSIDE
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Konoha_Hospital/_2/INSIDE)
							.=..()
			Kiri_Academy

				_1
					INSIDE
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Kiri_Academy/_1/OUTSIDE)
							.=..()
					OUTSIDE
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Kiri_Academy/_1/INSIDE)
							.=..()
				_2
					INSIDE
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Kiri_Academy/_2/OUTSIDE)
							.=..()
					OUTSIDE
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Kiri_Academy/_2/INSIDE)
							.=..()
			Suna_Academy

				_1
					INSIDE
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Suna_Academy/_1/OUTSIDE)
							.=..()
					OUTSIDE
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Suna_Academy/_1/INSIDE)
							.=..()
				_2
					INSIDE
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Suna_Academy/_2/OUTSIDE)
							.=..()
					OUTSIDE
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Suna_Academy/_2/INSIDE)
							.=..()
			Konoha_Academy

				_1
					INSIDE
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Konoha_Academy/_1/OUTSIDE)
							.=..()
					OUTSIDE
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Konoha_Academy/_1/INSIDE)
							.=..()
				_2
					INSIDE
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Konoha_Academy/_2/OUTSIDE)
							.=..()
					OUTSIDE
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Konoha_Academy/_2/INSIDE)
							.=..()
			Konoha_Kage_House

				_1
					INSIDE
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Konoha_Kage_House/_1/OUTSIDE)
							.=..()
					OUTSIDE
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Konoha_Kage_House/_1/INSIDE)
							.=..()
				_2
					INSIDE
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Konoha_Kage_House/_2/OUTSIDE)
							.=..()
					OUTSIDE
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Konoha_Kage_House/_2/INSIDE)
							.=..()
			Konoha_Kage_House_Top

				_1
					Top
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Konoha_Kage_House_Top/_1/Down)
							.=..()
					Down
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Konoha_Kage_House_Top/_1/Top)
							.=..()
				_2
					Top
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Konoha_Kage_House_Top/_2/Down)
							.=..()
					Down
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Konoha_Kage_House_Top/_2/Top)
							.=..()
			Konoha_Kage_House_Top2

				_1
					Top
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Konoha_Kage_House_Top2/_1/Down)
							.=..()
					Down
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Konoha_Kage_House_Top2/_1/Top)
							.=..()
				_2
					Top
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Konoha_Kage_House_Top2/_2/Down)
							.=..()
					Down
						Enter(atom/movable/M)

							if(ismob(M))
								M.loc=locate(/turf/teleport/buildingteleports/Konoha_Kage_House_Top2/_2/Top)
							.=..()
		/*
		mapteleports
			density=0
			WaveForest2WaveCountry
				To
					Enter(atom/movable/M)
						M.loc=locate(13,M.y,9)
						.=..()

				From
					Enter(atom/movable/M)
						M.loc=locate(312,M.y,8)
						.=..()
			LeafForest2WaveForest
				To
					Enter(atom/movable/M)
						M.loc=locate(13,M.y,8)
						.=..()

				From
					Enter(atom/movable/M)
						M.loc=locate(312,M.y,2)
						.=..()
			Konoha2Clifftop
				To
					Enter(atom/movable/M)
						M.loc=locate(M.x,8,7)
						.=..()
				From
					Enter(atom/movable/M)
						M.loc=locate(M.x,307,1)
						.=..()
			Konoha2Arena
				To
					Enter(atom/movable/M)
						M.loc=locate(18,288,20)
						.=..()
				From
					Enter(atom/movable/M)
						M.loc=locate(262,244,1)
						.=..()
			Konoha2Forest1
				To
					Enter(atom/movable/M)
						M.loc=locate(M.x,307,2)
						.=..()
				From
					Enter(atom/movable/M)
						M.loc=locate(M.x,8,1)
						.=..()
			Forest12Forest2
				To
					Enter(atom/movable/M)
						M.loc=locate(312,M.y,3)
						.=..()
				From
					Enter(atom/movable/M)
						M.loc=locate(13,M.y,2)
						.=..()
			Forest22Desert
				To
					Enter(atom/movable/M)
						M.loc=locate(M.x,307,4)
						.=..()
				From
					Enter(atom/movable/M)
						M.loc=locate(M.x,8,3)
						.=..()
			Desert2Suna
				To
					Enter(atom/movable/M)
						M.loc=locate(312,M.y,5)
						.=..()
				From
					Enter(atom/movable/M)
						M.loc=locate(13,M.y,4)
						.=..()
			*/
turf
	icon = 'turfs.dmi'
	shadow
		icon='inside shadow.dmi'
		layer=TURF_LAYER+1
		density=1
		shadow1
			icon_state="1"
		shadow2
			icon_state="2"
		shadow3
			icon_state="3"
		shadow4
			icon_state="4"
		shadow5
			icon_state="5"
		shadow6
			icon_state="6"
		shadow7
			icon_state="7"
		shadow8
			icon_state="8"
		shadow9
			icon_state="9"
		shadow10
			icon_state="10"
		shadow11
			icon_state="11"
		shadow12
			icon_state="12"
		shadow13
			icon_state="13"
		shadow14
			icon_state="14"
		shadow15
			icon_state="15"
		shadow16
			icon_state="16"
		shadow17
			icon_state="18"
	inside
		walls
			icon='walls.dmi'
			walls01
				icon_state="01"
			walls02
				icon_state="02"
			walls03
				icon_state="03"
			walls04
				icon_state="04"
			walls05
				icon_state="05"
			walls06
				icon_state="06"
			walls07
				icon_state="07"
			walls08
				icon_state="08"
			walls09
				icon_state="09"
			walls10
				icon_state="10"
			walls11
				icon_state="11"
			walls12
				icon_state="12"
			walls13
				icon_state="13"
			walls14
				icon_state="14"
			walls15
				icon_state="15"
			walls16
				icon_state="16"
			walls17
				icon_state="17"
			walls18
				icon_state="18"
			walls19
				icon_state="19"
			walls20
				icon_state="20"
			walls21
				icon_state="21"
		floors
			icon='floors.dmi'
			floors01
				icon_state="01"
			floors02
				icon_state="02"
			floors03
				icon_state="03"
			floors04
				icon_state="04"
			floors05
				icon_state="05"
			floors06
				icon_state="06"
			floors07
				icon_state="07"
			floors08
				icon_state="08"
			floors09
				icon_state="09"
			floors10
				icon_state="10"
			floors11
				icon_state="11"
		icon='inside.dmi'
		arenatile
			icon_state="arena tile"
		darkatile
			icon_state="small arena tile dark"
			density=1
		darkness
			icon_state="darkness"

	mistbuildings
		layer=29
		towers
			tower_top1s
				icon='1.dmi'
			tower_top2s
				icon='2.dmi'
			tower_bottoms
				icon='3.dmi'

		adminbuildings
			icon='admin.dmi'

		buildings
			icon='buildings.dmi'
			buildings00
				icon_state="00"
			buildings01
				icon_state="01"
			buildings02
				icon_state="02"
			buildings03
				icon_state="03"
			buildings04
				icon_state="04"
			buildings05
				icon_state="05"
			buildings06
				icon_state="06"
			buildings07
				icon_state="07"
			buildings08
				icon_state="08"
			buildings09
				icon_state="09"
			buildings10
				icon_state="10"
			buildings11
				icon_state="11"
			buildings12
				icon_state="12"
			buildings13
				icon_state="13"
			buildings14
				icon_state="14"
			buildings15
				icon_state="15"
			buildings16
				icon_state="16"
			buildings17
				icon_state="17"
			buildings18
				icon_state="18"
			buildings19
				icon_state="19"
			buildings20
				icon_state="20"
			buildings21
				icon_state="21"
			buildings22
				icon_state="22"
			buildings23
				icon_state="23"
			buildings24
				icon_state="24"
			buildings25
				icon_state="25"
			buildings26
				icon_state="26"
			buildings27
				icon_state="27"
			buildings28
				icon_state="28"
			buildings29
				icon_state="29"
			buildings30
				icon_state="30"
			buildings31
				icon_state="31"
			buildings32
				icon_state="32"
			buildings33
				icon_state="33"
			buildings34
				icon_state="34"
			buildings35
				icon_state="35"
			buildings36
				icon_state="36"
			buildings37
				icon_state="37"
			buildings38
				icon_state="38"
			buildings39
				icon_state="39"
			buildings40
				icon_state="40"
			buildings41
				icon_state="41"
			buildings42
				icon_state="42"
			buildings43
				icon_state="43"
			buildings44
				icon_state="44"
			buildings45
				icon_state="45"
			buildings46
				icon_state="46"
			buildings47
				icon_state="47"
			buildings48
				icon_state="48"
			buildings49
				icon_state="49"
			buildings50
				icon_state="50"
			buildings51
				icon_state="51"
			buildings52
				icon_state="52"
			buildings53
				icon_state="53"
			buildings54
				icon_state="54"
			buildings55
				icon_state="55"
			buildings56
				icon_state="56"
			buildings57
				icon_state="57"
			buildings58
				icon_state="59"
			buildings60
				icon_state="60"
			buildings61
				icon_state="61"
			buildings62
				icon_state="62"
			buildings63
				icon_state="63"
			buildings64
				icon_state="64"
			buildings65
				icon_state="65"
			buildings66
				icon_state="66"
			buildings67
				icon_state="67"
			buildings68
				icon_state="68"
			buildings69
				icon_state="69"
			buildings70
				icon_state="70"
			buildings71
				icon_state="71"
			buildings72
				icon_state="72"
			buildings73
				icon_state="73"
			buildings74
				icon_state="74"
			buildings75
				icon_state="75"
			buildings76
				icon_state="76"
			buildings77
				icon_state="77"
			buildings78
				icon_state="78"
			buildings79
				icon_state="79"
			buildings80
				icon_state="80"
			buildings81
				icon_state="81"
			buildings82
				icon_state="82"
			buildings83
				icon_state="83"
			buildings84
				icon_state="84"
			buildings85
				icon_state="85"
			buildings86
				icon_state="86"
			buildings87
				icon_state="87"
			buildings88
				icon_state="88"
			buildings89
				icon_state="89"
			buildings90
				icon_state="90"
			buildings91
				icon_state="91"
			buildings92
				icon_state="92"
			buildings93
				icon_state="93"
			buildings94
				icon_state="94"
			buildings95
				icon_state="95"
			buildings96
				icon_state="96"
			buildings97
				icon_state="97"
			buildings98
				icon_state="98"
	summit
		icon='summit.dmi'
		layer=TURF_LAYER+1
		summit01
			icon_state="01"
			density=1
		summit02
			icon_state="02"
			density=1
		summit03
			icon_state="03"
			density=1
		summit04
			icon_state="04"
			density=1
		summit05
			icon_state="05"
			density=1
		summit06
			icon_state="06"
			density=1
		summit07
			icon_state="07"
			density=1
		summit08
			icon_state="08"
			density=1
		summit09
			icon_state="09"
			density=1
		summit10
			icon_state="10"
			density=1
		summit11
			icon_state="11"
		summit12
			icon_state="12"
		summit13
			icon_state="13"
		summit14
			icon_state="14"
		summit15
			icon_state="15"
		summit16
			icon_state="16"
		summit17
			icon_state="17"
		summit18
			icon_state="18"
		summit19
			icon_state="19"
		summit20
			icon_state="20"
		summit21
			icon_state="21"
		summit22
			icon_state="22"
		summit23
			icon_state="23"
		summit24
			icon_state="24"
		summit25
			icon_state="25"
		summit26
			icon_state="26"
		summit27
			icon_state="27"
		summit28
			icon_state="28"
		summit29
			icon_state="29"
			density=1
		summit30
			icon_state="30"
		summit31
			icon_state="31"
		summit32
			icon_state="32"
			density=1
		summit33
			icon_state="33"
			density=1
		summit34
			icon_state="34"
			density=1
	bluewoodwall
		icon='blue wood walls.dmi'
		layer=TURF_LAYER+1
		density=1
		bluewall1
			icon_state="1"
		bluewall2
			icon_state="2"
		bluewall3
			icon_state="3"
		bluewall4
			icon_state="4"
		bluewall5
			icon_state="5"
		bluewall6
			icon_state="6"
		bluewall7
			icon_state="7"
		bluewall8
			icon_state="8"
		bluewall9
			icon_state="9"
		bluewall10
			icon_state="10"
		bluewall11
			icon_state="11"
		bluewall12
			icon_state="12"
		bluewall13
			icon_state="13"
		bluewall14
			icon_state="14"
		bluewall15
			icon_state="15"
	newsand
		icon='newsand.dmi'
		sand1
			icon_state="1"
			layer=TURF_LAYER+1
		sand2
			icon_state="2"
			layer=TURF_LAYER+1
		sand3
			icon_state="3"
			layer=TURF_LAYER+1
		sand4
			icon_state="4"
			layer=TURF_LAYER+1
		sand5
			icon_state="5"
			layer=TURF_LAYER+1
		sand6
			icon_state="6"
			layer=TURF_LAYER+1
		sand7
			icon_state="7"
		sand8
			icon_state="8"
			layer=TURF_LAYER+1
		sand9
			icon_state="9"
			layer=TURF_LAYER+1
		sand10
			icon_state="10"
			layer=TURF_LAYER+1
		sand11
			icon_state="11"
			layer=TURF_LAYER+1
		sand12
			icon_state="12"
			layer=TURF_LAYER+1
		sand13
			icon_state="13"
			layer=TURF_LAYER+1
		sand14
			icon_state="14"
			layer=TURF_LAYER+1
		sand15
			icon_state="15"
			layer=TURF_LAYER+1
		sand16
			icon_state="16"
			layer=TURF_LAYER+1
		sand17
			icon_state="17"
			layer=TURF_LAYER+1
		sand18
			icon_state="18"
			layer=TURF_LAYER+1
		sand19
			icon_state="19"
			layer=TURF_LAYER+1
		sand20
			icon_state="20"
			layer=TURF_LAYER+1
		sand21
			icon_state="21"
			layer=TURF_LAYER+1
		sand22
			icon_state="22"
			layer=TURF_LAYER+1
		sand23
			icon_state="23"
			layer=TURF_LAYER+1
		sand24
			icon_state="24"
			layer=TURF_LAYER+1
		sand25
			icon_state="25"
			layer=TURF_LAYER+1
		sand26
			icon_state="26"
			layer=TURF_LAYER+1
		sand27
			icon_state="27"
			layer=TURF_LAYER+1
		sand28
			icon_state="28"
			layer=TURF_LAYER+1
		sand29
			icon_state="29"
			layer=TURF_LAYER+1
		sand30
			icon_state="30"
			layer=TURF_LAYER+1
		sand31
			icon_state="31"
			layer=TURF_LAYER+1
		sand32
			icon_state="32"
			layer=TURF_LAYER+1
		sand33
			icon_state="33"
			layer=TURF_LAYER+1
		sand34
			icon_state="34"
			layer=TURF_LAYER+1
		sand35
			icon_state="35"
			layer=TURF_LAYER+1
		sand36
			icon_state="36"
			layer=TURF_LAYER+1
		sand37
			icon_state="37"
			layer=TURF_LAYER+1
		sand38
			icon_state="38"
			layer=TURF_LAYER+1
		sand39
			icon_state="39"
			layer=TURF_LAYER+1
		sand40
			icon_state="40"
			layer=TURF_LAYER+1
		sand41
			icon_state="41"
			layer=TURF_LAYER+1
		sand42
			icon_state="42"
			layer=TURF_LAYER+1
		sand43
			icon_state="43"
			layer=TURF_LAYER+1
		sand44
			icon_state="44"
			layer=TURF_LAYER+1
		sand45
			icon_state="45"
			layer=TURF_LAYER+1
		sand46
			icon_state="46"
			layer=TURF_LAYER+1
		sand47
			icon_state="47"
			layer=TURF_LAYER+1
		sand48
			icon_state="48"
			layer=TURF_LAYER+1
		sand49
			icon_state="49"
			layer=TURF_LAYER+1
		sand50
			icon_state="50"
			layer=TURF_LAYER+1
		sand51
			icon_state="51"
			layer=TURF_LAYER+1
		sand52
			icon_state="52"
			layer=TURF_LAYER+1
		sand53
			icon_state="53"
			layer=TURF_LAYER+1
		sand54
			icon_state="54"
			layer=TURF_LAYER+1
		sand55
			icon_state="55"
			layer=TURF_LAYER+1
		sand56
			icon_state="56"
			layer=TURF_LAYER+1
		sand57
			icon_state="57"
			layer=TURF_LAYER+1
		sand58
			icon_state="58"
			layer=TURF_LAYER+1
		sand59
			icon_state="59"
			layer=TURF_LAYER+1
		sand60
			icon_state="60"
			layer=TURF_LAYER+1
		sand61
			icon_state="61"
		sand62
			icon_state="62"
		sand63
			icon_state="63"
		sand64
			icon_state="64"
		sand65
			icon_state="65"
		sand66
			icon_state="66"
		sand67
			icon_state="67"
		sand68
			icon_state="68"
		sand69
			icon_state="69"
		sand70
			icon_state="70"
		sand71
			icon_state="71"
			layer=TURF_LAYER+1
		sand72
			icon_state="72"
			layer=TURF_LAYER+1
		sand73
			icon_state="73"
			layer=TURF_LAYER+1
		sand74
			icon_state="74"
			layer=TURF_LAYER+1
		sand75
			icon_state="75"
			layer=TURF_LAYER+1
		sand76
			icon_state="76"
			layer=TURF_LAYER+1
		sand77
			icon_state="77"
		sand78
			icon_state="78"
		sand79
			icon_state="79"
		sand80
			icon_state="80"
			layer=TURF_LAYER+1
		sand81
			icon_state="81"
			layer=TURF_LAYER+1
		sand82
			icon_state="82"
			layer=TURF_LAYER+1
		sand83
			icon_state="83"
		sand84
			icon_state="84"
		sand85
			icon_state="85"
		sand86
			icon_state="86"
		sand87
			icon_state="87"
		sand88
			icon_state="88"
		sand89
			icon_state="89"
		sand90
			icon_state="90"
		sand91
			icon_state="91"
			layer=TURF_LAYER+1
		sand92
			icon_state="92"
		sand93
			icon_state="93"
		sand94
			icon_state="94"
		sand95
			icon_state="95"
		sand96
			icon_state="96"
		sand97
			icon_state="97"
		sand98
			icon_state="98"
		sand99
			icon_state="99"
		sand100
			icon_state="100"
		sand101
			icon_state="101"
		sand102
			icon_state="102"
		sand103
			icon_state="103"
		sand104
			icon_state="104"
		sand105
			icon_state="105"
		sand106
			icon_state="106"
		sand107
			icon_state="107"
		sand108
			icon_state="108"
			layer=TURF_LAYER+1
		sand109
			icon_state="109"
			layer=TURF_LAYER+1
		sand110
			icon_state="110"
			layer=TURF_LAYER+1
		sand111
			icon_state="111"
			layer=TURF_LAYER+1
		sand112
			icon_state="112"
			layer=TURF_LAYER+1
		sand113
			icon_state="113"
			layer=TURF_LAYER+1
	woodblock
		icon='Roped off.dmi'
		layer=TURF_LAYER+1
		roped1
			icon_state="1"
		roped2
			icon_state="2"
			layer=15
		roped3
			icon_state="3"
			layer=15
		igate1
			icon_state="4"
			layer=15
		igate2
			icon_state="5"

			layer=15
		igate3
			icon_state="6"

			layer=15
		igate4
			icon_state="7"
			layer=15
		igate5
			icon_state="8"
	classroom
		icon='classroom2.dmi'
		floor
			icon_state="floor"
		floor2
			icon_state="floor2"
		floor3
			icon_state="floor3"
		floor4
			icon_state="floor4"
		wall
			density=1
			layer=TURF_LAYER+1
			icon_state="wall"
		wall2
			density=1
			layer=TURF_LAYER+1
			icon_state="wall2"
		wall3
			density=1
			layer=TURF_LAYER+1
			icon_state="wall3"
		wall4
			density=1
			layer=TURF_LAYER+1
			icon_state="wall4"
		wall5
			density=1
			layer=TURF_LAYER+1
			icon_state="wall5"
		wall6
			density=1
			layer=TURF_LAYER+1
			icon_state="wall6"
		wall7
			density=1
			layer=TURF_LAYER+1
			icon_state="wall7"
		wall8
			density=1
			layer=TURF_LAYER+1
			icon_state="wall8"
		wall9
			density=1
			layer=TURF_LAYER+1
			icon_state="wall9"
	konohatiles
		icon='konohabuildings2.dmi'
		layer=TURF_LAYER+1
		tile1
			icon_state="1"
		tile2
			icon_state="2"
		tile3
			icon_state="3"
		tile4
			icon_state="4"
		tile5
			icon_state="5"
		tile6
			icon_state="6"
		tile7
			icon_state="7"
		tile8
			icon_state="8"
		tile9
			icon_state="9"
		tile10
			icon_state="10"
		tile11
			icon_state="11"
		tile12
			icon_state="12"
		tile13
			icon_state="13"
		tile14
			icon_state="14"
		tile15
			icon_state="15"
		tile16
			icon_state="16"
		tile17
			icon_state="17"
		tile18
			icon_state="18"
		tile19
			icon_state="19"
		tile20
			icon_state="20"
		tile21
			icon_state="21"
		tile22
			icon_state="22"
		tile23
			icon_state="23"
		tile24
			icon_state="24"
		tile25
			icon_state="25"
		tile26
			icon_state="26"
		tile27
			icon_state="27"
			layer=15
		tile28
			icon_state="28"
			layer=15
		tile29
			icon_state="29"
			layer=15
		tile30
			icon_state="30"
			layer=15
		tile31
			icon_state="31"
			layer=15
		tile32
			icon_state="32"
			layer=15
		tile33
			icon_state="33"
			layer=15
		tile34
			icon_state="34"
			layer=15
		tile35
			icon_state="35"
			layer=15
		tile36
			icon_state="36"
			layer=15
		tile37
			icon_state="37"
			layer=15
		tile38
			icon_state="38"
			layer=15
		tile39
			icon_state="39"
			layer=15
		tile40
			icon_state="40"
			layer=15
		tile41
			icon_state="41"
			layer=15
		tile42
			icon_state="42"
			layer=15
		tile43
			icon_state="43"
		tile44
			icon_state="44"
		tile45
			icon_state="45"
		tile46
			icon_state="46"
		tile47
			icon_state="47"
		tile48
			icon_state="48"
		tile49
			icon_state="49"
		tile50
			icon_state="50"
		tile51
			icon_state="51"
		tile52
			icon_state="52"
		tile53
			icon_state="53"
		tile54
			icon_state="54"
		tile55
			icon_state="55"
		tile56
			icon_state="56"
		tile57
			icon_state="57"
		tile58
			icon_state="58"
		tile59
			icon_state="59"
		tile60
			icon_state="60"
		tile61
			icon_state="61"
		tile62
			icon_state="62"
		tile63
			icon_state="63"
		tile64
			icon_state="64"
		tile65
			icon_state="65"
		tile66
			icon_state="66"
		tile67
			icon_state="67"
		tile68
			icon_state="68"
		tile69
			icon_state="69"
		tile70
			icon_state="70"
		tile71
			icon_state="71"
		tile72
			icon_state="72"
		tile73
			icon_state="73"
			layer=15
		tile74
			icon_state="74"
			layer=15
		tile75
			icon_state="75"
			layer=15
		tile76
			icon_state="76"
			layer=15
		tile77
			icon_state="77"
			layer=15
		tile78
			icon_state="78"
			layer=15
		tile79
			icon_state="79"
			layer=15
		tile80
			icon_state="80"
		tile81
			icon_state="81"
			layer=15
		tile82
			icon_state="82"
			layer=15
		tile83
			icon_state="83"
			layer=15
		tile84
			icon_state="84"
		tile85
			icon_state="85"
		tile86
			icon_state="86"
		tile87
			icon_state="87"
		tile88
			icon_state="88"
		tile89
			icon_state="89"
		tile90
			icon_state="90"
		tile91
			icon_state="91"
		tile92
			icon_state="92"
		tile93
			icon_state="93"
		tile94
			icon_state="94"
		tile95
			icon_state="95"
		tile96
			icon_state="96"
		tile97
			icon_state="97"
		tile98
			icon_state="98"
		tile99
			icon_state="99"
		tile100
			icon_state="100"
			layer=15
		tile101
			icon_state="101"
			layer=15
		tile102
			icon_state="102"
			layer=15
		tile103
			icon_state="103"
			layer=15
		tile104
			icon_state="104"
		tile105
			icon_state="105"
		tile106
			icon_state="106"
		tile107
			icon_state="107"
		tile108
			icon_state="108"
		tile109
			icon_state="109"
		tile110
			icon_state="110"
		tile111
			icon_state="111"
		tile112
			icon_state="112"
		tile113
			icon_state="113"
		tile114
			icon_state="114"
		tile115
			icon_state="115"
		tile116
			icon_state="116"
		tile117
			icon_state="117"
		tile118
			icon_state="118"
		tile119
			icon_state="119"
		tile120
			icon_state="120"
		tile121
			icon_state="121"
		tile122
			icon_state="122"
		tile123
			icon_state="123"
		tile124
			icon_state="124"
		tile125
			icon_state="125"
		tile126
			icon_state="126"
		tile127
			icon_state="127"
		tile128
			icon_state="128"
		tile129
			icon_state="129"
		tile130
			icon_state="130"
		tile131
			icon_state="131"
		tile132
			icon_state="132"
		tile133
			icon_state="133"
		tile134
			icon_state="134"
		tile135
			icon_state="135"
		tile136
			icon_state="136"
		tile137
			icon_state="137"
		tile138
			icon_state="138"
		tile139
			icon_state="139"
		tile140
			icon_state="140"
		tile141
			icon_state="141"
		tile142
			icon_state="142"
		tile143
			icon_state="143"
		tile144
			icon_state="144"
		tile145
			icon_state="145"
		tile146
			icon_state="146"
		tile147
			icon_state="147"
		tile148
			icon_state="148"
		tile149
			icon_state="149"
		tile150
			icon_state="150"
		tile151
			icon_state="151"
		tile152
			icon_state="152"
		tile153
			icon_state="153"
		tile154
			icon_state="154"
		tile155
			icon_state="155"
		tile156
			icon_state="156"
		tile157
			icon_state="157"
		tile158
			icon_state="158"
		tile159
			icon_state="159"
		tile160
			icon_state="160"
		tile161
			icon_state="161"
		tile162
			icon_state="162"
		tile163
			icon_state="163"
		tile164
			icon_state="164"









	cliff
		icon='cliff.dmi'
		layer=TURF_LAYER+1
		density = 1
		cliff=1
		cliff1
			icon_state="1"
		cliff2
			icon_state="2"
		cliff3
			density=0
			icon_state="3"
		cliff4
			icon_state="4"
		cliff5
			icon_state="5"
		cliff6
			icon_state="6"
		cliff7
			icon_state="7"
		cliff8
			icon_state="8"
		cliff9
			icon_state="9"
		cliff10
			icon_state="10"
		cliff11
			icon_state="11"
		cliff12
			icon_state="12"
		cliff13
			icon_state="13"
		cliff14
			icon_state="14"
		cliff15
			icon_state="15"
		cliff16
			icon_state="16"
		cliff17
			icon_state="17"
		cliff18
			icon_state="18"
		cliff19
			icon_state="19"
		cliff20
			icon_state="20"
		cliff21
			icon_state="21"
		cliff22
			icon_state="22"
		cliff23
			icon_state="23"
		cliff24
			icon_state="24"
		cliff25
			icon_state="25"
		cliff26
			icon_state="26"
		cliff27
			icon_state="27"
		cliff28
			icon_state="28"
		cliff29
			icon_state="29"
		cliff30
			icon_state="30"
			density=1
		cliff31
			icon_state="31"
			density=1
		cliff32
			icon_state="32"
		cliff33
			icon_state="33"
		cliff34
			icon_state="34"
		cliff35
			icon_state="35"
		cliff36
			icon_state="36"
		cliff37
			icon_state="37"
		cliff38
			icon_state="38"
			density=1
		cliff39
			icon_state="39"
			density=1
		cliff40
			icon_state="40"
			density=1
		cliff41
			icon_state="41"
			density=1
		cliff42
			icon_state="42"
			density=1
		cliff43
			icon_state="43"
		cliff44
			icon_state="44"
		cliff45
			icon_state="45"
		cliff46
			icon_state="46"
			density=1
		cliff47
			icon_state="47"
			density=1
		cliff48
			icon_state="48"
			density=1
		cliff49
			icon_state="49"
		cliff50
			icon_state="50"
		cliff51
			icon_state="51"
			layer=TURF_LAYER
			density = 0
		cliff52
			icon_state="52"
			density=1
		cliff53
			icon_state="53"
			density=1
		cliff54
			icon_state="54"
			density=1
		cliff55
			icon_state="55"
			density=1
		cliff56
			icon_state="56"
			density=1
	cliff2
		icon='turfs4.dmi'
		cliff=1
		layer=TURF_LAYER+1
		density = 1
		cliff33
			icon_state="33"
			layer=TURF_LAYER
		cliff34
			icon_state="34"
			layer=TURF_LAYER
		cliff35
			icon_state="35"
			layer=TURF_LAYER
		cliff42
			icon_state="42"
			layer=TURF_LAYER
		cliff44
			icon_state="44"
			layer=TURF_LAYER
		cliff51
			icon_state="51"
			layer=TURF_LAYER
		cliff52
			icon_state="52"
			layer=TURF_LAYER
		cliff53
			icon_state="53"
			layer=TURF_LAYER
		cliff69
			icon_state="69"
			layer=TURF_LAYER
		cliff70
			icon_state="70"
			layer=TURF_LAYER
		cliff71
			icon_state="71"
			layer=TURF_LAYER
		cliff72
			icon_state="72"
			layer=TURF_LAYER
		cliff78
			icon_state="78"
			layer=TURF_LAYER
		cliff79
			icon_state="79"
			layer=TURF_LAYER
		cliff80
			icon_state="80"
			layer=TURF_LAYER
		cliff81
			icon_state="81"
			layer=TURF_LAYER
		cliff87
			icon_state="87"
			layer=TURF_LAYER
		cliff88
			icon_state="88"
			layer=TURF_LAYER
		cliff89
			icon_state="89"
			layer=TURF_LAYER
		cliff90
			icon_state="90"
			layer=TURF_LAYER
		cliff96
			icon_state="96"
			layer=TURF_LAYER
		cliff97
			icon_state="97"
			layer=TURF_LAYER
		cliff98
			icon_state="98"
			layer=TURF_LAYER
		cliff99
			icon_state="99"
			layer=TURF_LAYER
		cliff1
			icon_state="1"
			layer=TURF_LAYER
		cliff2
			icon_state="2"
			layer=TURF_LAYER
		cliff3
			icon_state="3"
		cliff4
			icon_state="4"
		cliff5
			icon_state="5"
		cliff6
			icon_state="6"
		cliff7
			icon_state="7"
		cliff8
			icon_state="8"
			density=1
		cliff9
			icon_state="9"
		cliff10
			icon_state="10"
		cliff11
			icon_state="11"
			density=1
		cliff12
			icon_state="12"
			density=1
		cliff13
			icon_state="13"
			density=1
		cliff14
			icon_state="14"
			density=1
		cliff15
			icon_state="15"
			density=1
		cliff16
			icon_state="16"
			density=1
		cliff17
			icon_state="17"
			density=1
		cliff18
			icon_state="18"
			density=1
		cliff19
			icon_state="19"
			density=1
		cliff20
			icon_state="20"
		cliff21
			icon_state="21"
			density=1
		cliff22
			icon_state="22"
			density=1
		cliff23
			icon_state="23"
		cliff24
			icon_state="24"
		cliff25
			icon_state="25"
		cliff26
			icon_state="26"
			layer=TURF_LAYER
		cliff27
			icon_state="27"
			layer=TURF_LAYER
		cliff28
			icon_state="28"
			layer=TURF_LAYER
		cliff29
			icon_state="29"
			layer=TURF_LAYER
		cliff30
			icon_state="30"
			layer=TURF_LAYER
		cliff31
			icon_state="31"
			layer=TURF_LAYER
	ground
		icon='Ground.dmi'
		density=0
		dirt2
			icon_state="dirt2"
		path
			icon_state="path"
		path2
			icon_state="path2"
		path3
			icon_state="path3"
		path4
			icon_state="path4"
		path5
			icon_state="path5"
		path6
			icon_state="path6"
		path7
			icon_state="path7"
		path8
			icon_state="path8"
		path9
			icon_state="path9"
		path10
			icon_state="path10"
		path11
			icon_state="path11"
		path12
			icon_state="path12"
		path13
			icon_state="path13"
		stones
			icon_state="stones"
	Konoha_gate
		density=1
		layer=TURF_LAYER+1
		icon='wall.dmi'
		wall1
			icon_state="01"
		wall2
			icon_state="02"
		wall3
			icon_state="03"
		wall4
			icon_state="04"
		wall5
			icon_state="05"
		wall6
			icon_state="06"
		wall7
			icon_state="07"
		wall8
			icon_state="08"
		wall9
			icon_state="09"
		wall10
			icon_state="10"
		wall11
			icon_state="11"
		wall12
			icon_state="12"

	konoha_houses
		icon='turfs sven.dmi'
		layer=TURF_LAYER+1
		Green_house
			icon_state="Green house"
		Green_house2
			icon_state="Green house2"
		Green_house3
			icon_state="Green house3"
		Green_house4
			icon_state="Green house4"
		Yellow_house
			icon_state="Yellow house"
		Blue_house
			icon_state="Blue house"
		Blue_house1
			icon_state="Blue house1"
		Blue_house2
			icon_state="Blue house2"
		Blue_house3
			icon_state="Blue house3"
		wall4
			icon_state="wall4"
		wall5
			icon_state="wall5"
		wall6
			icon_state="wall6"
		Green_house5
			icon_state="Green house5"
		Green_house6
			icon_state="Green house6"
		Green_house7
			icon_state="Green house7"
		door1
			icon_state="door1"
		Green_house8
			icon_state="Green house8"
		Green_house9
			icon_state="Green house9"
		Green_house10
			icon_state="Green house10"
		Yellow_house2
			icon_state="Yellow house2"
		Blue_house4
			icon_state="Blue house4"
		Blue_house5
			icon_state="Blue house5"
		Blue_house6
			icon_state="Blue house6"
		Blue_house7
			icon_state="Blue house7"
		wall1
			icon_state="wall1"
		wall2
			icon_state="wall2"
		wall3
			icon_state="wall3"
		Green_house11
			icon_state="Green house11"
		Green_house12
			icon_state="Green house12"
		Green_house13
			icon_state="Green house13"
		Green_house14
			icon_state="Green house14"
		Green_house15
			icon_state="Green house15"
		building
			icon_state="building"
		Yellow_house3
			icon_state="Yellow house3"
		Blue_house8
			icon_state="Blue house8"
		Blue_house9
			icon_state="Blue house9"
		Blue_house10
			icon_state="Blue house10"
		Blue_house11
			icon_state="Blue house11"
		wall7
			icon_state="wall7"
		wall8
			icon_state="wall8"
		wall9
			icon_state="wall9"
		Green_house16
			icon_state="Green house16"
		Green_house17
			icon_state="Green house17"
		Green_house18
			icon_state="Green house18"
		Green_house19
			icon_state="Green house19"
		Green_house20
			icon_state="Green house20"
		Green_house21
			icon_state="Green house21"
		Red_house
			icon_state="Red house"
		Blue_house12
			icon_state="Blue house12"
		Blue_house13
			icon_state="Blue house13"
		Blue_house14
			icon_state="Blue house14"
		Blue_house15
			icon_state="Blue house15"
		Green_house22
			icon_state="Green house22"
		Green_house23
			icon_state="Green house23"
		Green_house24
			icon_state="Green house24"
		White_wall
			icon_state="White wall"
		door2
			icon_state="door2"
		White_wall2
			icon_state="White wall2"
		Re_house2
			icon_state="Re house2"
		White_wall3
			icon_state="White wall3"
		White_wall4
			icon_state="White wall4"
		White_wall5
			icon_state="White wall5"
		Brown_house
			icon_state="Brown house"
		Brown_house2
			icon_state="Brown house2"
		Brown_house3
			icon_state="Brown house3"
		Brown_house4
			icon_state="Brown house4"
		Brown_house5
			icon_state="Brown house5"
		Brown_house6
			icon_state="Brown house6"
		Gray_building
			icon_state="Gray building"
		Gray_buildling1
			icon_state="Gray buildling1"
		Gray_building2
			icon_state="Gray building2"
		Brown_house7
			icon_state="Brown house7"
		Brown_house9
			icon_state="Brown house9"
		Brown_house8
			icon_state="Brown house8"
		Gray_buildling3
			icon_state="Gray buildling3"
		Gray_building4
			icon_state="Gray building4"
		Gray_building5
			icon_state="Gray building5"
		White_wall_4
			icon_state="White wall 4"
		Building_10
			icon_state="Building 10"
		Building_11
			icon_state="Building 11"
		Building_12
			icon_state="Building 12"
		Building_13
			icon_state="Building 13"
		Building_14
			icon_state="Building 14"
		Building_15
			icon_state="Building 15"
		Gray_building1
			icon_state="Gray building1"
		Building_16
			icon_state="Building 16"
		Building_17
			icon_state="Building 17"
		Building_18
			icon_state="Building 18"
		Building_19
			icon_state="Building 19"
		Building_20
			icon_state="Building 20"
		Building_21
			icon_state="Building 21"
		Building_22
			icon_state="Building 22"
		Building_23
			icon_state="Building 23"
		Building_24
			icon_state="Building 24"
		Building_25
			icon_state="Building 25"
		Building_26
			icon_state="Building 26"
		Building_27
			icon_state="Building 27"
		Building_28
			icon_state="Building 28"
		Building_29
			icon_state="Building 29"
		Wood_building1
			icon_state="Wood building1"
		Wood_building2
			icon_state="Wood building2"
		Wood_building3
			icon_state="Wood building3"
		Wood_building4
			icon_state="Wood building4"
		Wood_building5
			icon_state="Wood building5"
		Wood_building6
			icon_state="Wood building6"
		Building_30
			icon_state="Building 30"
		Building_31
			icon_state="Building 31"
		Building_32
			icon_state="Building 32"
		Building_33
			icon_state="Building 33"
		Buildling_34
			icon_state="Buildling 34"
		Building_35
			icon_state="Building 35"
		House1
			icon_state="House1"
		House2
			icon_state="House2"
		House3
			icon_state="House3"
		House4
			icon_state="House4"
		House5
			icon_state="House5"
		House6
			icon_state="House6"
		House7
			icon_state="House7"
		House8
			icon_state="House8"
		House9
			icon_state="House9"
		Door3
			icon_state="Door3"
		House10
			icon_state="House10"
		House11
			icon_state="House11"
		House12
			icon_state="House12"
		House13
			icon_state="House13"
		House14
			icon_state="House14"
		House15
			icon_state="House15"
		House17
			icon_state="House17"
		House18
			icon_state="House18"
		House2_1
			icon_state="House2 1"
		House2_3
			icon_state="House2 3"
		House2_4
			icon_state="House2 4"
		House2_99
			icon_state="House2 99"
		House2_6
			icon_state="House2 6"
		House2_7
			icon_state="House2 7"
		House2_8
			icon_state="House2 8"
		House2_9
			icon_state="House2 9"
		Building3_1
			icon_state="Building3 1"
		Building3_2
			icon_state="Building3 2"
		Building3_4
			icon_state="Building3 4"
		House2_10
			icon_state="House2 10"
		House2_11
			icon_state="House2 11"
		House2_12
			icon_state="House2 12"
		Building4_1
			icon_state="Building4 1"
		Building4_2
			icon_state="Building4 2"
		Building4_3
			icon_state="Building4 3"
		Building4_4
			icon_state="Building4 4"
		Building4_5
			icon_state="Building4 5"
		Building4_6
			icon_state="Building4 6"

	sandbuilding
		icon='sand buildings.dmi'
		layer=TURF_LAYER+1
		sandbuilding1
			icon_state="1"
		sandbuilding2
			icon_state="2"
		sandbuilding3
			icon_state="3"
		sandbuilding4
			icon_state="4"
		sandbuilding5
			icon_state="5"
		sandbuilding6
			icon_state="6"
		sandbuilding7
			icon_state="7"
		sandbuilding8
			icon_state="8"
		sandbuilding9
			icon_state="9"
		sandbuilding10
			icon_state="10"
		sandbuilding11
			icon_state="11"
		sandbuilding12
			icon_state="12"
		sandbuilding13
			icon_state="13"
		sandbuilding14
			icon_state="14"
		sandbuilding15
			icon_state="15"
		sandbuilding16
			icon_state="16"
		sandbuilding17
			icon_state="17"
		sandbuilding18
			icon_state="18"
		sandbuilding19
			icon_state="19"
		sandbuilding20
			icon_state="20"
		sandbuilding21
			icon_state="21"
		sandbuilding22
			icon_state="22"
		sandbuilding23
			icon_state="23"
		sandbuilding24
			icon_state="24"
		sandbuilding25
			icon_state="25"
		sandbuilding26
			icon_state="26"
		sandbuilding27
			icon_state="27"
		sandbuilding28
			icon_state="28"
		sandbuilding29
			icon_state="29"
		sandbuilding30
			icon_state="30"

	sandbuilding2
		icon='sand buildings 2.dmi'
		layer=TURF_LAYER+1
		sandbuilding1
			icon_state="1"
		sandbuilding2
			icon_state="2"
		sandbuilding3
			icon_state="3"
		sandbuilding4
			icon_state="4"
		sandbuilding5
			icon_state="5"
		sandbuilding6
			icon_state="6"
		sandbuilding7
			icon_state="7"
		sandbuilding8
			icon_state="8"
		sandbuilding9
			icon_state="9"
		sandbuilding10
			icon_state="10"
		sandbuilding11
			icon_state="11"
		sandbuilding12
			icon_state="12"
		sandbuilding13
			icon_state="13"
		sandbuilding14
			icon_state="14"
		sandbuilding15
			icon_state="15"
		sandbuilding16
			icon_state="16"
		sandbuilding17
			icon_state="17"
		sandbuilding18
			icon_state="18"
		sandbuilding19
			icon_state="19"
		sandbuilding20
			icon_state="20"
		sandbuilding21
			icon_state="21"
		sandbuilding22
			icon_state="22"
		sandbuilding23
			icon_state="23"
		sandbuilding24
			icon_state="24"
		sandbuilding25
			icon_state="25"
		sandbuilding26
			icon_state="26"
		sandbuilding27
			icon_state="27"
	sandbuilding3
		icon='turfs3.dmi'
		layer=TURF_LAYER+1
		sand1
			icon_state="1"
		sand2
			icon_state="2"
		sand3
			icon_state="3"
		sand4
			icon_state="4"
		sand5
			icon_state="5"
		sand6
			icon_state="6"
		sand7
			icon_state="7"
		sand8
			icon_state="8"
		sand9
			icon_state="9"
		sand10
			icon_state="10"
		sand11
			icon_state="11"
		sand12
			icon_state="12"
		sand13
			icon_state="13"
		sand14
			icon_state="14"
		sand15
			icon_state="15"
		sand16
			icon_state="16"
		sand17
			icon_state="17"
		sand18
			icon_state="18"
		sand19
			icon_state="19"
		sand20
			icon_state="20"
		sand26
			icon_state="26"
		sand27
			icon_state="27"
		sand28
			icon_state="28"
		sand30
			icon_state="30"
		sand31
			icon_state="31"
		sand32
			icon_state="32"
		sand34
			icon_state="34"
		sand35
			icon_state="35"
		sand36
			icon_state="36"
		sand38
			icon_state="38"
		sand39
			icon_state="39"
		sand40
			icon_state="40"
		sand41
			icon_state="41"
		sand42
			icon_state="42"
		sand43
			icon_state="43"
		sand44
			icon_state="44"
		sand46
			icon_state="46"
		sand47
			icon_state="47"
		sand48
			icon_state="48"
		sand49
			icon_state="49"
		sand51
			icon_state="51"
		sand52
			icon_state="52"
		sand53
			icon_state="53"
		sand55
			icon_state="55"
		sand56
			icon_state="56"
		sand59
			icon_state="59"

		sand60
			icon_state="60"
		sand61
			icon_state="61"
			layer=TURF_LAYER
		sand65
			icon_state="65"
			layer=TURF_LAYER
		sand69
			icon_state="69"


	grass
		icon='grass turfs.dmi'
		high_grass
			icon = 'turfs2.dmi'
			icon_state = "90"
			New()
				var/newState = pick(75; 193, 194, 195)
				icon_state = "[newState]"
				..()
		grasst44
			icon_state="44"
		grasst45
			icon_state="45"
		grasst46
			icon_state="46"
		grasst47
			icon_state="47"
		grasst48
			icon_state="48"
		grasst49
			icon_state="49"
		grasst53
			icon_state="53"
		grasst54
			icon_state="54"
		grasst55
			icon_state="55"
		grasst56
			icon_state="56"
		grasst60
			icon_state="60"
		grasst61
			icon_state="61"
		grasst62
			icon_state="62"
		grasst63
			icon_state="63"
		grasst64
			icon_state="64"
		grasst65
			icon_state="65"
		grasst66
			icon_state="66"
		grasst67
			icon_state="67"
		grasst68
			icon_state="68"
		grasst69
			icon_state="69"
		grasst70
			icon_state="70"
		tallgrass
			icon = 'ground.dmi'
			grass_over
				icon_state="grass over"
			tallgrass1
				icon_state="tallgrass1"
			tallgrass2
				icon_state="tallgrass2"
			tallgrass3
				icon_state="tallgrass3"
			tallgrass4
				icon_state="tallgrass4"
			tallgrass5
				icon_state="tallgrass5"
			tallgrass6
				icon_state="tallgrass6"
			tallgrass7
				icon_state="tallgrass7"
			tallgrass8
				icon_state="tallgrass8"
			tallgrass9
				icon_state="tallgrass9"
	olivewall
		icon='olive wood walls.dmi'
		layer=TURF_LAYER+1
		olive1
			icon_state="1"
		olive2
			icon_state="2"
		olive3
			icon_state="3"
	sand
		icon='sand turfs.dmi'
		sandt1
			icon_state="1"
			layer=20
		sandt2
			icon_state="2"
			layer=TURF_LAYER+1
		sandt3
			icon_state="3"
			layer=TURF_LAYER+1
		sandt4
			icon_state="4"
		sandt5
			icon_state="5"
		sandt6
			icon_state="6"
		sandt7
			icon_state="7"
			layer=TURF_LAYER+1
		sandt8
			icon_state="8"
			layer=TURF_LAYER+1
		sandt9
			icon_state="9"
			layer=TURF_LAYER+1
		sandt10
			icon_state="10"
		sandt11
			icon_state="11"
		sandt12
			icon_state="12"
		sandt13
			icon_state="13"
		sandt14
			icon_state="14"
		sandt15
			icon_state="15"
		sandt16
			icon_state="16"
		sandt17
			icon_state="17"
		sandt18
			icon_state="18"
		sandt19
			icon_state="19"
		sandt20
			icon_state="20"
		sandt21
			icon_state="21"
		sandt22
			icon_state="22"
		sandt23
			icon_state="23"
		sandt24
			icon_state="24"
		sandt25
			icon_state="25"
		sandt26
			icon_state="26"
			layer=TURF_LAYER+1
		sandt27
			icon_state="27"
			layer=TURF_LAYER+1
		sandt28
			icon_state="28"
			layer=TURF_LAYER+1
		sandt29
			icon_state="29"
			layer=TURF_LAYER+1
		sandt30
			icon_state="30"
			layer=TURF_LAYER+1
		sandt31
			icon_state="31"
			layer=TURF_LAYER+1
		sandt32
			icon_state="32"
			layer=TURF_LAYER+1
		sandt33
			icon_state="33"
			layer=TURF_LAYER+1
		sandt34
			icon_state="34"
			layer=TURF_LAYER+1
		sandt35
			icon_state="35"
			layer=TURF_LAYER+1
		sandt36
			icon_state="36"
			layer=TURF_LAYER+1
		sandt37
			icon_state="37"
			layer=TURF_LAYER+1
		sandt38
			icon_state="38"
			layer=TURF_LAYER+1
		sandt39
			icon_state="39"
			layer=TURF_LAYER+1
		sandt40
			icon_state="40"
			layer=TURF_LAYER+1
		sandt41
			icon_state="41"
			layer=TURF_LAYER+1
		sandt42
			icon_state="42"
			layer=TURF_LAYER+1
		sandt43
			icon_state="43"
			layer=TURF_LAYER+1
	sandmisc
		icon='turfs2.dmi'
		sand33
			icon_state="33"
		sand34
			icon_state="34"
		sand35
			icon_state="35"
		sand36
			icon_state="36"
		sand41
			icon_state="41"
		sand42
			icon_state="42"
		sand43
			icon_state="43"
		sand44
			icon_state="44"
		sand45
			icon_state="45"
		sand46
			icon_state="46"
		sand47
			icon_state="47"
		sand48
			icon_state="48"
		sand49
			icon_state="49"
		sand50
			icon_state="50"
		sand51
			icon_state="51"
		sand52
			icon_state="52"
		sand53
			icon_state="53"
		sand54
			icon_state="54"
		sand55
			icon_state="55"
		sand56
			icon_state="56"
		sand57
			icon_state="57"
		sand58
			icon_state="58"
		sand59
			icon_state="59"
		sand60
			icon_state="60"
		sand61
			icon_state="61"
		sand62
			icon_state="62"
		sand63
			icon_state="63"
		sand64
			icon_state="64"
		sand65
			icon_state="65"
		sand66
			icon_state="66"
		sand67
			icon_state="67"
		sand68
			icon_state="68"
		sand69
			icon_state="69"
		sand70
			icon_state="70"
		sand71
			icon_state="71"
		sand72
			icon_state="72"
		sand73
			icon_state="73"
		sand74
			icon_state="74"
		sand75
			icon_state="75"
		sand76
			icon_state="76"
		sand77
			icon_state="77"
		sand79
			icon_state="79"
		sand81
			icon_state="81"
		sand82
			icon_state="82"
		sand83
			icon_state="83"
		sand84
			icon_state="84"
		sand85
			icon_state="85"
		sand89
			icon_state="89"
		sand90
			icon_state="90"
		sand91
			icon_state="91"
		sand97
			icon_state="97"
		sand98
			icon_state="98"
		sand99
			icon_state="99"
		sand105
			icon_state="105"
		sand106
			icon_state="106"
		sand107
			icon_state="107"
		sand113
			icon_state="113"
		sand114
			icon_state="114"
		sand115
			icon_state="115"
		sand121
			icon_state="121"
		sand122
			icon_state="122"
		sand123
			icon_state="123"
		sand193
			icon_state="193"
		sand194
			icon_state="194"
		sand195
			icon_state="195"
		sand201
			icon_state="201"
		sand202
			icon_state="202"
		sand203
			icon_state="203"
		sand209
			icon_state="209"
		sand210
			icon_state="210"
		sand211
			icon_state="211"
		sand213
			icon_state="213"
		sand214
			icon_state="214"
		sand216
			icon_state="216"
		sand217
			icon_state="217"
		sand218
			icon_state="218"
		sand219
			icon_state="219"
		sand220
			icon_state="220"
		sand221
			icon_state="221"
		sand222
			icon_state="222"
		sand223
			icon_state="223"
		sand224
			icon_state="224"
		sand225
			icon_state="225"
		sand226
			icon_state="226"
		sand227
			icon_state="227"
		sand228
			icon_state="228"
		sand229
			icon_state="229"
		sand230
			icon_state="230"
		sand231
			icon_state="231"
		sand232
			icon_state="232"
		sand237
			icon_state="237"
		sand238
			icon_state="238"
		sand316
			icon_state="316"
		sand317
			icon_state="317"
		sand318
			icon_state="318"

	waterv2
		icon='twater.dmi'
		density=1
		water=1
		water1
			icon_state="1"
			layer=12
			density=1
		water2
			icon_state="2"
			layer=13
			density=1
		water3
			icon_state="3"
		water4
			icon_state="4"
		water5
			icon_state="5"
		water9
			icon_state="9"
		water10
			icon_state="10"
		water11
			icon_state="11"
		water14
			icon_state="14"
		water15
			icon_state="15"
		water16
			icon_state="16"
		water20
			icon_state="20"
		water6
			icon_state="6"
		water7
			icon_state="7"
		water8
			icon_state="8"
		water12
			icon_state="12"
		water13
			icon_state="13"
		water17
			icon_state="17"
		water18
			icon_state="18"
		water19
			icon_state="19"
		water21
			icon_state="21"
		water22
			icon_state="22"
		water23
			icon_state="23"


obj
	classroom
		icon='classroom2.dmi'
		board4
			icon_state="board4"
		board5
			icon_state="board5"
		board6
			icon_state="board6"
		board
			icon_state="board"
		board2
			icon_state="board2"
		board3
			icon_state="board3"
		table1
			icon_state="table1"
		table2
			icon_state="table2"
		table3
			icon_state="table3"
		chair
			icon_state="chair"
		big_chair
			icon_state="big chair"
		table_4
			icon_state="table 4"
		table_5
			icon_state="table 5"
		table_6
			icon_state="table 6"
		table_7
			icon_state="table 7"
		table_8
			icon_state="table 8"
		wire
			icon_state="wire"
		papers
			icon_state="papers"
	/*	mission_papers
			icon_state="papers"
			Click()
				var/player/p = usr
				if(p in view(2, src))
					var/string = "Are you sure you would like to do a mission?"
					if(p.interface.getYesNo(string))
						switch(input("Which rank?", text) in list ("D","C","B","A","S"))
							if("D")
								var/player/P = usr
								var/mission/M = findMission(/mission/d_rank/recycle)
								M.Start(P)
							if("C")
								p << "To be added"
							if("B")
								p << "To be added"
							if("A")
								p << "To be added"
							if("S")
								p << "To be added"*/
	konoha_poles_towels_signs
		layer=90
		icon='turfs sven.dmi'
		Pole
			icon_state="Pole"
			layer=15
		Red_towels
			icon_state="Red towels"
			New()
				var/obj/a = new/obj/Shadows/redTowelShadow
				a.loc = src.loc
				.=..()
		Pole_2
			icon_state="Pole 2"
			layer=15
			New()
				var/obj/a = new/obj/Shadows/poleShadow1
				a.loc = src.loc
				.=..()
		Pole_3
			icon_state="Pole 3"
			layer=15
		Wood_2
			layer=15
			icon_state="wood2"
		sign3
			icon_state="sign3"
		sign2
			icon_state="sign2"
		sign1
			icon_state="sign1"
			layer=15
		Pole5
			icon_state="Pole5"
			layer=15
		Yellow_towels
			icon_state="Yellow towels"
		Pink_towels
			icon_state="Pink towels"
		Pole6
			icon_state="Pole6"
			layer=15
			New()
				var/obj/a = new/obj/Shadows/poleShadow2
				a.loc = src.loc
				.=..()
		sign29
			icon_state="sign29"
		sign4
			icon_state="sign4"
		sign5
			icon_state="sign5"
			layer=15
		sign6
			icon_state="sign6"
			layer=15
			density=1
		wood1
			icon_state="wood"
			layer=15
			density=1
		Blue_towels
			icon_state="Blue towels"
		Green_towels
			icon_state="Green towels"
		line
			icon_state="line"
		Sign9
			icon_state="Sign9"
		sign8
			icon_state="sign8"
			layer=15
		sign7
			icon_state="sign7"
		Greenyellow_towels
			icon_state="Greenyellow towels"
		Light
			icon_state="Light"
		/*	New()
				var/obj/a = new/obj/Shadows/roundShadow
				a.loc = src.loc
				.=..()*/
		/*	New()
				light = new(src, 3, 0.9)*/
		Pole99
			icon_state="Pole99"
			layer=15
		Boat1
			icon_state="Boat1"
		Boat2
			icon_state="Boat2"
		Boat3
			icon_state="Boat3"
		Boat4
			icon_state="Boat4"
		Boat5
			icon_state="Boat5"
	powerlinesdeco
		icon='powerlines.dmi'
		layer=90
		deco1
			icon_state="1"
		deco2
			icon_state="2"
			layer=15
		deco3
			icon_state="3"
		deco4
			icon_state="4"
			layer=15
		deco5
			icon_state="5"
		deco6
			icon_state="6"
		deco7
			icon_state="7"
		deco8
			icon_state="8"
		deco9
			icon_state="9"
		deco10
			icon_state="10"
		deco11
			icon_state="11"
			layer=15
		deco12
			icon_state="12"
			layer=15
		deco13
			icon_state="13"
			New()
				var/obj/a = new/obj/Shadows/diagonal2
				a.loc = src.loc
				. = ..()
		deco14
			icon_state="14"
		deco15
			icon_state="15"
			layer=15
		deco16
			icon_state="16"
		deco17
			icon_state="17"
			layer=15
	decoration
		icon='outside decor.dmi'
		density=1
		decoration1
			icon_state="1"
		decoration2
			icon_state="2"
		decoration3
			icon_state="3"
		decoration4
			icon_state="4"

	pipes
		icon='pipes.dmi'
		pipes1
			icon_state="1"
		pipes2
			icon_state="2"
		pipes3
			icon_state="3"
		pipes4
			icon_state="4"
		pipes5
			icon_state="5"

	powerlines
		layer=90
		icon='powerlines.dmi'
		powerlines1
			icon_state="1"
		powerlines2
			icon_state="2"
			layer=15
		powerlines3
			icon_state="3"
			layer=15
		powerlines4
			icon_state="4"
		powerlines5
			icon_state="5"
		powerlines6
			icon_state="6"

	shadow
		icon='inside shadow.dmi'
		shadow1
			icon_state="1"
		shadow2
			icon_state="2"
		shadow3
			icon_state="3"
		shadow4
			icon_state="4"
		shadow5
			icon_state="5"
		shadow6
			icon_state="6"
		shadow7
			icon_state="7"
		shadow8
			icon_state="8"
		shadow9
			icon_state="9"
		shadow10
			icon_state="10"
		shadow11
			icon_state="11"
		shadow12
			icon_state="12"
		shadow13
			icon_state="13"
		shadow14
			icon_state="14"
		shadow15
			icon_state="15"
		shadow16
			icon_state="16"
			layer=16

	signs
		direction
			icon='ground.dmi'
			icon_state="direction"
	tree_rocks_plants
		icon='trees rocks plants.dmi'
		shrub1
			icon_state="shrub1"
		shrub2
			icon_state="shrub2"
		rock1
			icon_state="rock1"
		rock2
			icon_state="rock2"
			layer=10
		rock3
			icon_state="27"
		rock4
			icon_state="28"
			density=1
		grass_patch
			icon_state="grass patch"
		cactus
			icon = 'ground.dmi'
			icon_state="cactus"
			density=1
		flower4
			icon_state="flower4"
		flower1
			icon_state="flower1"
		flower2
			icon_state="flower2"
		flower3
			icon_state="flower3"
		tree
			layer=10
			tree1
				icon_state="1"
			tree2
				icon_state="2"
			tree3
				icon_state="3"
			tree4
				icon_state="4"
			tree5
				icon_state="5"
			tree6
				icon_state="6"
			tree7
				icon_state="7"
			tree8
				icon_state="8"
			tree9
				icon_state="9"
				density=1
			tree10
				icon_state="10"
			tree11
				icon_state="11"
			tree12
				icon_state="12"
				density=1
			tree13
				icon_state="13"
			tree14
				icon_state="14"
			tree15
				icon_state="15"
			tree16
				icon_state="16"
			tree17
				icon_state="17"
				density=1
			tree18
				icon_state="18"
				density=1
			tree32
				icon_state="32"
			tree33
				icon_state="33"
			tree34
				icon_state="34"
			tree35
				icon_state="35"
			tree36
				icon_state="36"
				density=1
			tree37
				density=1
				icon_state="37"
	tree2
		layer = 15
		icon='Tree.dmi'
		/*tree1
			icon_state="1"
		tree2
			icon_state="2"
		tree3
			icon_state="3"
		tree4
			icon_state="4"
		tree5
			icon_state="5"
		tree6
			icon_state="6"
		tree1_2
			icon_state="1-2"
		tree2_2
			icon_state="2-2"
		tree3_2
			icon_state="3-2"
		tree4_2
			icon_state="4-2"
		tree5_2
			icon_state="5-2"
		tree6_2
			icon_state="6-2"*/
	tree3
		layer = 15
		icon='Tree 2.dmi'
		/*tree1
			icon_state="1"
		tree2
			icon_state="2"
		tree3
			icon_state="3"
		tree4
			icon_state="4"
		tree5
			icon_state="5"
		tree6
			icon_state="6"
		tree7
			icon_state="7"
		tree8
			icon_state="8"
		tree9
			icon_state="9"
		tree10
			icon_state="10"
		tree11
			icon_state="11"
		tree12
			icon_state="12"*/
	Memorials
		icon='Konoha Memorials.dmi'
		blue1
			icon_state="1"
		blue2
			icon_state="2"
		blue3
			icon_state="3"
		blue4
			icon_state="4"
		blue5
			icon_state="5"
		blue6
			icon_state="6"
		blue7
			icon_state="7"
		blue8
			icon_state="8"
		blue9
			icon_state="9"
		blue10
			icon_state="10"
		Suna_tombstone
			icon_state="Suna"
		Konoha_tombstone
			icon_state="Konoha"
	Shadows
		benchShadow1
			icon = 'benchShadow.dmi'
			icon_state = "1"
			layer = TURF_LAYER + 0.5
			pixel_y = -4
		benchShadow2
			icon = 'benchShadow.dmi'
			icon_state = "2"
			layer = TURF_LAYER + 0.5
			pixel_y = -4
		benchShadow3
			icon = 'benchShadowEnd.dmi'
			layer = TURF_LAYER + 0.5
			pixel_y = -4
		garbageCanShadow
			icon = 'garbageShadow.dmi'
			layer = TURF_LAYER + 0.5
			pixel_y = -4
		woodBoxShadow
			icon = 'woodBoxShadow.dmi'
			layer = TURF_LAYER + 0.5
			pixel_y = -5
		redTowelShadow
			icon = 'poleShadows.dmi'
			icon_state = "towelShadow"
			pixel_x = 4
			pixel_y = -94
		poleShadow1
			icon = 'poleShadows.dmi'
			icon_state = "poleShadow1"
			pixel_y = -95
			pixel_x = 4
		poleShadow2
			icon = 'poleShadows.dmi'
			icon_state = "poleShadow2"
			pixel_x = 4
			pixel_y = -95
		roundShadow
			icon = 'poleShadows.dmi'
			icon_state = "roundShadow"
			pixel_x = 4
			pixel_y = -88
		diagonal1
			icon = 'poleShadows.dmi'
			icon_state = "diagonal1"
			pixel_x = 4
			pixel_y = -88
		diagonal2
			icon = 'poleShadows.dmi'
			icon_state = "diagonal2"
			pixel_x = 4
			pixel_y = -88
		diagonal3
			icon = 'poleShadows.dmi'
			icon_state = "diagonal3"
			pixel_x = 4
			pixel_y = -88
		diagonal4
			icon = 'poleShadows.dmi'
			icon_state = "diagonal4"
			pixel_x = 4
			pixel_y = -88

	StreetDeco
		density=1
		icon='Street Turfs.dmi'
		turf1
			icon_state="1"
			density=0
			New()
				var/obj/a = new/obj/Shadows/benchShadow1
				a.loc = src.loc
				.=..()
		turf2
			icon_state="2"
			density=0
			New()
				var/obj/a = new/obj/Shadows/benchShadow2
				a.loc = src.loc
				.=..()
		turf3
			icon_state="3"
			density=0
			New()
				var/obj/a = new/obj/Shadows/benchShadow3
				a.loc = src.loc
				.=..()
		turf4
			icon_state="4"
			density=0
		turf5
			icon_state="5"
			density=0
		turf6
			icon_state="6"
			density=0
		turf7
			icon_state="7"
			density=0
		turf8
			icon_state="8"
			density=0
		turf9
			icon_state="9"
			density=0
		turf10
			icon_state="10"
			New()
				var/obj/a = new/obj/Shadows/garbageCanShadow
				a.loc = src.loc
				.=..()
		turf11
			icon_state="11"
		turf12
			icon_state="12"
		turf13
			icon_state="13"
		turf14
			icon_state="14"
		turf15
			icon_state="15"
		turf16
			icon_state="16"
		turf17
			icon_state="17"
		turf18
			icon_state="18"
		turf19
			icon_state="19"
		turf20
			icon_state="20"
		turf21
			icon_state="21"
		turf22
			icon_state="22"
		turf23
			icon_state="23"
		turf24
			icon_state="24"
		turf25
			icon_state="25"
		turf26
			icon_state="26"
		turf27
			icon_state="27"
			New()
				var/obj/a = new/obj/Shadows/woodBoxShadow
				a.loc = src.loc
				.=..()
		turf28
			icon_state="28"
		turf29
			icon_state="29"
		turf30
			icon_state="30"
		turf31
			icon_state="31"

	fence
		icon='Fence.dmi'
		layer = OBJ_LAYER + 0.5
		fence1
			icon_state="1"
		fence2
			icon_state="2"
		fence3
			icon_state="3"
		fence4
			icon_state="4"
			layer=14
		fence5
			icon_state="5"
			layer=14
		fence6
			icon_state="6"
			layer=14
		fence7
			icon_state="7"
			layer=14
		fence8
			icon_state="8"
			layer=14
		fence9
			icon_state="9"
			layer=14
		fence10
			icon_state="10"
	watertank
		icon='watertank.dmi'
		watertank1
			icon_state="1"
		watertank2
			icon_state="2"
		watertank3
			icon_state="3"
		watertank4
			icon_state="4"
		watertank5
			icon_state="5"
		watertank6
			icon_state="6"
		watertank7
			icon_state="7"
		watertank8
			icon_state="8"
		watertank9
			icon_state="9"
		watertank10
			icon_state="10"
		watertank11
			icon_state="11"
		watertank12
			icon_state="12"
	Leaf
		density = 1
		Leaf_Faces
			//icon = 'test.png'
		Leaf_Door
			icon='Door1.dmi'
		Leaf_door2
			icon='Door2.dmi'
		Leaf_Door_C
			icon='Closed2.dmi'
			density=1
			Leaf_Door_C1
				icon_state="1"
			Leaf_Door_C2
				icon_state="2"
			Leaf_Door_C3
				icon_state="3"
			Leaf_Door_C4
				icon_state="4"
			Leaf_Door_C5
				icon_state="5"
		Leaf_Door2_C
			icon='Closed1.dmi'
			density=1
			Leaf_Door2_C1
				icon_state="1"
			Leaf_Door2_C2
				icon_state="2"
			Leaf_Door2_C3
				icon_state="3"
			Leaf_Door2_C4
				icon_state="4"
			Leaf_Door2_C5
				icon_state="5"
		Kage_Heads
			icon='HokageHeads.dmi'

obj
	houses
		layer=30
		hospital
			icon='hospital.dmi'
			icon_state = ""
		ramen_shop
			icon='ramen-shop.dmi'
			icon_state = ""
		tombstone
			icon='Hokage Memorial.dmi'
			layer=15
		konoha_administration
		suna_administration
		suna_admin
			icon='newsandadmin.dmi'
		konohatop
			icon='konohatop.dmi'
			layer = 30
			icon_state = ""
		konohabottom
			icon='konohabottom.dmi'
			icon_state = ""
		sandtop
			icon='sandtop.dmi'
			icon_state = ""
		sandbottom
			icon='sandbottom.dmi'
			icon_state = ""


turf/trees
	Bigtree
		density=0
		icon='BigTree.dmi'
		layer=15
	Tree
		density=0
		icon='Tree.dmi'
		layer=15

/*turf
	density
		density=1*/
/*	tsuki
		layer=116
		icon='tsuki.dmi'
		density=1
		layer=FLY_LAYER
		icon='Splash.dmi'
		density=1
	login2
		layer=FLY_LAYER
		icon='KonohaCreator.dmi'
		density=1
	login3
		layer=FLY_LAYER
		icon='SunaCreator.dmi'
		density=1
	login4
		layer=FLY_LAYER
		icon='KiriCreator.dmi'
		density=1*/
/*obj
	login
		layer = FLY_LAYER
		title
			icon='narutoX.dmi'
		buttons
			icon = 'title2.dmi'*/


obj/end
	New()
		. = ..()
		tag = "end"

obj
	NewBridge
		icon = 'bridgez.dmi'