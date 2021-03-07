mob
	var
		war = 0
		tmp
			has_war_verbs = 0
var
	WAR = 0
	leaf_in_war=0
	sand_in_war=0
	mist_in_war=0
	prizes = 0
	Score = list()
			/*
			list("Iwa" = 0,
				"Suna" = 0,
				"Konoha" = 0,
				"Kiri" = 0,
				"Kumo" = 0,
				"Oto" = 0,
				"Ame" = 0,)
			*/
proc
	Check_Lead()
		var/Leader
		var/Points=0
		for(var/A in Score)
			if(Score[A]==Points)
				Leader="[Leader],[A]"
				Points=Score[A]
			if(Score[A]>Points)
				Leader=A
				Points=Score[A]
		return list(Leader,Points)

	Show_Score()
		if(!WAR) return
		for(var/A in Score)
			for(var/mob/human/O in gameLists["mobiles"])
				if(O.client&&O.war)
					O<<"<span class='war'>[A]: [Score[A]]</span>"
	Start_War()
		if(WAR) return
		spawn()
			Score = list()
			world<<"<font size=+1><span class='war'>A War has been started!</span>"
			WAR = 1
			sleep(60*10*10)//5 minutes
			var/list/lead=Check_Lead()
/*			world<<"<font size=+1><span class='war'>25 minutes left in the War!"// [lead[1]]gakure is winning with [lead[2]] point(s).</span>"
			sleep(60*10*5)//5 minutes
			lead=Check_Lead()
			Show_Score()
			world<<"<font size=+1><span class='war'>20 minutes left in the War!"// [lead[1]]gakure is winning with [lead[2]] point(s).</span>"
			sleep(60*10*5)//5 minutes
			lead=Check_Lead()
			Show_Score()
			world<<"<font size=+1><span class='war'>15 minutes left in the War!"// [lead[1]]gakure is winning with [lead[2]] point(s).</span>"
			sleep(60*10*5)//5 minutes
			lead=Check_Lead()
			Show_Score()
			world<<"<font size=+1><span class='war'>10 minutes left in the War!"// [lead[1]]gakure is winning with [lead[2]] point(s).</span>"
			sleep(60*10*5)//5 minutes
			lead=Check_Lead()
			Show_Score()*/
			world<<"<font size=+1><span class='war'>5 minutes left in the War!"//[lead[1]]gakure is winning with [lead[2]] point(s).</span>"

			Overtime

			sleep(60*10*5)//5 minutes
			lead=Check_Lead()
			Show_Score()
			if(!findtext(lead[1],",") && lead[1])
				End_War()

			else
				//world<<"<font size=+1><span class='war'>The War is Over! No Experience will be given.</span>"
				world<<"<font size=+1><span class='war'>Overtime Period 5 Minutes has been added."
				goto Overtime

/*			WAR = 0

			for(var/mob/human/M in world)
				if(M.war)
					M.war=0
					M.warlord=0
					M.medic_leader=0
					var/obj/respawn_markers/respawn/Re=null
					for(var/obj/respawn_markers/respawn/R in world)
						if(R.ind==0)//if(M.faction:village=="Missing"&&R.ind==0 ) so that iwa has a place to spawn
							Re=R
						if(M.faction:village=="Konoha"&&R.ind==1)
							Re=R
						if(M.faction:village=="Suna"&&R.ind==2)
							Re=R
						if(M.faction:village=="Kiri"&&R.ind==3)
							Re=R
						if(M.faction:village=="Oto"&&R.ind == 4)
							Re=R
						if(M.faction:village=="Kumo"&&R.ind == 5)
							Re=R
					if(Re)
						M.x = Re.x
						M.y = Re.y
						M.z = Re.z
					else
						M.x=31
						M.y=74
						M.z=1*/

	End_War()
		var/list/lead=Check_Lead()
		world<<"<font size=+1><span class='war'>The War is Over! [lead[1]]gakure Wins with [lead[2]] point(s).</span>"

		for(var/mob/human/M in gameLists["mobiles"])
			if(M.war&&M.faction:village==lead[1])
				var/Money = rand(5000, 10000)
				M.body+=10000*lp_mult
				M.money+=Money
				M<<"You gained [10000*lp_mult] Level Points and [Money] dollars!"
				leaf_in_war=0
				sand_in_war=0
				mist_in_war=0
			if(M.LeafRecruit==1)
				if(M.cond=="After War")
					M.money+=M.payz
					LeafTreasury-=M.payz
			else if(M.SunaRecruit==1)
				if(M.cond=="After War")
					M.money+=M.payz
					SunaTreasury-=M.payz
			else if(M.KiriRecruit==1)
				if(M.cond=="After War")
					M.money+=M.payz
					KiriTreasury-=M.payz
				//M<<"Your village has gained some currensy!"
		if(lead[1] == "Konoha")
			prizes=LeafTreasury/10
			LeafTreasury+=prizes
		else if(lead[1] == "Suna")
			prizes=LeafTreasury/10
			LeafTreasury+=prizes
		else if(lead[1] == "Konoha")
			prizes=LeafTreasury/10
			LeafTreasury+=prizes
		WAR = 0

		for(var/mob/human/M in gameLists["mobiles"])
			if(M.war)
				M.war=0
				M.warlord=0
				M.medic_leader=0
				M.LeafRecruit=0
				M.SunaRecruit=0
				M.KiriRecruit=0
				var/obj/respawn_markers/respawn/Re=null
				for(var/obj/respawn_markers/respawn/R in world)
					if(R.ind==0)//if(M.faction:village=="Missing"&&R.ind==0 ) so that iwa has a place to spawn
						Re=R
					if(M.faction:village=="Konoha"&&R.ind==1)
						Re=R
					if(M.faction:village=="Suna"&&R.ind==2)
						Re=R
					if(M.faction:village=="Kiri"&&R.ind==3)
						Re=R
					if(M.faction:village=="Oto"&&R.ind == 4)
						Re=R
					if(M.faction:village=="Kumo"&&R.ind == 5)
						Re=R
				if(Re)
					M.x = Re.x
					M.y = Re.y
					M.z = Re.z
				else
					M.x=31
					M.y=74
					M.z=1




mob
	War
		verb

			Join_War()
				set category="War"
				winset(usr, "war_verb_join", "parent=")
				if(faction:village=="Missing"||!WAR||incombo) return
				if((usr.faction:village=="Konoha" && leaf_in_war==0) || (usr.faction:village=="Kiri" && mist_in_war==0) || (usr.faction:village=="Suna" && sand_in_war==0)) return
				if(usr.ko) return
				if(usr.shopping)
					usr.shopping=0
					usr.canmove=1
					usr.see_invisible=0
				usr.join_war()
				usr.verbs-=/mob/War/verb/Join_War

mob
	proc
		join_war()
			if(usr.shopping)
				usr.shopping=0
				usr.canmove=1
				usr.see_invisible=0
		/*	if(usr.ko)
				return*/
			usr.oldx=usr.x
			usr.oldy=usr.y
			usr.oldz=usr.z
			if(src.LeafRecruit==1 && src.faction:village == "Missing")
				src.loc=locate_tag("war_start_konoha")
			else if(src.SunaRecruit==1 && src.faction:village == "Missing")
				src.loc=locate_tag("war_start_suna")
			else if(src.KiriRecruit==1 && src.faction:village == "Missing")
				src.loc=locate_tag("war_start_kiri")
			else
				src.loc=locate_tag("war_start_[lowertext(src.faction:village)]")

			src.war=1
			for(var/mob/human/M in gameLists["mobiles"])
				if(M.war)
					M<<"<span class='war'>[name] has joined the War!</span>"

		Leave_War()
			if(incombo) return
			if(war)
				usr.war=0
				var/obj/Re=0
				for(var/obj/respawn_markers/respawn/R in world)
					if(R.ind==0)//if(faction:village=="Missing"&&R.ind==0)
						Re=R
					if(faction:village=="Konoha"&&R.ind==1)
						Re=R
					if(faction:village=="Suna"&&R.ind==2)
						Re=R
					if(faction:village=="Kiri"&&R.ind==3)
						Re=R
					if(faction:village=="Oto"&&R.ind == 4)
						Re=R
					if(faction:village=="Kumo"&&R.ind == 5)
						Re=R
				if(Re)
					src.x = Re.x
					src.y = Re.y
					src.z = Re.z
				else
					src.x=31
					src.y=74
					src.z=1



turf
	war
		Entered(mob/human/player/O)
			if(istype(O,/mob/human/player/))
				O.loc=locate_tag("war_map_[lowertext(O:faction:village)]")

turf
	WarSpawn
		Leaf
		Kiri
		Suna

obj
	WarTents
		icon='All Big WarTents.dmi'
		LeafTent
			icon_state="Leaf Front Int"
		KiriTent
			icon_state="Kiri Front Int"
		SunaTent
			icon='icons/Testingz.dmi'
			layer=15
			//icon_state="Suna Front Int"
