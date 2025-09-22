openpocket_core = {}



-- Cracky

minetest.register_node("openpocket_core:stone", {
	description = ("Stone"),
	tiles = {"default_stone.png"},
	groups = {cracky = 1, spawny = 1}, -- Cracky Values are Reversed.
	drop = "openpocket_core:cobblestone",
--	sounds = openpocket_core.node_sound_stone_defaults(),
})

minetest.register_node("openpocket_core:cobblestone", {
	description = ("Cobblestone"),
	tiles = {"default_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 1, spawny = 1},
--	sounds = openpocket_core.node_sound_stone_defaults(),
})

minetest.register_node("openpocket_core:moss_stone", {
	description = ("Cobblestone"),
	tiles = {"default_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 1, spawny = 1},
--	sounds = openpocket_core.node_sound_stone_defaults(),
})

minetest.register_node("openpocket_core:sandstone", {
	description = ("Sandstone"),
	tiles = {"mcl_core_sandstone_top.png", "mcl_core_sandstone_bottom.png", "mcl_core_sandstone_normal.png"},
	groups = {cracky = 1, spawny = 1}, -- Cracky Values are Reversed.
--	sounds = openpocket_core.node_sound_stone_defaults(),
})

-- Crumbly

minetest.register_node("openpocket_core:dirt", {
	description = ("Dirt"),
	tiles = {"default_dirt.png"},
	groups = {crumbly = 1, spawny = 1}, -- Cracky Values are Reversed.
--	sounds = openpocket_core.node_sound_dirt_defaults(),
})

minetest.register_node("openpocket_core:clay", {
	description = ("Clay"),
	tiles = {"default_clay.png"},
	groups = {crumbly = 1, spawny = 1}, -- Cracky Values are Reversed.
--	sounds = openpocket_core.node_sound_dirt_defaults(),
})

minetest.register_node("openpocket_core:grass", {
	description = ("Grass"),
	tiles = {"default_grass.png", "default_dirt", "default_dirt.png^default_grass_side.png"},
	is_ground_content = false,
	groups = {crumbly = 1, spawny = 1},
--	sounds = openpocket_core.node_sound_dirt_defaults(),
})

minetest.register_node("openpocket_core:sand", {
	description = ("Sand"),
	tiles = {"default_sand.png"},
	groups = {crumbly = 1, falling_node = 1, spawny = 1}, -- Cracky Values are Reversed.
--	sounds = openpocket_core.node_sound_dirt_defaults(),
})

minetest.register_node("openpocket_core:gravel", {
	description = ("Gravel"),
	tiles = {"default_gravel.png"},
	groups = {crumbly = 1, falling_node = 1, spawny = 1}, -- Cracky Values are Reversed.
--	sounds = openpocket_core.node_sound_dirt_defaults(),
})

minetest.register_node("openpocket_core:ocean_gravel", {
	description = ("Ocean Gravel"),
	tiles = {"default_gravel.png"},
        drop = "openpocket_core:gravel",
	groups = {crumbly = 1, falling_node = 1, spawny = 1}, -- Cracky Values are Reversed.
--	sounds = openpocket_core.node_sound_dirt_defaults(),
})