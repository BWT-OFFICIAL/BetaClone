minetest.register_alias("mapgen_stone", "btcl_core:stone")
minetest.register_alias("mapgen_water_source", "btcl_core:water_source")


minetest.register_biome({
	name = "rainforest",
	node_top = "btcl_core:grass",
	depth_top = 1,
	node_filler = "btcl_core:dirt",
	depth_filler = 3,
	node_riverbed = "btcl_core:gravel",
	depth_riverbed = 2,
	node_dungeon = "btcl_core:cobblestone",
	node_dungeon_alt = "btcl_core:moss_stone",
	y_max = 31000,
	y_min = 3,
	heat_point = 100,
	humidity_point = 100,
})

minetest.register_biome({
	name = "seasonal_forest",
	node_top = "btcl_core:grass",
	depth_top = 1,
	node_filler = "btcl_core:dirt",
	depth_filler = 3,
	node_riverbed = "btcl_core:gravel",
	depth_riverbed = 2,
	node_dungeon = "btcl_core:cobblestone",
	node_dungeon_alt = "btcl_core:moss_stone",
	y_max = 31000,
	y_min = 3,
	heat_point = 100,
	humidity_point = 70,
})

minetest.register_biome({
	name = "forest",
	node_top = "btcl_core:grass",
	depth_top = 1,
	node_filler = "btcl_core:dirt",
	depth_filler = 3,
	node_riverbed = "btcl_core:gravel",
	depth_riverbed = 2,
	node_dungeon = "btcl_core:cobblestone",
	node_dungeon_alt = "btcl_core:moss_stone",
	y_max = 31000,
	y_min = 3,
	heat_point = 75,
	humidity_point = 50,
})

-- No Swampland

minetest.register_biome({
	name = "savanna",
	node_top = "btcl_core:grass",
	depth_top = 1,
	node_filler = "btcl_core:dirt",
	depth_filler = 3,
	node_riverbed = "btcl_core:gravel",
	depth_riverbed = 2,
	node_dungeon = "btcl_core:cobblestone",
	node_dungeon_alt = "btcl_core:moss_stone",
	y_max = 31000,
	y_min = 3,
	heat_point = 75,
	humidity_point = 10,
})

minetest.register_biome({
	name = "shrubland",
	node_top = "btcl_core:grass",
	depth_top = 1,
	node_filler = "btcl_core:dirt",
	depth_filler = 3,
	node_riverbed = "btcl_core:gravel",
	depth_riverbed = 2,
	node_dungeon = "btcl_core:cobblestone",
	node_dungeon_alt = "btcl_core:moss_stone",
	y_max = 31000,
	y_min = 3,
	heat_point = 75,
	humidity_point = 20,
})

minetest.register_biome({
	name = "taiga",
	node_top = "btcl_core:grass",
	depth_top = 1,
	node_filler = "btcl_core:dirt",
	depth_filler = 3,
	node_riverbed = "btcl_core:gravel",
	depth_riverbed = 2,
	node_dungeon = "btcl_core:cobblestone",
	node_dungeon_alt = "btcl_core:moss_stone",
	y_max = 31000,
	y_min = 3,
	heat_point = 28,
	humidity_point = 60,
})

minetest.register_biome({
	name = "desert",
	node_top = "btcl_core:sand",
	depth_top = 1,
	node_filler = "btcl_core:sandstone",
	depth_filler = 3,
	node_riverbed = "btcl_core:sand",
	depth_riverbed = 2,
	node_dungeon = "btcl_core:cobblestone",
	node_dungeon_alt = "btcl_core:moss_stone",
	y_max = 31000,
	y_min = 3,
	heat_point = 100,
	humidity_point = 10,
})

minetest.register_biome({
	name = "plains",
	node_top = "btcl_core:grass",
	depth_top = 1,
	node_filler = "btcl_core:dirt",
	depth_filler = 3,
	node_riverbed = "btcl_core:gravel",
	depth_riverbed = 2,
	node_dungeon = "btcl_core:cobblestone",
	node_dungeon_alt = "btcl_core:moss_stone",
	y_max = 31000,
	y_min = 3,
	heat_point = 100,
	humidity_point = 30,
})

minetest.register_biome({
	name = "tundra",
	node_top = "btcl_core:grass",
	depth_top = 1,
	node_filler = "btcl_core:dirt",
	depth_filler = 3,
	node_riverbed = "btcl_core:gravel",
	depth_riverbed = 2,
	node_dungeon = "btcl_core:cobblestone",
	node_dungeon_alt = "btcl_core:moss_stone",
	y_max = 31000,
	y_min = 3,
	heat_point = 25,
	humidity_point = 10,
})


-- Oceans

minetest.register_biome({
	name = "beach_sand",
	node_top = "btcl_core:sand",
	depth_top = 1,
	node_filler = "btcl_core:sandstone",
	depth_filler = 3,
	node_riverbed = "btcl_core:sand",
	depth_riverbed = 2,
	node_dungeon = "btcl_core:cobblestone",
	node_dungeon_alt = "btcl_core:moss_stone",
	y_max = 2,
	y_min = -2,
	heat_point = 49,
	humidity_point = 49,
})

minetest.register_biome({
	name = "gravel_sand",
	node_top = "btcl_core:gravel",
	depth_top = 1,
	node_filler = "btcl_core:gravel",
	depth_filler = 3,
	node_riverbed = "btcl_core:sand",
	depth_riverbed = 2,
	node_dungeon = "btcl_core:cobblestone",
	node_dungeon_alt = "btcl_core:moss_stone",
	y_max = 2,
	y_min = -2,
	heat_point = 50,
	humidity_point = 50,
})











-- Trees

minetest.register_decoration({
	name = "btcl_core:tree_1a",
	deco_type = "schematic",
	place_on = {"btcl_core:grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.024,
		scale = 0.015,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"rainforest", "forest", "seasonal_forest"},
	y_max = 31000,
	y_min = 0, 
	schematic = minetest.get_modpath("btcl_core") .. "/schematics/tree_1a.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})


