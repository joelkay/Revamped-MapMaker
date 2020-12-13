#define CHECK_TICK if(world.tick_usage > 80) sleep(world.tick_lag)
client
	var
		run_count
	proc
		Passive_Refresh()

faction
	var
		name
		village
		online_members
		mouse_icon

	proc
		AddMember()


var
	RP
	lp_mult
	LeafTreasury
	KiriTreasury
	SunaTreasury
	faction_mouse
	leaf_faction
	sand_faction
	mist_faction
	leafrep
	sandrep
	mistrep


mob
	var
		pk
		dojo
		risk
		oppo
		gate
		faction = /faction
		Fly
		body
		shopping
		canmove
		oldx
		oldy
		oldz
		cond
		money
		payz
		warlord
		LeafRecruit
		SunaRecruit
		KiriRecruit
		medic_leader
		warring
		curwound
		maxwound
		Respawn
		ko
		repgain
		incombo
		initialized
		firstname
		realname
		surname
		levelpoints
		build_info
		build_creating
		spectate
		clan
		area





	proc
		repgain()
		bodycheck()
		CloseGates()
		Respawn()
		LocationEnter()
		check_skill_tree()
		AddSkill()
		DoneCreate()
		Refresh_Squad_Verbs()
		Refresh_Faction_Verbs()
		RefreshSkillList()
		Refresh_Stat_Screen()
		refreshskills()



obj/gui/passives/gauge
	var/pindex

obj/items/equipable
	Zelko_Blitzkreig
		icon='faction_icons/zelko-blitzkreig-chuunin.dmi'
		icon_state="gui"


/mob/human/player


var/list
	gameLists
	online_admins
	admins
	warObjects
	chat_filter
	Names
	saves = /saves

proc
	scroll_drop(mob/M,location)
	chat_filter()
	Replace_All()
	Replace()
	Req2Level()
	faction_mouse()


world/proc
	Name_No_Good()
	Name_Correct()
	NameCheck()
	SaveMob()



saves
	proc/IsNameUsed()