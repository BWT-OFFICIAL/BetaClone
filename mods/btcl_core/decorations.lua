-- Cracky

minetest.register_node("btcl_core:tall_grass", {
	drawtype = "plantlike",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	description = ("Grass"),
	tiles = {"btcl_tall_grass.png"},
	groups = {instant = 1}, -- Cracky Values are Reversed.
--	sounds = default.node_sound_stone_defaults(),
})