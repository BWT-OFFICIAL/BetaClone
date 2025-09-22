minetest.register_alias("mapgen_stone", "openpocket_core:stone")
minetest.register_alias("mapgen_water_source", "openpocket_core:water_source")


minetest.register_biome({
	name = "forest",
	node_top = "openpocket_core:grass",
	depth_top = 1,
	node_filler = "openpocket_core:dirt",
	depth_filler = 3,
	node_riverbed = "openpocket_core:gravel",
	depth_riverbed = 2,
	node_dungeon = "openpocket_core:cobblestone",
	node_dungeon_alt = "openpocket_core:moss_stone",
	y_max = 31000,
	y_min = 2,
	heat_point = 50,
	humidity_point = 50,
})


-- Oceans

minetest.register_biome({
	name = "beach_sand",
	node_top = "openpocket_core:sand",
	depth_top = 1,
	node_filler = "openpocket_core:sand",
	depth_filler = 3,
	node_riverbed = "openpocket_core:sand",
	depth_riverbed = 2,
	node_dungeon = "openpocket_core:cobblestone",
	node_dungeon_alt = "openpocket_core:moss_stone",
	y_max = 2,
	y_min = 1,
	heat_point = 90,
	humidity_point = 50,
})

minetest.register_biome({
	name = "beach_gravel",
	node_top = "openpocket_core:gravel",
	depth_top = 1,
	node_filler = "openpocket_core:gravel",
	depth_filler = 3,
	node_riverbed = "openpocket_core:gravel",
	depth_riverbed = 2,
	node_dungeon = "openpocket_core:cobblestone",
	node_dungeon_alt = "openpocket_core:moss_stone",
	y_max = 2,
	y_min = 1,
	heat_point = 25,
	humidity_point = 50,
})

minetest.register_biome({
	name = "beach_grass",
	node_top = "openpocket_core:grass",
	depth_top = 1,
	node_filler = "openpocket_core:dirt",
	depth_filler = 3,
	node_riverbed = "openpocket_core:dirt",
	depth_riverbed = 2,
	node_dungeon = "openpocket_core:cobblestone",
	node_dungeon_alt = "openpocket_core:moss_stone",
	y_max = 2,
	y_min = 1,
	heat_point = 75,
	humidity_point = 50,
})

minetest.register_biome({
	name = "ocean",
	node_top = "openpocket_core:ocean_gravel",
	depth_top = 1,
	node_filler = "openpocket_core:ocean_gravel",
	depth_filler = 3,
	node_riverbed = "openpocket_core:ocean_gravel",
	depth_riverbed = 2,
	node_dungeon = "openpocket_core:cobblestone",
	node_dungeon_alt = "openpocket_core:moss_stone",
	y_max = 0,
	y_min = -256,
	heat_point = 50,
	humidity_point = 50,
})

minetest.register_ore({
	ore_type        = "blob",
	ore             = "openpocket_core:clay",
	wherein         = {"openpocket_core:ocean_gravel"},
	clust_scarcity  = 8 * 8 * 8,
	clust_size      = 5,
	y_max           = 0,
	y_min           = -15,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = -316,
		octaves = 1,
		persist = 0.0
	},
})

minetest.register_ore({
	ore_type        = "blob",
	ore             = "openpocket_core:dirt",
	wherein         = {"openpocket_core:ocean_gravel"},
	clust_scarcity  = 8 * 8 * 8,
	clust_size      = 5,
	y_max           = 0,
	y_min           = -15,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = -317,
		octaves = 1,
		persist = 0.0
	},
})


minetest.register_ore({
	ore_type        = "blob",
	ore             = "openpocket_core:sand",
	wherein         = {"openpocket_core:ocean_gravel"},
	clust_scarcity  = 8 * 8 * 8,
	clust_size      = 5,
	y_max           = 0,
	y_min           = -15,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = -318,
		octaves = 1,
		persist = 0.0
	},
})







-- Trees

minetest.register_decoration({
	name = "openpocket_core:tree_1_a",
	deco_type = "schematic",
	place_on = {"openpocket_core:grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.024,
		scale = 0.015,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.65
	},
	biomes = {"rainforest", "forest", "seasonal_forest"},
        fill_ratio = 0.001,
	y_max = 31000,
	y_min = 0, 
	schematic = minetest.get_modpath("openpocket_core") .. "/schematics/tree_1_a.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	name = "openpocket_core:tree_3_a",
	deco_type = "schematic",
	place_on = {"openpocket_core:grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.024,
		scale = 0.015,
		spread = {x = 250, y = 250, z = 250},
		seed = 3,
		octaves = 3,
		persist = 0.65
	},
	biomes = {"rainforest", "forest", "seasonal_forest"},
        fill_ratio = 0.001,
	y_max = 31000,
	y_min = 0, 
	schematic = minetest.get_modpath("openpocket_core") .. "/schematics/tree_3_a.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})


