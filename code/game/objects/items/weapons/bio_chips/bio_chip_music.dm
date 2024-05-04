/obj/item/bio_chip/music
	name = "musical implant"
	desc = "Use this to play your theme music and strike fear into your enemies!"
	icon_state = "synth"
	origin_tech = "materials=2;biotech=3;programming=2" //please recommend things
	actions_types = list(/datum/action/item_action/hands_free/activate)
	implant_state = "implant-syndicate"
	activated = BIOCHIP_ACTIVATED_ACTIVE
	implant_data = /datum/implant_fluff/music

/obj/item/bio_chip/music/activate(user)
		ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		ui = new(user, src, "Instrument", "Internal Music Synthesizer")
		ui.set_autoupdate(FALSE)
		ui.open()

/obj/item/bio_chip_implanter/music
	name = "bio-chip implanter (music)"
	implant_type = /obj/item/bio_chip/music

/obj/item/bio_chip_case/music
	name = "bio-chip case - 'music'"
	desc = "A glass case containing a music bio-chip."
	implant_type = /obj/item/bio_chip/music
