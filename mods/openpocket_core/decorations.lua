-- Plants

minetest.register_node("openpocket_core:tall_grass", {
	drawtype = "plantlike",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	description = ("Grass"),
	tiles = {"default_grass_5.png"},		
        inventory_image = "default_grass_5.png",
	groups = {dig_immediate = 1}, -- Cracky Values are Reversed.
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("openpocket_core:flower_1", {
	drawtype = "plantlike",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	description = ("Flower"),
	tiles = {"openpocket_flower_1.png"},		
        inventory_image = "openpocket_flower_1.png",
	groups = {dig_immediate = 1}, -- Cracky Values are Reversed.
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("openpocket_core:flower_2", {
	drawtype = "plantlike",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	description = ("Flower"),
	tiles = {"openpocket_flower_2.png"},		
        inventory_image = "openpocket_flower_2.png",
	groups = {dig_immediate = 1}, -- Cracky Values are Reversed.
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("openpocket_core:mushroom_red", {
	drawtype = "plantlike",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	description = ("Red Mushroom"),
	tiles = {"flowers_mushroom_red.png"},		
        inventory_image = "flowers_mushroom_red.png",
	groups = {dig_immediate = 1}, -- Cracky Values are Reversed.
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("openpocket_core:mushroom_brown", {
	drawtype = "plantlike",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	description = ("Brown Mushroom"),
	tiles = {"flowers_mushroom_brown.png"},		
        inventory_image = "flowers_mushroom_brown.png",
	groups = {dig_immediate = 1}, -- Cracky Values are Reversed.
--	sounds = default.node_sound_stone_defaults(),
})





-- Decorations Mapgen

	minetest.register_decoration({
		name = "openpocket_core:tall_grass",
		deco_type = "simple",
		place_on = {"openpocket_core:grass"},
		sidelen = 80,
		fill_ratio = 0.1,
		biomes = {"rainforest", "forest", "seasonal_forest"},
		y_max = 31000,
		y_min = 1,
		decoration = "openpocket_core:tall_grass",
	})

	minetest.register_decoration({
		name = "openpocket_core:flower_1",
		deco_type = "simple",
		place_on = {"openpocket_core:grass"},
		sidelen = 80,
		fill_ratio = 0.01,
		biomes = {"forest"},
		y_max = 31000,
		y_min = 1,
		decoration = "openpocket_core:flower_1",
	})

	minetest.register_decoration({
		name = "openpocket_core:flower_2",
		deco_type = "simple",
		place_on = {"openpocket_core:grass"},
		sidelen = 80,
		fill_ratio = 0.01,
		biomes = {"forest"},
		y_max = 31000,
		y_min = 1,
		decoration = "openpocket_core:flower_2",
	})