minetest.register_tool("openpocket_core:wood_pickaxe", {
	description = ("Wooden Pickaxe"),
	inventory_image = "default_tool_woodpick.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[1]=1.60}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1, flammable = 2}
})

minetest.register_tool("openpocket_core:stone_pickaxe", {
	description = ("Stone Pickaxe"),
	inventory_image = "default_tool_stonepick.png",
	tool_capabilities = {
		full_punch_interval = 1.3,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[2]=2.0, [1]=1.00}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("openpocket_core:iron_pickaxe", {
	description = ("Iron Pickaxe"),
	inventory_image = "default_tool_steelpick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[3]=4.00, [2]=1.60, [1]=0.80}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("openpocket_core:gold_pickaxe", {
	description = ("Gold Pickaxe"),
	inventory_image = "default_tool_mesepick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[3]=2.4, [2]=1.2, [1]=0.60}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("openpocket_core:diamond_pickaxe", {
	description = ("Diamond Pickaxe"),
	inventory_image = "default_tool_diamondpick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[3]=2.0, [2]=1.0, [1]=0.50}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})




-- Shovels

minetest.register_tool("openpocket_core:wood_shovel", {
	description = ("Wooden Shovel"),
	inventory_image = "default_tool_woodshovel.png",
	wield_image = "default_tool_woodshovel.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[3]=3.00, [2]=1.60, [1]=0.60}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1, flammable = 2}
})

minetest.register_tool("openpocket_core:stone_shovel", {
	description = ("Stone Shovel"),
	inventory_image = "default_tool_stoneshovel.png",
	wield_image = "default_tool_stoneshovel.png",
	tool_capabilities = {
		full_punch_interval = 1.4,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[3]=1.80, [2]=1.20, [1]=0.50}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool("openpocket_core:iron_shovel", {
	description = ("Iron Shovel"),
	inventory_image = "default_tool_steelshovel.png",
	wield_image = "default_tool_steelshovel.png",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[3]=1.50, [2]=0.90, [1]=0.40}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool("openpocket_core:gold_shovel", {
	description = ("Gold Shovel"),
	inventory_image = "default_tool_meseshovel.png",
	wield_image = "default_tool_meseshovel.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			crumbly = {times={[3]=1.20, [2]=0.60, [1]=0.30}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool("openpocket_core:diamond_shovel", {
	description = ("Diamond Shovel"),
	inventory_image = "default_tool_diamondshovel.png",
	wield_image = "default_tool_diamondshovel.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[3]=1.10, [2]=0.50, [1]=0.30}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})



-- Axe

minetest.register_tool("openpocket_core:wood_axe", {
	description = ("Wooden Axe"),
	inventory_image = "default_tool_woodaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=0,
		groupcaps={
			choppy = {times={[2]=3.00, [1]=1.60}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1, flammable = 2}
})

minetest.register_tool("openpocket_core:stone_axe", {
	description = ("Stone Axe"),
	inventory_image = "default_tool_stoneaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			choppy={times={[3]=3.00, [2]=2.00, [1]=1.30}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool("openpocket_core:iron_axe", {
	description = ("Steel Axe"),
	inventory_image = "default_tool_steelaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[3]=2.50, [2]=1.40, [1]=1.00}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool("openpocket_core:gold_axe", {
	description = ("Mese Axe"),
	inventory_image = "default_tool_meseaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[3]=2.20, [2]=1.00, [1]=0.60}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool("openpocket_core:diamond_axe", {
	description = ("Diamond Axe"),
	inventory_image = "default_tool_diamondaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[3]=2.10, [2]=0.90, [1]=0.50}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})





local craft_ingreds = {
	wood = "group:planks",
	stone = "openpocket_core:stone",
	iron = "openpocket_core:iron_ingot",
	gold = "openpocket_core:gold_ingot",
	diamond = "openpocket_core:diamond"
}

for name, mat in pairs(craft_ingreds) do
	minetest.register_craft({
		output = "openpocket_core:" .. name .. "_pick",
		recipe = {
			{mat, mat, mat},
			{"", "openpocket_core:stick", ""},
			{"", "openpocket_core:stick", ""}
		}
	})

	minetest.register_craft({
		output = "openpocket_core:" .. name .. "_shovel",
		recipe = {
			{mat},
			{"openpocket_core:stick"},
			{"openpocket_core:stick"}
		}
	})

	minetest.register_craft({
		output = "openpocket_core:" .. name .. "_axe",
		recipe = {
			{mat, mat},
			{mat, "openpocket_core:stick"},
			{"", "openpocket_core:stick"}
		}
	})

	minetest.register_craft({
		output = "openpocket_core:" .. name .. "_axe",
		recipe = {
			{mat, mat},
			{"openpocket_core:stick", "mat"},
			{"openpocket_core:stick", ""}
		}
	})

	minetest.register_craft({
		output = "openpocket_core:" .. name .. "_sword",
		recipe = {
			{mat},
			{mat},
			{"openpocket_core:stick"}
		}
	})
end