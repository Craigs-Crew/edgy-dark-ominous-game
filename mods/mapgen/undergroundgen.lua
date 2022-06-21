mapgen.register_microbiome_decorations = function(base_name, data)
	local height_min = data.height_min
	local height_max = data.height_max
	local seed = data.seed
	local in_base_node = data.base_node
	local in_surface_node = data.surface_node

	local grass = data.grass_node
	local small_plant = data.main_small_plant
	local small_plant_secondary = data.secondary_small_plant 	-- Optional
	local large_plant = data.main_large_plant					-- Optional
	local secondary_large_plant = data.secondary_large_plant	-- Optional
	local vines = data.main_vines
	local secondary_vines = data.secondary_vines				-- Optional
	local moss = data.moss

	local base_node = {}
	local surface_node = {}

	if in_base_node[2] ~= nil then
		for i=1,#in_base_node do
			base_node[i] = in_base_node[i]
		end
	else
		base_node = in_base_node
	end

	if in_surface_node[2] ~= nil then
		for i=1,#in_surface_node do
			surface_node[i] = in_surface_node[i]
		end
	else
		surface_node = in_surface_node
	end

	local np_surface = nil
	local surface_fill = 0

	if data.surface_coverage == "full" then
		surface_fill = 10.0
	else
		np_surface = {
			offset = data.surface_coverage - 1,
			scale = 2,
			spread = {x = 1, y = 1, z = 1},
			seed = 2522323233 + seed,
			octaves = 1,
			flags = "absolute",
		}
	end

	-- Surface node, like dirt with grass for example
	if base_node[2] ~= nil then
		for i=1,#base_node do
			minetest.register_decoration({
				name = base_name .. "_" .. surface_node[i] .. "_surface",
				deco_type = "simple",
				place_on = {base_node[i]},
				fill_ratio = surface_fill,
				noise_params = np_surface,
				y_max = height_max,
				y_min = height_min,
				flags = "all_floors, force_placement",
				place_offset_y = -1, -- Requires force_placement
				decoration = surface_node[i],
			})
		end
	else
		minetest.register_decoration({
			name = base_name .. "_" .. surface_node[1] .. "_surface",
			deco_type = "simple",
			place_on = base_node,
			fill_ratio = surface_fill,
			noise_params = np_surface,
			y_max = height_max,
			y_min = height_min,
			flags = "all_floors, force_placement",
			place_offset_y = -1, -- Requires force_placement
			decoration = surface_node[1],
		})
	end

	-- Large plants
	if large_plant ~= nil then
		minetest.register_decoration({
			name = base_name .. "_" .. large_plant .. "_large_plant",
			deco_type = "simple",
			place_on = surface_node,
			sidelen = 12,
			fill_ratio = 0.1,
			y_max = height_max,
			y_min = height_min,
			flags = "all_floors",
			height = 3,
			height_max = 8,
			param2 = 0,
			param2_max = 3,
			decoration = large_plant,
		})
	end
	if secondary_large_plant ~= nil then
		minetest.register_decoration({
			name = base_name .. "_" .. secondary_large_plant .. "_secondary_large_plant",
			deco_type = "simple",
			place_on = surface_node,
			sidelen = 12,
			fill_ratio = 0.1,
			y_max = height_max,
			y_min = height_min,
			flags = "all_floors",
			height = 3,
			height_max = 8,
			param2 = 0,
			param2_max = 3,
			decoration = secondary_large_plant,
		})
	end


	-- Vines
	minetest.register_decoration({
		name = base_name .. "_" .. vines .. "_vines",
		deco_type = "simple",
		place_on = base_node,
		noise_params = {
			offset = -0.25,
			scale = 1,
			spread = {x = 4, y = 4, z = 4},
			seed = 633456 + seed,
			octaves = 1,
			flags = "eased",
		},
		y_max = height_max,
		y_min = height_min,
		flags = "all_ceilings",
		height = 3,
		height_max = 8,
		decoration = vines,
	})
	if secondary_vines ~= nil then
		minetest.register_decoration({
			name = base_name .. "_" .. secondary_vines .. "_secondary_vines",
			deco_type = "simple",
			place_on = base_node,
			noise_params = {
				offset = -0.25,
				scale = 1,
				spread = {x = 4, y = 4, z = 4},
				seed = 633422345 + seed,
				octaves = 1,
				flags = "eased",
			},
			y_max = height_max,
			y_min = height_min,
			flags = "all_ceilings",
			height = 3,
			height_max = 8,
			decoration = secondary_vines,
		})
	end

	-- Moss
	
	minetest.register_decoration({
		name = base_name .. "_" .. moss .. "_moss",
		deco_type = "simple",
		place_on = base_node,
		noise_params = {
			offset = -0.25,
			scale = 2,
			spread = {x = 4, y = 4, z = 4},
			seed = 253 + seed,
			octaves = 1,
			flags = "absvalue, eased",
		},
		y_max = height_max,
		y_min = height_min,
		flags = "all_ceilings",
		decoration = moss,
	})

	for i=1,5 do
		-- Small plants
		minetest.register_decoration({
			name = base_name .. "_" .. small_plant .. "_" .. i .. "_small_plant_" .. i,
			deco_type = "simple",
			place_on = surface_node,
			fill_ratio = data.plant_rarity/5,
			y_max = mapgen.underground_start,
			y_max = height_max,
			y_min = height_min,
			flags = "all_floors",
			decoration = small_plant .. "_" .. i,
		})
		if secondary_small_plant ~= nil then
			minetest.register_decoration({
				name = base_name .. "_" .. secondary_small_plant .. "_" .. i .. "_secondary_small_plant_" .. i,
				deco_type = "simple",
				place_on = surface_node,
				fill_ratio = data.plant_rarity/5,
				y_max = mapgen.underground_start,
				y_max = height_max,
				y_min = height_min,
				flags = "all_floors",
				decoration = secondary_small_plant .. "_" .. i,
			})
		end
	end

	for i=1,5 do
		-- Grass
		minetest.register_decoration({
			name = base_name .. "_" .. grass .. "_" .. i .. "_grass_" .. i,
			deco_type = "simple",
			place_on = surface_node,
			fill_ratio = data.grass_rarity/5,
			y_max = height_max,
			y_min = height_min,
			flags = "all_floors",
			decoration = grass .. "_" .. i,
		})
	end
end

mapgen.register_microbiome_decorations("garnet", {
	height_min = -2048,
	height_max = mapgen.underground_start,
	seed = 262,
	base_node = {"blocks:cobble"}, -- surface_node matches the base_node, they also have to be the same length
	surface_node = {"blocks:cobble_garnet"},
	surface_coverage = 1,

	grass_node = "flora:grass_garnet",
	main_small_plant = "flora:mushroom_garnet",
	--secondary_small_plant
	plant_rarity = 1,
	grass_rarity = 1,
	main_large_plant = "flora:plant_garnet",
	secondary_large_plant = "blocks:garnet",
	main_vines = "flora:vines_garnet",
	--secondary_vines
	moss = "flora:moss_garnet",
})

mapgen.register_microbiome_decorations("amethyst", {
	height_min = -2048,
	height_max = mapgen.underground_start,
	seed = 263,
	base_node = {"blocks:desert_cobble", "blocks:sand", "blocks:desert_sand", "blocks:silver_sand", "blocks:dry_dirt"},
	surface_node = {"blocks:desert_cobble_amethyst", "blocks:sand_amethyst", "blocks:desert_sand_amethyst", "blocks:silver_sand_amethyst", "blocks:dry_dirt_amethyst"},
	surface_coverage = 1,

	grass_node = "flora:grass_amethyst",
	main_small_plant = "flora:mushroom_amethyst",
	--secondary_small_plant
	plant_rarity = 1,
	grass_rarity = 1,
	--main_large_plant = "flora:plant_garnet",
	secondary_large_plant = "blocks:amethyst",
	main_vines = "flora:vines_amethyst",
	--secondary_vines
	moss = "flora:moss_amethyst",
})

mapgen.register_microbiome_decorations("moonstone", {
	height_min = mapgen.underground_start,
	height_max = 0,
	seed = 162,
	base_node = {"blocks:dirt"},
	surface_node = {"blocks:dirt_with_grass"},
	surface_coverage = "full",

	grass_node = "flora:grass",
	main_small_plant = "flora:moonflower",
	--secondary_small_plant
	plant_rarity = 0.1,
	grass_rarity = 1,
	--main_large_plant
	--secondary_large_plant
	main_vines = "flora:vines",
	secondary_vines = "flora:vines_moonstone",
	moss = "flora:vines_horizontal",
})

-- Rocks

mapgen.register_stalagmites = function(base_node, seed, surface, secondary_base)
	local base_definition = minetest.registered_nodes[base_node]
	local sname = string.match(base_node, ':(.*)')
	local stalagmite_max_height = 0
	if surface then stalagmite_max_height = 512 end
	if secondary_base == nil then secondary_base = base_node end

	-- Big Stalagmites/Stalactites

	mapgen.np_stalagmites.seed = mapgen.np_stalagmites.seed  + seed

	minetest.register_decoration({
		name = "decorations:stalagmite_base_" .. sname,
		deco_type = "simple",
		param2 = 0,
		place_on = {base_node, secondary_base},
		sidelen = 8,
		noise_params = mapgen.np_stalagmites,
		y_max = stalagmite_max_height,
		y_min = -2048,
		flags = "all_floors",
		decoration = "decorations:stalagmite_base_" .. sname,
	})
	minetest.register_decoration({
		name = "decorations:stalactite_base_" .. sname,
		deco_type = "simple",
		param2 = 0,
		place_on = {base_node, secondary_base},
		sidelen = 8,
		noise_params = mapgen.np_stalagmites,
		y_max = 256,
		y_min = -2048,
		flags = "all_ceilings",
		decoration = "decorations:stalactite_base_" .. sname,
	})
	minetest.register_decoration({
		name = "decorations:stalagmite_middle_" .. sname,
		deco_type = "simple",
		param2 = 0,
		place_on = {"decorations:stalagmite_base_" .. sname},
		fill_ratio = 10.0,
		y_max = 256,
		y_min = -2048,
		height = 1,
		height_max = 4,
		flags = "all_floors, force_placement",
		decoration = "decorations:stalagmite_middle_" .. sname,
	})
	minetest.register_decoration({
		name = "decorations:stalactite_middle_" .. sname,
		deco_type = "simple",
		param2 = 0,
		place_on = {"decorations:stalactite_base_" .. sname},
		fill_ratio = 10.0,
		y_max = 256,
		y_min = -2048,
		height = 1,
		height_max = 2,
		flags = "all_ceilings, force_placement",
		decoration = "decorations:stalactite_middle_" .. sname,
	})
	minetest.register_decoration({
		name = "decorations:stalagmite_top_" .. sname,
		deco_type = "simple",
		param2 = 0,
		place_on = {"decorations:stalagmite_middle_" .. sname},
		fill_ratio = 10.0,
		y_max = 256,
		y_min = -2048,
		flags = "all_floors, force_placement",
		place_offset_y = -1,
		decoration = "decorations:stalagmite_top_" .. sname,
	})
	minetest.register_decoration({
		name = "decorations:stalactite_top_" .. sname,
		deco_type = "simple",
		param2 = 0,
		place_on = {"decorations:stalactite_middle_" .. sname},
		fill_ratio = 10.0,
		y_max = 256,
		y_min = -2048,
		flags = "all_ceilings, force_placement",
		place_offset_y = -1,
		decoration = "decorations:stalactite_top_" .. sname,
	})

	-- Small Stalagmites/Stalactites

	for i=1,5 do
		minetest.register_decoration({
			name = "decorations:stalagmite_" .. sname .. "_" .. i,
			deco_type = "simple",
			param2 = 0,
			param2_max = 239,
			place_on = {base_node, secondary_base},
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
			place_on = {base_node, secondary_base},
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

mapgen.register_stalagmites("blocks:stone", 1419)
mapgen.register_stalagmites("blocks:obsidian", 2324)
mapgen.register_stalagmites("blocks:sandstone", 4531, true)
mapgen.register_stalagmites("blocks:desert_sandstone", 3325, true)
mapgen.register_stalagmites("blocks:silver_sandstone", 6563, true)
mapgen.register_stalagmites("blocks:desert_stone", 5244)
mapgen.register_stalagmites("blocks:granite", 7333)
mapgen.register_stalagmites("blocks:marble", 8578)
mapgen.register_stalagmites("blocks:basalt", 9233)
mapgen.register_stalagmites("blocks:ice", 4253, true, "blocks:cave_ice")