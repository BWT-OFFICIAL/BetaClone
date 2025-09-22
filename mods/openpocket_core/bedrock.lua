--- Code Taken From Next Generation Bedrock
local openpocket_core = {}

openpocket_core.bedrock_layer = -64 -- This is the location of the bottom layer.
openpocket_core.bedrockthickness = -60 -- This is how many layers are on top of the bottom layer. NOTE: these layers are not just flat layers but are more randomized.
openpocket_core.bedrock_node = {name = "openpocket_core:bedrock"} -- This is the block used.

minetest.register_node("openpocket_core:bedrock", {
	description = ("Bedrock"),
	tiles = {"mcl_core_bedrock.png"},
	groups = {indestructible=1, not_in_creative_inventory=1, },
	is_ground_content = false,
})

minetest.register_on_generated(function(minp, maxp)
	if maxp.y >= openpocket_core.bedrock_layer and minp.y <= openpocket_core.bedrock_layer then
		local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
		local data = vm:get_data()
		local area = VoxelArea:new({MinEdge=emin, MaxEdge=emax})
		local c_bedrock = minetest.get_content_id("openpocket_core:bedrock")

		for x = minp.x, maxp.x do
			for z = minp.z, maxp.z do
				local p_pos = area:index(x, openpocket_core.bedrock_layer, z)
				data[p_pos] = c_bedrock
			end
		end

		vm:set_data(data)
		vm:calc_lighting()
		vm:update_liquids()
		vm:write_to_map()
	end
end)

minetest.register_ore({
	ore_type = "scatter",
	ore = "openpocket_core:bedrock",
	wherein = {"openpocket_core:stone", "air"},
	clust_scarcity = 2*2*2,
	clust_num_ores = 5,
	clust_size = 2,
	height_min = -64,
	height_max = -60
})