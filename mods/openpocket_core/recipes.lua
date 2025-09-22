
-- Wood

minetest.register_craft({
	output = "openpocket_core:planks_1 4",
	recipe = {
		{"openpocket_core:wood_1"},
	}
})

minetest.register_craft({
	output = "openpocket_core:planks_2 4",
	recipe = {
		{"openpocket_core:wood_2"},
	}
})

minetest.register_craft({
	output = "openpocket_core:planks_3 4",
	recipe = {
		{"openpocket_core:wood_3"},
	}
})

minetest.register_craft({
	output = "openpocket_core:planks_4 4",
	recipe = {
		{"openpocket_core:wood_4"},
	}
})


-- Stick

minetest.register_craft({
	output = "openpocket_core:stick 4",
	recipe = {
		{"group:planks"},
               	{"group:planks"},
	}
})