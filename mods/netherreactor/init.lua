minetest.register_alias("nether:rack", "netherreactor:netherrack")

local modpath = minetest.get_modpath("netherreactor")
local spire_schematic_path


spire_schematic_path = modpath .. "/schematics/spire_netherrack.mts"



local function spawn_spire(pos)
    local half_spire = 8  -- center offset for 17x17 schematic
    local place_pos = {
        x = pos.x - half_spire,
        y = pos.y - 3,  -- one block below reactor core
        z = pos.z - half_spire,
    }
    minetest.place_schematic(place_pos, spire_schematic_path, "0", nil, true)
end
-- Define the expected block pattern relative to reactor core (0,0,0)
local structure_pattern = {
    -- Bottom layer y = -1
    ["-1,-1,-1"] = "openpocket_core:gold_block",
    ["0,-1,-1"] = "openpocket_core:cobblestone",
    ["1,-1,-1"] = "openpocket_core:gold_block",
    ["-1,-1,0"] = "openpocket_core:cobblestone",
    ["0,-1,0"] = "openpocket_core:cobblestone",
    ["1,-1,0"] = "openpocket_core:cobblestone",
    ["-1,-1,1"] = "openpocket_core:gold_block",
    ["0,-1,1"] = "openpocket_core:cobblestone",
    ["1,-1,1"] = "openpocket_core:gold_block",

    -- Middle layer y = 0
    ["-1,0,-1"] = "openpocket_core:cobblestone",
    ["1,0,-1"] = "openpocket_core:cobblestone",
    ["-1,0,1"] = "openpocket_core:cobblestone",
    ["1,0,1"] = "openpocket_core:cobblestone",
    -- center (0,0,0) is reactor core, checked separately

    -- Top layer y = 1
    ["0,1,-1"] = "openpocket_core:cobblestone",
    ["-1,1,0"] = "openpocket_core:cobblestone",
    ["0,1,0"] = "openpocket_core:cobblestone",
    ["1,1,0"] = "openpocket_core:cobblestone",
    ["0,1,1"] = "openpocket_core:cobblestone",
}

-- Function to check if reactor is properly built
local function check_structure(pos)
    -- Check center core node
    local center_node = minetest.get_node(pos).name
    if center_node ~= "netherreactor:core" then
        return false
    end

    -- Check all other required blocks
    for key, expected_node in pairs(structure_pattern) do
        local coords = {}
        for coord in string.gmatch(key, "([^,]+)") do
            table.insert(coords, tonumber(coord))
        end
        local check_pos = vector.add(pos, {x=coords[1], y=coords[2], z=coords[3]})
        local node_name = minetest.get_node(check_pos).name
        if node_name ~= expected_node then
            return false
        end
    end

    return true
end


local cobble_layers = {
    {y = 1, positions = { {0,1,0}, {-1,1,0}, {1,1,0}, {0,1,-1}, {0,1,1} }},
    {y = 0, positions = { {-1,0,-1}, {1,0,-1}, {-1,0,1}, {1,0,1} }},
    {y = -1, positions = { {0,-1,-1}, {-1,-1,0}, {0,-1,0}, {1,-1,0}, {0,-1,1} }},
}

local gold_positions = {
    {-1,-1,-1}, {1,-1,-1}, {-1,-1,1}, {1,-1,1}
}


local function spawn_reactor_loot(pos, player_name)
    local loot_table = {
        "default:apple",
        "default:gold_lump",
        "default:mese_crystal_fragment",
        "default:cactus",
        "farming:melon_slice",
        "flowers:mushroom_brown",
    }

    local drops_per_batch = 10
    local total_duration = 30
    local interval = 3
    local iterations = total_duration / interval
    local count = 0

    local function drop_loot()
        if count >= iterations then
            return
        end
        for _ = 1, drops_per_batch do
            local function reactor_is_intact(pos)
                local node = minetest.get_node(pos)
                return node.name == "netherreactor:core_glowing"
            end
            if not reactor_is_intact(pos) then
                return
            end
            local item = loot_table[math.random(#loot_table)]
            local drop_pos = {
                x = pos.x + math.random(-3, 3) + 0.5,
                y = pos.y + 1,
                z = pos.z + math.random(-3, 3) + 0.5
            }
            minetest.add_item(drop_pos, item)
        end
        if minetest.get_modpath("mobs_skeletons") then
            local mob_pos = vector.add(pos, {x = math.random(-3, 3), y = 0, z = math.random(-3, 3)})
            minetest.add_entity(mob_pos, "mobs_skeletons:skeleton")
        else
            return
        end
        count = count + 1
        minetest.after(interval, drop_loot)
    end

    drop_loot()
end


-- Function to activate the reactor
local function activate_reactor(pos, player_name)
    -- Replace the reactor core with its glowing variant
    minetest.set_node(pos, {name = "netherreactor:core_glowing"})
    local function reactor_is_intact(pos)
        local node = minetest.get_node(pos)
        return node.name == "netherreactor:core_glowing"
    end
    minetest.set_timeofday(0.9)
    -- Function to transform a layer of cobblestone to glowing obsidian
    local function transform_layer(layer_index)
        if layer_index > #cobble_layers then
            -- After all cobblestone layers, transform gold blocks
            for _, offset in ipairs(gold_positions) do
                if not reactor_is_intact(pos) then
                    return
                end
                local gold_pos = vector.add(pos, {x=offset[1], y=offset[2], z=offset[3]})
                local node = minetest.get_node(gold_pos)
                minetest.set_node(gold_pos, {name = "netherreactor:glowing_obsidian"})
            end
            return
        end

        -- Transform current layer
        local layer = cobble_layers[layer_index]
        for _, offset in ipairs(layer.positions) do
            if not reactor_is_intact(pos) then
                return
            end
            local cobble_pos = vector.add(pos, {x=offset[1], y=offset[2], z=offset[3]})
            local node = minetest.get_node(cobble_pos)
            minetest.set_node(cobble_pos, {name = "netherreactor:glowing_obsidian"})
        end

        -- Schedule next layer transformation after 2 seconds
        minetest.after(2, function()
            transform_layer(layer_index + 1)
        end)
    end

    -- Start transforming layers
    transform_layer(1)
end

-- Shut down the reactor early
local function reactor_is_intact(pos)
    local node = minetest.get_node(pos)
    return node.name == "netherreactor:core_glowing"
end


local function cooldown_reactor(pos, player_name)
    local function reactor_is_intact(pos)
        local node = minetest.get_node(pos)
        return node.name == "netherreactor:core_glowing"
    end
    if not reactor_is_intact(pos) then
        return
    end
    local function replace_layer(y, with_scorched_core)
        -- Replace a 3x3 layer centered at pos + y
        local cx, cy, cz = pos.x, pos.y + y, pos.z

        for dx = -1, 1 do
            for dz = -1, 1 do
                local target_pos = {x = cx + dx, y = cy, z = cz + dz}
                if with_scorched_core and dx == 0 and dz == 0 then
                    -- center block in middle layer replaced by scorched obsidian
                    minetest.set_node(target_pos, {name = "netherreactor:core_burned"})
                else
                    minetest.set_node(target_pos, {name = "netherreactor:obsidian"})
                end
            end
        end
    end

    -- Schedule replacements with 2 second delay between layers
    minetest.after(0, function() replace_layer(1, false) end)      -- top layer 3x3 obsidian
    minetest.after(2, function() replace_layer(0, true) end)       -- middle layer, core scorched obsidian
    minetest.after(4, function() replace_layer(-1, false) end)     -- bottom layer obsidian
end

local spire_size = 17
local spire_height = 36-- (your spire height)
local shell_thickness = 6

local function is_in_wall(x, z)
    return (
        x < shell_thickness or x >= spire_size - shell_thickness or
        z < shell_thickness or z >= spire_size - shell_thickness
    )
end


local function crumble_spire(base_pos, pos, player_name)
    local function reactor_is_intact(pos)
        local node = minetest.get_node(pos)
        return node.name == "netherreactor:core_burned"
    end
    if not reactor_is_intact(pos) then
        return
    end

    local wall_blocks = {}

    -- Gather all wall blocks positions in the spire volume
    for y = 0, spire_height-1 do
        for x = 0, spire_size-1 do
            for z = 0, spire_size-1 do
                if is_in_wall(x, z) then
                    table.insert(wall_blocks, vector.add(base_pos, {x=x, y=y, z=z}))
                end
            end
        end
    end

    local total_wall_blocks = #wall_blocks
    local remove_count = math.floor(total_wall_blocks * 0.25)  -- 25% to remove

    -- Shuffle wall_blocks to pick random ones
    for i = total_wall_blocks, 2, -1 do
        local j = math.random(i)
        wall_blocks[i], wall_blocks[j] = wall_blocks[j], wall_blocks[i]
    end

    -- Remove (set to air) roughly 25% of the wall blocks
    for i = 1, remove_count do
        minetest.set_node(wall_blocks[i], {name = "air"})
    end
end

minetest.register_craft({
    output = "netherreactor:core",
    recipe = {
        {"default:steel_ingot", "default:diamond", "default:steel_ingot"},
        {"default:steel_ingot",  "default:diamond",  "default:steel_ingot"},
        {"default:steel_ingot", "default:diamond", "default:steel_ingot"},
    }
})

minetest.register_node("netherreactor:core_glowing", {
    description = "Glowing Reactor Core",
    tiles = {"reactor_core_glowing.png"},
    is_ground_content = false,
    light_source = 13,  -- maximum light level
    groups = {cracky = 1, level = 2},
--  sounds = default.node_sound_metal_defaults(),
    paramtype = "light",  -- allows light emission
    sunlight_propagates = false,
    walkable = true,
    drop = "netherreactor:core",  -- drops normal core when broken, optional
})

minetest.register_node("netherreactor:core_burned", {
    description = "Burnt Reactor Core",
    tiles = {"reactor_core_burnt.png"},
    is_ground_content = false,  -- maximum light level
    groups = {cracky = 1, level = 2},
--  sounds = default.node_sound_metal_defaults(),
    paramtype = "light",  -- allows light emission
    sunlight_propagates = false,
    walkable = true,

    drop = "netherreactor:core",  -- drops normal core when broken, optional
})

minetest.register_node("netherreactor:glowing_obsidian", {
    description = "Glowing Obsidian",
    tiles = {"obsidian_glowing.png"},
    is_ground_content = false,
    light_source = 13,  -- maximum light level
    groups = {cracky = 1, level = 2},
--  sounds = default.node_sound_stone_defaults(),
    paramtype = "light",  -- allows light emission
    sunlight_propagates = false,

    walkable = true, -- drops normal core when broken, optional
})

-- Add to your reactor core node definition:
minetest.register_node("netherreactor:core", {
    description = "Nether Reactor Core",
    tiles = {"reactor_core.png"},  -- your texture here
    is_ground_content = false,
    groups = {cracky = 3},   -- similar to iron block hardness
--  sounds = default.node_sound_metal_defaults(),
    paramtype = "none",   -- opaque, no transparency
    sunlight_propagates = false,
    walkable = true,
    -- full cube, so no need to specify nodebox (default cube)
    on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
        local player_name = clicker:get_player_name()
        if check_structure(pos) then
            minetest.chat_send_player(player_name, "Reactor Activated!")
            spawn_spire(pos)
            activate_reactor(pos, player_name)
            minetest.after(8, function()
                spawn_reactor_loot(pos, player_name)
            end)
            minetest.after(38, function()
                cooldown_reactor(pos, player_name)
            end)
            minetest.after(45, function()
                local spire_base = vector.subtract(pos, {x=8, y=1, z=8})
                crumble_spire(spire_base, pos, player_name)
            end)
            -- Your activation code here
        else
            minetest.chat_send_player(player_name, "Reactor is not properly built.")
        end
    end,
})

minetest.register_node("netherreactor:netherrack", {
	description = ("Netherrack"),
	tiles = {"mcl_nether_netherrack.png"},
	groups = {cracky = 1, spawny = 1}, -- Cracky Values are Reversed.
--	sounds = openpocket_core.node_sound_stone_defaults(),
})

minetest.register_node("netherreactor:obsidian", {
	description = ("Obsidian"),
	tiles = {"default_obsidian.png"},
	groups = {cracky = 3, spawny = 1}, -- Cracky Values are Reversed.
--	sounds = openpocket_core.node_sound_stone_defaults(),
})
