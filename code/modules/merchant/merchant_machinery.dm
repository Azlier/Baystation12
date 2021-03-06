/obj/machinery/merchant_pad
	name = "Teleportation Pad"
	desc = "Place things here to trade."
	icon = 'icons/obj/stationobjs.dmi'
	icon_state = "tele0"
	anchored = 1
	density = 0

/obj/machinery/merchant_pad/proc/get_target()
	var/turf/T = get_turf(src)
	for(var/a in T)
		if(a == src || (!istype(a,/obj) && !istype(a,/mob/living)))
			continue
		return a

/obj/machinery/modular_computer/console/preset/civilian/merchant/install_programs()
	..()
	cpu.hard_drive.store_file(new/datum/computer_file/program/merchant())