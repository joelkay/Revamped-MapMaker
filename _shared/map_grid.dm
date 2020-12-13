var
	map_coords[9][10]

obj
	mapinfo
		density=0
		var
			oX=1
			oY=1
			village_control = "Missing"
			can_capture = 1
			base_capture = 1

		New()
			. = ..()
			tag = "__mapinfo__[z]"
			name = "Map z[z] ([oX], [oY])"
			map_coords[oX][oY+1] = src

		proc
			CanLeave(mob/human/M)
				return 1
			CanEnter(mob/human/M)
				return 1
			PlayerEntered(mob/human/M)
			PlayerLeft(mob/human/M)

// Tag object for map locations
// Rather than setting the 'tag' variable on a turf,
// using an obj like this allows you to see tagged areas
// on the map more easily.
maptag
	icon = 'icons/maptag_marker.dmi'
	layer = 100

	// Maptags are objs (So they show on the map)
	parent_type = /obj

	// Make maptags completely invisible.
	// Since their sole purpose is to mark a location,
	// players don't need to ever interact with them.
	invisibility = 101

proc
	// Find the turf a maptag is on
	locate_tag(tag as text)
		// Find the maptag object
		var/maptag/tag_obj = locate(tag)

		// If the tag isn't there, something is obviously wrong
		// So crash the proc to get debug info
		if(!tag_obj)
			//alternatively disabling of broken warps without crashing
			usr << "Maptag not found: [tag]"
			return 0
			CRASH("Maptag not found: \"[tag]\"")

		// Return the turf the maptag object is on
		return tag_obj.loc

// TODO: Pointless entirely with stuff on a single map.
atom
	var
		gx=9000
		gy=9000
	proc
		Global_Coords()
			Get_Global_Coords()
			if(gx && gy)
				var/XY[2]
				XY[1]=gx
				XY[2]=gy
				return XY
		Get_Global_Coords()
			/*var/obj/mapinfo/Minfo =  locate("__mapinfo__[z]")
			if(Minfo)
				var/obj/mapinfo/M=Minfo
				gy = 100 - y + (M.oY) * 100
				gx = x + (M.oX - 1) * 100
			else
				gy = 0
				gx = 0*/
