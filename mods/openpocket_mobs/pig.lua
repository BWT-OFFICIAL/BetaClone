

-- Pig 

mobs:register_mob("openpocket_mobs:pig", {
	type = "animal",
	runaway = true,
--	pathfinding = true,??
	hp_min = 10,
	hp_max = 10,
	armor = 90,
	collisionbox = {-0.45, -0.01, -0.45, 0.45, 0.865, 0.45},
	visual = "mesh",
	mesh = "mobs_mc_pig.b3d",
	textures = {
		{"mobs_mc_pig.png"}
	},
	visual_size = {x=2.5, y=2.5},
	makes_footstep_sound = true,
--	sounds = {random = "mobs_oerkki"},
	walk_velocity = 1,
	run_velocity = 3,
	jump = true,
	drops = {
		{name = "openpocket_mobs:porkchop_raw", chance = 1, min = 1, max = 3},
	},
	lava_damage = 4,
	fear_height = 4,
	view_range = 5,
	animation = {
		stand_speed = 40,
		walk_speed = 40,
		run_speed = 50,
		stand_start = 0,
		stand_end = 0,
		walk_start = 0,
		walk_end = 40,
		run_start = 0,
		run_end = 40,
	},
})

-- where to spawn

mobs:spawn({
	name = "openpocket_mobs:pig",
	nodes = {"openpocket_core:grass"},
	min_light = 7,
	chance = 6000,
	min_height = -60
})

-- spawn egg

mobs:register_egg("openpocket_mobs:pig", ("Spawn Pig"), "default_mossycobble.png", 1)
