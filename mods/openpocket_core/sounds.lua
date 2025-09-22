openpocket_core.node_sound_defaults = {}

function openpocket_core.node_sound_defaults(tbl)
	tbl = tbl or {}
	tbl.footstep = tbl.footstep or
			{name = "", gain = 1.0}
	tbl.dug = tbl.dug or
			{name = "default_dug_node", gain = 0.25}
	tbl.place = tbl.place or
			{name = "default_place_node_hard", gain = 1.0}
	return tbl
end

function openpocket_core.node_sound_stone_defaults(tbl)
	tbl = tbl or {}
	tbl.footstep = tbl.footstep or
			{name = "default_hard_footstep", gain = 0.2}
	tbl.dug = tbl.dug or
			{name = "default_hard_footstep", gain = 1.0}
	openpocket_core.node_sound_defaults(tbl)
	return tbl
end

function openpocket_core.node_sound_dirt_defaults(tbl)
	tbl = tbl or {}
	tbl.footstep = tbl.footstep or
			{name = "default_dirt_footstep", gain = 0.25}
	tbl.dig = tbl.dig or
			{name = "default_dig_crumbly", gain = 0.4}
	tbl.dug = tbl.dug or
			{name = "default_dirt_footstep", gain = 1.0}
	tbl.place = tbl.place or
			{name = "default_place_node", gain = 1.0}
	openpocket_core.node_sound_defaults(tbl)
	return tbl
end

function openpocket_core.node_sound_wood_defaults(tbl)
	tbl = tbl or {}
	tbl.footstep = tbl.footstep or
			{name = "default_wood_footstep", gain = 0.15}
	tbl.dig = tbl.dig or
			{name = "default_dig_choppy", gain = 0.4}
	tbl.dug = tbl.dug or
			{name = "default_wood_footstep", gain = 1.0}
	openpocket_core.node_sound_defaults(tbl)
	return tbl
end