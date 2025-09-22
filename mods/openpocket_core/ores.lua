minetest.register_node("openpocket_core:coal_ore", {
	description = ("Coal Ore"),
	tiles = {"default_stone.png^default_mineral_coal.png"},
	is_ground_content = false,
	groups = {cracky = 1},
	drop = "openpocket_core:coal",
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("openpocket_core:iron_ore", {
	description = ("Iron Ore"),
	tiles = {"default_stone.png^default_mineral_iron.png"},
	is_ground_content = false,
	groups = {cracky = 2},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("openpocket_core:iron_block", {
	description = ("Iron Block"),
	tiles = {"default_iron_block.png"},
	is_ground_content = false,
	groups = {cracky = 2},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("openpocket_core:gold_ore", {
	description = ("Gold Ore"),
	tiles = {"default_stone.png^default_mineral_gold.png"},
	is_ground_content = false,
	groups = {cracky = 3},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("openpocket_core:gold_block", {
	description = ("Gold Block"),
	tiles = {"default_gold_block.png"},
	is_ground_content = false,
	groups = {cracky = 3},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("openpocket_core:diamond_ore", {
	description = ("Diamond Ore"),
	tiles = {"default_stone.png^default_mineral_diamond.png"},
	is_ground_content = false,
	groups = {cracky = 1},
	drop = "openpocket_core:diamond",
--	sounds = default.node_sound_stone_defaults(),
})



-- Generation


minetest.register_ore({
	ore_type       = "scatter",
	ore            = "openpocket_core:coal_ore",
	wherein        = "openpocket_core:stone",
	clust_scarcity = 5 * 5 * 5,
	clust_num_ores = 5,
	clust_size     = 3,
	y_max          = 128,
	y_min          = -64,
})


minetest.register_ore({
	ore_type       = "scatter",
	ore            = "openpocket_core:iron_ore",
	wherein        = "openpocket_core:stone",
	clust_scarcity = 7 * 7 * 7,
	clust_num_ores = 5,
	clust_size     = 3,
	y_max          = 128,
	y_min          = -64,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "openpocket_core:gold_ore",
	wherein        = "openpocket_core:stone",
	clust_scarcity = 13 * 13 * 13,
	clust_num_ores = 5,
	clust_size     = 3,
	y_max          = -32,
	y_min          = -64,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "openpocket_core:diamond_ore",
	wherein        = "openpocket_core:stone",
	clust_scarcity = 16 * 16 * 16,
	clust_num_ores = 5,
	clust_size     = 3,
	y_max          = -50,
	y_min          = -64,
})