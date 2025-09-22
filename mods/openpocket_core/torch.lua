-- default/torch.lua


local function on_flood(pos, oldnode, newnode)
	minetest.add_item(pos, ItemStack("openpocket_core:torch 1"))
	-- Remove the torch node
	return false
end

minetest.register_node("openpocket_core:torch", {
	description = ("Torch"),
	drawtype = "mesh",
	mesh = "torch_floor.obj",
	inventory_image = "default_torch_on_floor.png",
	wield_image = "default_torch_on_floor.png",
	tiles = {{
		    name = "default_torch_on_floor_animated.png",
		    animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 3.3}
	}},
	use_texture_alpha = "clip",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	liquids_pointable = false,
	light_source = 12,
	groups = {dig_immediate=3, attached_node=1, torch=1},
	drop = "openpocket_core:torch",
	selection_box = {
		type = "wallmounted",
		wall_bottom = {-1/8, -1/2, -1/8, 1/8, 2/16, 1/8},
	},
--	sounds = default.node_sound_wood_defaults(),
	on_place = function(itemstack, placer, pointed_thing)
		local under = pointed_thing.under
		local node = minetest.get_node(under)
		local def = minetest.registered_nodes[node.name]
		if def and def.on_rightclick and
			not (placer and placer:is_player() and
			placer:get_player_control().sneak) then
			return def.on_rightclick(under, node, placer, itemstack,
				pointed_thing) or itemstack
		end

		local above = pointed_thing.above
		local wdir = minetest.dir_to_wallmounted(vector.subtract(under, above))
		local fakestack = itemstack
		if wdir == 0 then
			fakestack:set_name("air") -- no cieling torch
		elseif wdir == 1 then
			fakestack:set_name("openpocket_core:torch")
		else
			fakestack:set_name("openpocket_core:torch_wall")
		end

		itemstack = minetest.item_place(fakestack, placer, pointed_thing, wdir)
		itemstack:set_name("openpocket_core:torch")

		return itemstack
	end,
	floodable = true,
	on_flood = on_flood,
	on_rotate = false
})

minetest.register_node("openpocket_core:torch_wall", {
	drawtype = "mesh",
	mesh = "torch_wall.obj",
	tiles = {{
		    name = "default_torch_on_floor_animated.png",
		    animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 3.3}
	}},
	use_texture_alpha = "clip",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	light_source = 12,
	groups = {dig_immediate=3, not_in_creative_inventory=1, attached_node=1, torch=1},
	drop = "openpocket_core:torch",
	selection_box = {
		type = "wallmounted",
		wall_side = {-1/2, -1/2, -1/8, -1/8, 1/8, 1/8},
	},
--	sounds = default.node_sound_wood_defaults(),
	floodable = true,
	on_flood = on_flood,
	on_rotate = false
})

minetest.register_node("openpocket_core:torch_ceiling", {
	drawtype = "mesh",
	mesh = "torch_ceiling.obj",
	tiles = {{
		    name = "default_torch_on_floor_animated.png",
		    animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 3.3}
	}},
	use_texture_alpha = "clip",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	light_source = 12,
	groups = {dig_immediate=3, not_in_creative_inventory=1, attached_node=1, torch=1},
	drop = "openpocket_core:torch",
	selection_box = {
		type = "wallmounted",
		wall_top = {-1/8, -1/16, -5/16, 1/8, 1/2, 1/8},
	},
--	sounds = default.node_sound_wood_defaults(),
	floodable = true,
	on_flood = on_flood,
	on_rotate = false
})

minetest.register_lbm({
	name = "openpocket_core:3dtorch",
	nodenames = {"openpocket_core:torch", "openpocket_core:floor", "openpocket_core:wall"},
	action = function(pos, node)
		if node.param2 == 0 then
			minetest.set_node(pos, {name = "openpocket_core:torch_ceiling",
				param2 = node.param2})
		elseif node.param2 == 1 then
			minetest.set_node(pos, {name = "openpocket_core:torch",
				param2 = node.param2})
		else
			minetest.set_node(pos, {name = "openpocket_core:torch_wall",
				param2 = node.param2})
		end
	end
})

minetest.register_craft({
	output = "openpocket_core:torch 4",
	recipe = {
		{"openpocket_core:coal"},
		{"openpocket_core:stick"},
	}
})