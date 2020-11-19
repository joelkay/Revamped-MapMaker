#define CHECK_TICK if(world.tick_usage > 80) sleep(world.tick_lag)

client
	var
		run_count

faction
	var
		village
		online_members



mob
	var
		pk
		dojo
		risk
		oppo
		gate
		faction = new/faction



	proc/CloseGates()

	proc/LocationEnter()




/mob/human/player



area
	var
		pkzone




