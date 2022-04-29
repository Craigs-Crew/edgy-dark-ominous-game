-- Garnet sub-biome

minetest.register_decoration({
    name = "blocks:cobble_garnet",
    deco_type = "simple",
    place_on = {"blocks:cobble"},
    noise_params = {
        offset = 0.0,
        scale = 2,
        spread = {x = 1, y = 1, z = 1},
        seed = 2522323233,
        octaves = 1,
        flags = "eased",
    },
    y_max = -16,
    y_min = -2048,
    flags = "all_floors, force_placement",
    place_offset_y = -1, -- Requires force_placement
    decoration = "blocks:cobble_garnet",
})

minetest.register_decoration({
    name = "flora:mushroom_garnet",
    deco_type = "simple",
    place_on = {"blocks:cobble_garnet"},
    sidelen = 12,
    noise_params = {
        offset = 0.0,
        scale = 0.45,
        spread = {x = 100, y = 100, z = 100},
        seed = 255443,
        octaves = 1,
        flags = "absvalue"
    },
    y_max = -16,
    y_min = -2048,
    flags = "all_floors",
    decoration = "flora:mushroom_garnet",
})

minetest.register_decoration({
    name = "flora:plant_garnet",
    deco_type = "simple",
    place_on = {"blocks:cobble_garnet"},
    sidelen = 12,
    fill_ratio = 0.1,
    y_max = -16,
    y_min = -2048,
    flags = "all_floors",
    height = 3,
    height_max = 8,
    param2 = 0,
    param2_max = 3,
    decoration = "flora:plant_garnet",
})

minetest.register_decoration({
    name = "blocks:garnet",
    deco_type = "simple",
    place_on = {"blocks:cobble_garnet"},
    sidelen = 12,
    fill_ratio = 0.025,
    y_max = -16,
    y_min = -2048,
    flags = "all_floors, all_ceilings",
    height = 2,
    height_max = 6,
    decoration = "blocks:garnet",
})

minetest.register_decoration({
    name = "flora:vines_garnet",
    deco_type = "simple",
    place_on = {"blocks:cobble"},
	noise_params = {
        offset = -0.25,
        scale = 1,
        spread = {x = 4, y = 4, z = 4},
        seed = 633456,
        octaves = 1,
        flags = "eased",
    },
    y_max = -16,
    y_min = -2048,
    flags = "all_ceilings",
    height = 3,
    height_max = 8,
    decoration = "flora:vines_garnet",
})

minetest.register_decoration({
    name = "flora:moss_garnet",
    deco_type = "simple",
    place_on = {"blocks:cobble"},
	noise_params = {
        offset = -0.25,
        scale = 2,
        spread = {x = 4, y = 4, z = 4},
        seed = 253,
        octaves = 1,
        flags = "absvalue, eased",
    },
    y_max = -16,
    y_min = -2048,
    flags = "all_ceilings",
    decoration = "flora:moss_garnet",
})
for i=1,5 do
	minetest.register_decoration({
		name = "flora:grass_garnet_" .. i,
		deco_type = "simple",
		place_on = {"blocks:cobble_garnet"},
		fill_ratio = 0.2,
		y_max = -16,
		y_min = -2048,
		flags = "all_floors",
		decoration = "flora:grass_garnet_" .. i,
	})
end

-- Amethyst sub-biome

minetest.register_decoration({
    name = "blocks:desert_cobble_amethyst",
    deco_type = "simple",
    place_on = {"blocks:desert_cobble"},
    noise_params = {
        offset = 0.0,
        scale = 2,
        spread = {x = 1, y = 1, z = 1},
        seed = 2522323233,
        octaves = 1,
        flags = "eased",
    },
    y_max = -16,
    y_min = -2048,
    flags = "all_floors, force_placement",
    place_offset_y = -1, -- Requires force_placement
    decoration = "blocks:desert_cobble_amethyst",
})

minetest.register_decoration({
    name = "blocks:sand_amethyst",
    deco_type = "simple",
    place_on = {"blocks:sand"},
    noise_params = {
        offset = 0.0,
        scale = 2,
        spread = {x = 1, y = 1, z = 1},
        seed = 2522323233,
        octaves = 1,
        flags = "eased",
    },
    y_max = -16,
    y_min = -2048,
    flags = "all_floors, force_placement",
    place_offset_y = -1, -- Requires force_placement
    decoration = "blocks:sand_amethyst",
})
minetest.register_decoration({
    name = "blocks:desert_sand_amethyst",
    deco_type = "simple",
    place_on = {"blocks:desert_sand"},
    noise_params = {
        offset = 0.0,
        scale = 2,
        spread = {x = 1, y = 1, z = 1},
        seed = 2522323233,
        octaves = 1,
        flags = "eased",
    },
    y_max = -16,
    y_min = -2048,
    flags = "all_floors, force_placement",
    place_offset_y = -1, -- Requires force_placement
    decoration = "blocks:desert_sand_amethyst",
})

minetest.register_decoration({
    name = "blocks:silver_sand_amethyst",
    deco_type = "simple",
    place_on = {"blocks:silver_sand"},
    noise_params = {
        offset = 0.0,
        scale = 2,
        spread = {x = 1, y = 1, z = 1},
        seed = 2522323233,
        octaves = 1,
        flags = "eased",
    },
    y_max = -16,
    y_min = -2048,
    flags = "all_floors, force_placement",
    place_offset_y = -1, -- Requires force_placement
    decoration = "blocks:silver_sand_amethyst",
})

minetest.register_decoration({
    name = "blocks:dry_dirt_amethyst",
    deco_type = "simple",
    place_on = {"blocks:dry_dirt"},
    noise_params = {
        offset = 0.0,
        scale = 2,
        spread = {x = 1, y = 1, z = 1},
        seed = 2522323233,
        octaves = 1,
        flags = "eased",
    },
    y_max = -16,
    y_min = -2048,
    flags = "all_floors, force_placement",
    place_offset_y = -1, -- Requires force_placement
    decoration = "blocks:dry_dirt_amethyst",
})

minetest.register_decoration({
    name = "flora:mushroom_amethyst",
    deco_type = "simple",
    place_on = {"blocks:desert_cobble_amethyst", "blocks:sand_amethyst", "blocks:desert_sand_amethyst", "blocks:silver_sand_amethyst", "blocks:dry_dirt_amethyst"},
    sidelen = 12,
    noise_params = {
        offset = 0.0,
        scale = 0.45,
        spread = {x = 100, y = 100, z = 100},
        seed = 255443,
        octaves = 1,
        flags = "absvalue"
    },
    y_max = -16,
    y_min = -2048,
    flags = "all_floors",
    decoration = "flora:mushroom_amethyst",
})
--[[
minetest.register_decoration({
    name = "flora:plant_amethyst",
    deco_type = "simple",
    place_on = {"blocks:desert_cobble_amethyst", "blocks:sand_amethyst", "blocks:desert_sand_amethyst", "blocks:silver_sand_amethyst", "blocks:dry_dirt_amethyst"},
    sidelen = 12,
    fill_ratio = 0.1,
    y_max = -16,
    y_min = -2048,
    flags = "all_floors",
    height = 3,
    height_max = 8,
    param2 = 0,
    param2_max = 3,
    decoration = "flora:plant_amethyst",
})
]]--
minetest.register_decoration({
    name = "blocks:amethyst",
    deco_type = "simple",
    place_on = {"blocks:desert_cobble_amethyst", "blocks:sand_amethyst", "blocks:desert_sand_amethyst", "blocks:silver_sand_amethyst", "blocks:dry_dirt_amethyst", "blocks:cave_ice"},
    sidelen = 12,
    fill_ratio = 0.025,
    y_max = -16,
    y_min = -2048,
    flags = "all_floors, all_ceilings",
    height = 2,
    height_max = 6,
    decoration = "blocks:amethyst",
})

minetest.register_decoration({
    name = "flora:vines_amethyst",
    deco_type = "simple",
    place_on = {"blocks:desert_cobble", "blocks:sand", "blocks:desert_sand", "blocks:silver_sand", "blocks:dry_dirt", "blocks:cave_ice"},
	noise_params = {
        offset = -0.25,
        scale = 1,
        spread = {x = 4, y = 4, z = 4},
        seed = 633456,
        octaves = 1,
        flags = "eased",
    },
    y_max = -16,
    y_min = -2048,
    flags = "all_ceilings",
    height = 3,
    height_max = 8,
    decoration = "flora:vines_amethyst",
})

minetest.register_decoration({
    name = "flora:moss_amethyst",
    deco_type = "simple",
    place_on = {"blocks:desert_cobble", "blocks:sand", "blocks:desert_sand", "blocks:silver_sand", "blocks:dry_dirt", "blocks:cave_ice"},
	noise_params = {
        offset = -0.25,
        scale = 2,
        spread = {x = 4, y = 4, z = 4},
        seed = 253,
        octaves = 1,
        flags = "absvalue, eased",
    },
    y_max = -16,
    y_min = -2048,
    flags = "all_ceilings",
    decoration = "flora:moss_amethyst",
})
for i=1,5 do
	minetest.register_decoration({
		name = "flora:grass_amethyst_" .. i,
		deco_type = "simple",
		place_on = {"blocks:desert_cobble_amethyst", "blocks:sand_amethyst", "blocks:desert_sand_amethyst", "blocks:silver_sand_amethyst", "blocks:dry_dirt_amethyst"},
		fill_ratio = 0.2,
		y_max = -16,
		y_min = -2048,
		flags = "all_floors",
		decoration = "flora:grass_amethyst_" .. i,
	})
end

mapgen.register_stalagmites = function(base_node)
	local base_definition = minetest.registered_nodes[base_node]
	local sname = string.match(base_node, ':(.*)')
	for i=1,5 do
		minetest.register_decoration({
			name = "decorations:stalagmite_" .. sname .. "_" .. i,
			deco_type = "simple",
			param2 = 0,
			param2_max = 239,
			place_on = {base_node},
			sidelen = 8,
			fill_ratio = 0.02,
			y_max = 0,
			y_min = -2048,
			flags = "all_floors",
			decoration = "decorations:stalagmite_" .. sname .. "_" .. i,
		})
		minetest.register_decoration({
			name = "decorations:stalactite_" .. sname .. "_" .. i,
			deco_type = "simple",
			param2 = 0,
			param2_max = 239,
			place_on = {base_node},
			sidelen = 8,
			fill_ratio = 0.02,
			y_max = 256,
			y_min = -2048,
			place_offset_y = 1,
			flags = "all_ceilings",
			decoration = "decorations:stalactite_" .. sname .. "_" .. i,
		})
	end
end

mapgen.register_stalagmites("blocks:stone")
mapgen.register_stalagmites("blocks:obsidian")
mapgen.register_stalagmites("blocks:sandstone")
mapgen.register_stalagmites("blocks:desert_sandstone")
mapgen.register_stalagmites("blocks:silver_sandstone")
mapgen.register_stalagmites("blocks:desert_stone")
mapgen.register_stalagmites("blocks:granite")
mapgen.register_stalagmites("blocks:marble")
mapgen.register_stalagmites("blocks:basalt")