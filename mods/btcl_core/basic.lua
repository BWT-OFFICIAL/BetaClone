-- Cracky

minetest.register_node("btcl_core:stone", {
	description = ("Stone"),
	tiles = {"default_stone.png"},
	groups = {cracky = 1}, -- Cracky Values are Reversed.
	drop = "btcl_core:cobblestone",
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("btcl_core:cobblestone", {
	description = ("Cobblestone"),
	tiles = {"default_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 1},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("btcl_core:moss_stone", {
	description = ("Cobblestone"),
	tiles = {"default_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 1},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("btcl_core:sandstone", {
	description = ("Sandstone"),
	tiles = {"btcl_sandstone_top.png", "btcl_sandstone_bottom.png", "btcl_sandstone_side.png"},
	groups = {cracky = 1}, -- Cracky Values are Reversed.
--	sounds = default.node_sound_stone_defaults(),
})

-- Crumbly

minetest.register_node("btcl_core:dirt", {
	description = ("Dirt"),
	tiles = {"default_dirt.png"},
	groups = {crumbly = 1}, -- Cracky Values are Reversed.
--	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("btcl_core:grass", {
	description = ("Grass"),
	tiles = {"default_grass.png", "default_dirt", "default_dirt.png^default_grass_side.png"},
	is_ground_content = false,
	groups = {cracky = 1},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("btcl_core:sand", {
	description = ("Sand"),
	tiles = {"default_sand.png"},
	groups = {crumbly = 1, falling_node = 1}, -- Cracky Values are Reversed.
--	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("btcl_core:gravel", {
	description = ("Gravel"),
	tiles = {"default_gravel.png"},
	groups = {crumbly = 1, falling_node = 1}, -- Cracky Values are Reversed.
--	sounds = default.node_sound_dirt_defaults(),
})