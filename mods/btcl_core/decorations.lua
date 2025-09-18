-- Plants

minetest.register_node("btcl_core:tall_grass", {
	drawtype = "plantlike",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	description = ("Grass"),
	tiles = {"default_grass_5.png"},		
        inventory_image = "default_grass_5.png",
	groups = {instant = 1}, -- Cracky Values are Reversed.
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("btcl_core:mushroom_red", {
	drawtype = "plantlike",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	description = ("Red Mushroom"),
	tiles = {"flowers_mushroom_red.png"},		
        inventory_image = "flowers_mushroom_red.png",
	groups = {instant = 1}, -- Cracky Values are Reversed.
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("btcl_core:mushroom_brown", {
	drawtype = "plantlike",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	description = ("Brown Mushroom"),
	tiles = {"flowers_mushroom_brown.png"},		
        inventory_image = "flowers_mushroom_brown.png",
	groups = {instant = 1}, -- Cracky Values are Reversed.
--	sounds = default.node_sound_stone_defaults(),
})





-- Decorations Mapgen

	minetest.register_decoration({
		name = "btcl_core:tall_grass",
		deco_type = "simple",
		place_on = {"btcl_core:grass"},
		sidelen = 80,
		fill_ratio = 0.1,
		biomes = {"rainforest", "forest", "seasonal_forest"},
		y_max = 31000,
		y_min = 1,
		decoration = "btcl_core:tall_grass",
	})