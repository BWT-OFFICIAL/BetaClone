minetest.register_node("openpocket_core:planks_1", {
	description = ("Wooden Planks"),
	tiles = {"default_wood.png"},
	is_ground_content = false,
	groups = {choppy = 1, spawny = 1, planks = 1},
--	sounds = openpocket_core.node_sound_wood_defaults(),
})

minetest.register_node("openpocket_core:planks_2", {
	description = ("Wooden Planks"),
	tiles = {"default_pine_wood.png"},
	is_ground_content = false,
	groups = {choppy = 1, spawny = 1, planks = 1},
--	sounds = openpocket_core.node_sound_wood_defaults(),
})

minetest.register_node("openpocket_core:planks_3", {
	description = ("Wooden Planks"),
	tiles = {"default_aspen_wood.png"},
	is_ground_content = false,
	groups = {choppy = 1, spawny = 1, planks = 1},
--	sounds = openpocket_core.node_sound_wood_defaults(),
})

minetest.register_node("openpocket_core:planks_4", {
	description = ("Wooden Planks"),
	tiles = {"default_jungle_wood.png"},
	is_ground_content = false,
	groups = {choppy = 1, spawny = 1, planks = 1},
--	sounds = openpocket_core.node_sound_wood_defaults(),
})

-- Trees are unnamed ingame for authenticity.

-- Oak, not actually the name in Beta

minetest.register_node("openpocket_core:wood_1", {
	description = ("Wood"),
	tiles = {"default_tree_top.png", "default_tree_top.png", "default_tree.png"},
	groups = {choppy = 1, spawny = 1}, -- Cracky Values are Reversed.
--	sounds = openpocket_core.node_sound_wood_defaults(),
})

minetest.register_node("openpocket_core:leaves_1", {
	description = ("Leaves"),
	drawtype = "allfaces_optional",
	tiles = {"default_leaves.png"},
	special_tiles = {"default_leaves_simple.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 1, leaf_decay = 1, spawny = 1},
})



-- Spruce, not actually the name in Beta

minetest.register_node("openpocket_core:wood_2", {
	description = ("Wood"),
	tiles = {"default_tree_top.png", "default_tree_top.png", "default_pine_tree.png"},
	groups = {choppy = 1, spawny = 1}, -- Cracky Values are Reversed.
--	sounds = openpocket_core.node_sound_wood_defaults(),
})

minetest.register_node("openpocket_core:leaves_2", {
	description = ("Leaves"),
	drawtype = "allfaces_optional",
	tiles = {"default_pine_needles.png"},
	special_tiles = {"default_pine_needles_simple.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 1, leaf_decay = 1, spawny = 1},
})

-- Birch, not actually the name in Beta

minetest.register_node("openpocket_core:wood_3", {
	description = ("Wood"),
	tiles = {"default_tree_top.png", "default_tree_top.png", "default_aspen_tree.png"},
	groups = {choppy = 1, spawny = 1}, -- Cracky Values are Reversed.
--	sounds = openpocket_core.node_sound_wood_defaults(),
})

minetest.register_node("openpocket_core:leaves_3", {
	description = ("Leaves"),
	drawtype = "allfaces_optional",
	tiles = {"default_aspen_leaves.png"},
	special_tiles = {"default_aspen_leaves_simple.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 1, leaf_decay = 1, spawny = 1},
})