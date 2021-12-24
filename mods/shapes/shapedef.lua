-- Slabs
shapes:register_shapedef("slab1", {
	description = "Slab (1/16)",
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
	},
	shgroup = "slab",
	sunlight_propagates = true,
})

shapes:register_shapedef("slab2", {
	description = "Slab (2/16)",
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.375, 0.5},
	},
	shgroup = "slab",
	sunlight_propagates = true,
})

shapes:register_shapedef("slab4", {
	description = "Slab (4/16)",
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
	},
	shgroup = "slab",
	sunlight_propagates = true,
})

shapes:register_shapedef("slab", {
	description = "Slab",
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
	},
	shgroup = "slab",
	groups = {not_in_creative_inventory = 0},
	sunlight_propagates = true,
	crafting = {
		amount = 6,
		recipe = {
			{"shapes:self", "shapes:self", "shapes:self"},
		},
	},
})


shapes:register_shapedef("slab12", {
	description = "Slab (12/16)",
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.25, 0.5},
	},
	shgroup = "slab",
	sunlight_propagates = true,
})

-- Cubes
shapes:register_shapedef("cube1", {
	description = "Cube (1/16)",
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, 0, 0, -0.4375, 0.5},
	},
	shgroup = "cube",
	sunlight_propagates = true,
})

shapes:register_shapedef("cube2", {
	description = "Cube (2/16)",
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, 0, 0, -0.375, 0.5},
	},
	shgroup = "cube",
	sunlight_propagates = true,
})

shapes:register_shapedef("cube4", {
	description = "Cube (4/16)",
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, 0, 0, -0.25, 0.5},
	},
	shgroup = "cube",
	sunlight_propagates = true,
})

shapes:register_shapedef("cube", {
	description = "Cube",
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, 0, 0, 0, 0.5},
	},
	shgroup = "cube",
	sunlight_propagates = true,
})

shapes:register_shapedef("cube12", {
	description = "Cube (12/16)",
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, 0, 0, 0.25, 0.5},
	},
	shgroup = "cube",
	sunlight_propagates = true,
})

-- Steps
shapes:register_shapedef("step1", {
	description = "Step (1/16)",
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, 0, 0.5, -0.4375, 0.5},
	},
	shgroup = "step",
	sunlight_propagates = true,
})

shapes:register_shapedef("step2", {
	description = "Step (2/16)",
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, 0, 0.5, -0.375, 0.5},
	},
	shgroup = "step",
	sunlight_propagates = true,
})

shapes:register_shapedef("step4", {
	description = "Step (4/16)",
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, 0, 0.5, -0.25, 0.5},
	},
	shgroup = "step",
	sunlight_propagates = true,
})

shapes:register_shapedef("step", {
	description = "Step",
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, 0, 0.5, 0, 0.5},
	},
	shgroup = "step",
	sunlight_propagates = true,
})

shapes:register_shapedef("step12", {
	description = "Step (12/16)",
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, 0, 0.5, 0.25, 0.5},
	},
	shgroup = "step",
	sunlight_propagates = true,
})

-- Stairs
shapes:register_shapedef("stair", {
	description = "Stair",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, 0, 0, 0.5, 0.5, 0.5},
		},
	},
	shgroup = "stair",
	groups = {not_in_creative_inventory = 0},
	sunlight_propagates = true,
	crafting = {
		amount = 8,
		recipe = {
			{"", "", "shapes:self"},
			{"", "shapes:self", "shapes:self"},
			{"shapes:self", "shapes:self", "shapes:self"},
		},
	},
})

shapes:register_shapedef("halfstair", {
	description = "Left Halfstair",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0, 0, 0.5},
			{-0.5, 0, 0, 0, 0.5, 0.5},
		},
	},
	shgroup = "stair",
	sunlight_propagates = true,
	crafting = {
		recipe = {
			{"shapes:shape_righthalfstair"},
		},
	},
})

shapes:register_shapedef("righthalfstair", {
	description = "Right Halfstair",
	node_box = {
		type = "fixed",
		fixed = {
			{0, -0.5, -0.5, 0.5, 0, 0.5},
			{0, 0, 0, 0.5, 0.5, 0.5},
		},
	},
	shgroup = "stair",
	sunlight_propagates = true,
	crafting = {
		recipe = {
			{"shapes:shape_halfstair"},
		},
	},
})

shapes:register_shapedef("outerstair", {
	description = "Outerstair",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, 0, 0, 0, 0.5, 0.5},
		},
	},
	shgroup = "stair",
	sunlight_propagates = true,
})

shapes:register_shapedef("innerstair", {
	description = "Innerstair",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, 0, 0, 0.5, 0.5, 0.5},
			{-0.5, 0, -0.5, 0, 0.5, 0},
		},
	},
	shgroup = "stair",
	sunlight_propagates = false,
})

shapes:register_shapedef("forkstair", {
	description = "Forkstair",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0, 0, 0.5, 0.5},
			{0, -0.5, 0, 0.5, 0, 0.5},
			{-0.5, -0.5, -0.5, 0, 0, 0},
		},
	},
	shgroup = "stair",
	sunlight_propagates = false,
})

-- split stairs
shapes:register_shapedef("splitstair1", {
	description = "Splitstair (1/16)",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.0625, -0.5, 0.5, 0, 0},
			{-0.5, 0.4375, 0, 0.5, 0.5, 0.5},
		},
	},
	shgroup = "splitstair",
	sunlight_propagates = true,
})

shapes:register_shapedef("splitstair4", {
	description = "Splitstair (4/16)",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.25, -0.5, 0.5, 0, 0},
			{-0.5, 0.25, 0, 0.5, 0.5, 0.5},
		},
	},
	shgroup = "splitstair",
	sunlight_propagates = true,
})

shapes:register_shapedef("splitstair", {
	description = "Splitstair",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0},
			{-0.5, 0, 0, 0.5, 0.5, 0.5},
		},
	},
	shgroup = "splitstair",
	sunlight_propagates = true,
})

-- pole
shapes:register_shapedef("pole", {
	description = "Pole",
	node_box = {
		type = "fixed",
		fixed = {-0.125, -0.5, -0.125, 0.125, 0.5, 0.125},
	},
	shgroup = "pole",
	sunlight_propagates = true,
	crafting = {
		amount = 8,
		recipe = {
			{"shapes:self"},
			{"group:stick"},
			{"shapes:self"},
		},
	},
})

shapes:register_shapedef("wallpole", {
	description = "Wall-Pole",
	node_box = {
		type = "fixed",
		fixed = {-0.125, -0.5, 0.25, 0.125, 0.5, 0.5},
	},
	shgroup = "pole",
	sunlight_propagates = true,
})

shapes:register_shapedef("cornerpole", {
	description = "Corner-Pole",
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, 0.25, -0.25, 0.5, 0.5},
	},
	shgroup = "pole",
	sunlight_propagates = true,
})

-- pillar
shapes:register_shapedef("pillar", {
	description = "Pillar",
	node_box = {
		type = "fixed",
		fixed = {-1/4, -1/2, -1/4, 1/4, 1/2, 1/4},
	},
	shgroup = "pillar",
	sunlight_propagates = true,
	crafting = {
		amount = 12,
		recipe = {
			{"shapes:self", "shapes:self"},
			{"shapes:self", "shapes:self"},
			{"shapes:self", "shapes:self"},
		},
	},
})

shapes:register_shapedef("wallpillar", {
	description = "Wall-Pillar",
	node_box = {
		type = "fixed",
		fixed = {-1/4, -1/2, 0, 1/4, 1/2, 1/2},
	},
	shgroup = "pillar",
	sunlight_propagates = true,
})

shapes:register_shapedef("halfpillar", {
	description = "Half-Pillar",
	node_box = {
		type = "fixed",
		fixed = {-1/4, -1/2, 1/2, 1/4, 1/2, 1/4},
	},
	shgroup = "pillar",
	sunlight_propagates = true,
})

shapes:register_shapedef("pillarcrown", {
	description = "Pillar Crown",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.25, 0.25, 0.5, 0.25},
			{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
			{-0.375, -0.5, -0.375, 0.375, 0, 0.375},
		},
	},
	shgroup = "pillarcrown",
	sunlight_propagates = true,
})

shapes:register_shapedef("wallpillarcrown", {
	description = "Wall-Pillar Crown",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, 0, 0.25, 0.5, 0.5},
			{-0.5, -0.5, -0.25, 0.5, -0.25, 0.5},
			{-0.375, -0.5, -0.125, 0.375, 0, 0.5},
		},
	},
	shgroup = "pillarcrown",
	sunlight_propagates = true,
})


shapes:register_shapedef("halfpillarcrown", {
	description = "Half-Pillar Crown",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, 0.25, 0.25, 0.5, 0.5},
			{-0.5, -0.5, 0, 0.5, -0.25, 0.5},
			{-0.375, -0.5, 0.125, 0.375, 0, 0.5},
		},
	},
	shgroup = "pillarcrown",
	sunlight_propagates = true,
})

shapes:register_shapedef("crosscrown", {
	description = "Cross Crown",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.25, 0.25, 0.5, 0.25},
			{-0.5, -0.5, -0.25, 0.5, -0, 0.25},
			{-0.25, -0.5, -0.5, 0.25, -0, 0.5},
			{-0.4375, -0.4375, -0.4375, 0.4375, -0.0625, 0.4375},
		},
	},
	shgroup = "pillarcrown",
	sunlight_propagates = true,
})

-- beam
shapes:register_shapedef("beam", {
	description = "Beam",
	node_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.5, 0.25, 0, 0.5},
	},
	shgroup = "beam",
	sunlight_propagates = true,
})

shapes:register_shapedef("crossbeam", {
	description = "Crossbeam",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.5, 0.25, 0, 0.5},
			{-0.5, -0.5, -0.25, 0.5, 0, 0.25},
		},
	},
	shgroup = "beam",
	sunlight_propagates = true,
})

shapes:register_shapedef("linkdown", {
	description = "Linkdown",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, 0, -0.5, 0.25, 0.5, 0.5},
			{-0.125, -0.5, -0.125, 0.125, 0, 0.125},
			{-0.1875, -0.5, -0.1875, 0.1875, -0.375, 0.1875},
			{-0.1875, -0.125, -0.1875, 0.1875, 0, 0.1875},
		},
	},
	shgroup = "beam",
	sunlight_propagates = true,
})

-- corners
shapes:register_shapedef("corner1", {
	description = "Corner (1/16)",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0, -0.4375, 0.5},
			{0, -0.5, 0, 0.5, -0.4375, -0.5},
		},
	},
	shgroup = "corner",
	sunlight_propagates = true,
})

shapes:register_shapedef("corner2", {
	description = "Corner (2/16)",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0, -0.375, 0.5},
			{0, -0.5, 0, 0.5, -0.375, -0.5},
		},
	},
	shgroup = "corner",
	sunlight_propagates = true,
})

shapes:register_shapedef("corner4", {
	description = "Corner (4/16)",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0, -0.25, 0.5},
			{0, -0.5, 0, 0.5, -0.25, -0.5},
		},
	},
	shgroup = "corner",
	sunlight_propagates = true,
})

shapes:register_shapedef("corner", {
	description = "Corner",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0, 0, 0.5},
			{0, -0.5, 0, 0.5, 0, -0.5},
		},
	},
	shgroup = "corner",
	sunlight_propagates = true,
})

shapes:register_shapedef("corner12", {
	description = "Corner (12/16)",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0, 0.25, 0.5},
			{0, -0.5, 0, 0.5, 0.25, -0.5},
		},
	},
	shgroup = "corner",
	sunlight_propagates = true,
})

-- ==================
-- MODEL-BASED SHAPES
-- ==================
-- sphere
shapes:register_shapedef("sphere", {
	description = "Sphere",
	mesh = "shapes_sphere.obj",
	collision_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	},
	shgroup = "sphere",
	sunlight_propagates = true,
	disable_by_default = true,
})

-- slopes
shapes:register_shapedef("slope", {
	description = "Slope",
	mesh = "shapes_slope.obj",
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
			{-0.5, -0.25, -0.25, 0.5, 0, 0.5},
			{-0.5, 0, 0, 0.5, 0.25, 0.5},
			{-0.5, 0.25, 0.25, 0.5, 0.5, 0.5},
		},
	},
	shgroup = "slope",
	sunlight_propagates = true,
})

shapes:register_shapedef("slope2", {
	description = "Slope (1/2)",
	mesh = "shapes_slope_half.obj",
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.375, 0.5},
			{-0.5, -0.375, -0.25, 0.5, -0.25, 0.5},
			{-0.5, -0.25, 0, 0.5, -0.125, 0.5},
			{-0.5, -0.125, 0.25, 0.5, 0, 0.5},
		},
	},
	shgroup = "slope",
	sunlight_propagates = true,
})

shapes:register_shapedef("slope3", {
	description = "Slope (3/4)",
	mesh = "shapes_slope_half_raised.obj",
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.125, 0.5},
			{-0.5, 0.125, -0.25, 0.5, 0.25, 0.5},
			{-0.5, 0.25, 0, 0.5, 0.375, 0.5},
			{-0.5, 0.375, 0.25, 0.5, 0.5, 0.5},
		},
	},
	shgroup = "slope",
	sunlight_propagates = true,
})

shapes:register_shapedef("innerslope", {
	description = "Innerslope",
	mesh = "shapes_slope_inner.obj",
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
			{-0.5, -0.5, -0.25, 0.5, 0, 0.5},
			{-0.5, -0.5, -0.5, 0.25, 0, 0.5},
			{-0.5, 0, -0.5, 0, 0.25, 0.5},
			{-0.5, 0, 0, 0.5, 0.25, 0.5},
			{-0.5, 0.25, 0.25, 0.5, 0.5, 0.5},
			{-0.5, 0.25, -0.5, -0.25, 0.5, 0.5},
		},
	},
	shgroup = "slope",
	sunlight_propagates = true,
})

shapes:register_shapedef("innerslope2", {
	description = "Innerslope (1/2)",
	mesh = "shapes_slope_inner_half.obj",
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.375, 0.5},
			{-0.5, -0.375, -0.25, 0.5, -0.25, 0.5},
			{-0.5, -0.375, -0.5, 0.25, -0.25, 0.5},
			{-0.5, -0.25, -0.5, 0, -0.125, 0.5},
			{-0.5, -0.25, 0, 0.5, -0.125, 0.5},
			{-0.5, -0.125, 0.25, 0.5, 0, 0.5},
			{-0.5, -0.125, -0.5, -0.25, 0, 0.5},
		},
	},
	shgroup = "slope",
	sunlight_propagates = true,
})

shapes:register_shapedef("innerslope3", {
	description = "Innerslope (3/4)",
	mesh = "shapes_slope_inner_half_raised.obj",
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.125, 0.5},
			{-0.5, 0.125, -0.25, 0.5, 0.25, 0.5},
			{-0.5, 0.125, -0.5, 0.25, 0.25, 0.5},
			{-0.5, 0.25, -0.5, 0, 0.375, 0.5},
			{-0.5, 0.25, 0, 0.5, 0.375, 0.5},
			{-0.5, 0.375, 0.25, 0.5, 0.5, 0.5},
			{-0.5, 0.375, -0.5, -0.25, 0.5, 0.5},
		},
	},
	shgroup = "slope",
	sunlight_propagates = true,
})

shapes:register_shapedef("cutinnerslope", {
	description = "Cut Innerslope",
	mesh = "shapes_slope_inner_cut.obj",
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
			{-0.5, -0.5, -0.25, 0.5, 0, 0.5},
			{-0.5, -0.5, -0.5, 0.25, 0, 0.5},
			{-0.5, 0, -0.5, 0, 0.25, 0.5},
			{-0.5, 0, 0, 0.5, 0.25, 0.5},
			{-0.5, 0.25, 0.25, 0.5, 0.5, 0.5},
			{-0.5, 0.25, -0.5, -0.25, 0.5, 0.5},
		},
	},
	shgroup = "slope",
	sunlight_propagates = true,
})

shapes:register_shapedef("cutinnerslope2", {
	description = "Cut Innerslope (1/2)",
	mesh = "shapes_slope_inner_cut_half.obj",
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.375, 0.5},
			{-0.5, -0.375, -0.25, 0.5, -0.25, 0.5},
			{-0.5, -0.375, -0.5, 0.25, -0.25, 0.5},
			{-0.5, -0.25, -0.5, 0, -0.125, 0.5},
			{-0.5, -0.25, 0, 0.5, -0.125, 0.5},
			{-0.5, -0.125, 0.25, 0.5, 0, 0.5},
			{-0.5, -0.125, -0.5, -0.25, 0, 0.5},
		},
	},
	shgroup = "slope",
	sunlight_propagates = true,
})

shapes:register_shapedef("cutinnerslope3", {
	description = "Cut Innerslope (3/4)",
	mesh = "shapes_slope_inner_cut_half_raised.obj",
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.125, 0.5},
			{-0.5, 0.125, -0.25, 0.5, 0.25, 0.5},
			{-0.5, 0.125, -0.5, 0.25, 0.25, 0.5},
			{-0.5, 0.25, -0.5, 0, 0.375, 0.5},
			{-0.5, 0.25, 0, 0.5, 0.375, 0.5},
			{-0.5, 0.375, 0.25, 0.5, 0.5, 0.5},
			{-0.5, 0.375, -0.5, -0.25, 0.5, 0.5},
		},
	},
	shgroup = "slope",
	sunlight_propagates = true,
})

shapes:register_shapedef("outerslope", {
	description = "Outerslope",
	mesh = "shapes_slope_outer.obj",
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
			{-0.5, -0.25, -0.25, 0.25, 0, 0.5},
			{-0.5, 0, 0, 0, 0.25, 0.5},
			{-0.5, 0.25, 0.25, -0.25, 0.5, 0.5},
		},
	},
	shgroup = "slope",
	sunlight_propagates = true,
})

shapes:register_shapedef("outerslope2", {
	description = "Outerslope (1/2)",
	mesh = "shapes_slope_outer_half.obj",
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.375, 0.5},
			{-0.5, -0.375, -0.25, 0.25, -0.25, 0.5},
			{-0.5, -0.25, 0, 0, -0.125, 0.5},
			{-0.5, -0.125, 0.25, -0.25, 0, 0.5},
		},
	},
	shgroup = "slope",
	sunlight_propagates = true,
})

shapes:register_shapedef("outerslope3", {
	description = "Outerslope (3/4)",
	mesh = "shapes_slope_outer_half_raised.obj",
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.125, 0.5},
			{-0.5, 0.125, -0.25, 0.25, 0.25, 0.5},
			{-0.5, 0.25, 0, 0, 0.375, 0.5},
			{-0.5, 0.375, 0.25, -0.25, 0.5, 0.5},
		},
	},
	shgroup = "slope",
	sunlight_propagates = true,
})

shapes:register_shapedef("cutouterslope", {
	description = "Cut Outerslope",
	mesh = "shapes_slope_outer_cut.obj",
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
			{-0.5, -0.25, -0.25, 0.25, 0, 0.5},
			{-0.5, 0, 0, 0, 0.25, 0.5},
			{-0.5, 0.25, 0.25, -0.25, 0.5, 0.5},
		},
	},
	shgroup = "slope",
	sunlight_propagates = true,
})

shapes:register_shapedef("cutouterslope2", {
	description = "Cut Outerslope (1/2)",
	mesh = "shapes_slope_outer_cut_half.obj",
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.375, 0.5},
			{-0.5, -0.375, -0.25, 0.25, -0.25, 0.5},
			{-0.5, -0.25, 0, 0, -0.125, 0.5},
			{-0.5, -0.125, 0.25, -0.25, 0, 0.5},
		},
	},
	shgroup = "slope",
	sunlight_propagates = true,
})

shapes:register_shapedef("cutouterslope3", {
	description = "Cut Outerslope (3/4)",
	mesh = "shapes_slope_outer_cut_half_raised.obj",
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.125, 0.5},
			{-0.5, 0.125, -0.25, 0.25, 0.25, 0.5},
			{-0.5, 0.25, 0, 0, 0.375, 0.5},
			{-0.5, 0.375, 0.25, -0.25, 0.5, 0.5},
		},
	},
	shgroup = "slope",
	sunlight_propagates = true,
})

shapes:register_shapedef("cutouterslope4", {
	description = "Cut Outerslope (4/2)",
	mesh = "shapes_slope_cut.obj",
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
			{-0.5, -0.25, -0.25, 0.25, 0, 0.5},
			{-0.5, 0, 0, 0, 0.25, 0.5},
			{-0.5, 0.25, 0.25, -0.25, 0.5, 0.5},
		},
	},
	shgroup = "slope",
	sunlight_propagates = true,
})

-- fence
shapes:register_shapedef("fence", {
	description = "Fence",
	overlay = "shapes_df_fence_overlay.png",
	node_box = {
		type = "connected",
		fixed = {-1/8, -1/2, -1/8, 1/8, 1/2, 1/8},
		-- connect_top =
		-- connect_bottom =
		connect_front = {{-1/16,  3/16, -1/2,   1/16,  5/16, -1/8 },
						 {-1/16, -5/16, -1/2,   1/16, -3/16, -1/8 }},
		connect_left =  {{-1/2,   3/16, -1/16, -1/8,   5/16,  1/16},
						 {-1/2,  -5/16, -1/16, -1/8,  -3/16,  1/16}},
		connect_back =  {{-1/16,  3/16,  1/8,   1/16,  5/16,  1/2 },
						 {-1/16, -5/16,  1/8,   1/16, -3/16,  1/2 }},
		connect_right = {{ 1/8,   3/16, -1/16,  1/2,   5/16,  1/16},
						 { 1/8,  -5/16, -1/16,  1/2,  -3/16,  1/16}},
	},
	collision_box = {
		type = "connected",
		fixed = {-1/8, -1/2, -1/8, 1/8, 1/2, 1/8},
		-- connect_top =
		-- connect_bottom =
		connect_front = {-1/8, -1/2, -1/2,  1/8, 1/2, -1/8},
		connect_left =  {-1/2, -1/2, -1/8, -1/8, 1/2,  1/8},
		connect_back =  {-1/8, -1/2,  1/8,  1/8, 1/2,  1/2},
		connect_right = { 1/8, -1/2, -1/8,  1/2, 1/2,  1/8}
	},
	connects_to = {"group:fence", "group:wood", "group:tree", "group:wall", "group:stone"},
	shgroup = "fence",
	groups = {fence = 1, not_in_creative_inventory = 0},
	sunlight_propagates = true,
	crafting = {
		amount = 16,
		recipe = {
			{"shapes:self", "group:stick", "shapes:self"},
			{"shapes:self", "group:stick", "shapes:self"},
		},
	},
})

shapes:register_shapedef("fencerail", {
	description = "Fencerail",
	overlay = "shapes_df_fencerail_overlay.png",
	node_box = {
		type = "connected",
		fixed = {{-1/16,  3/16, -1/16, 1/16,  5/16, 1/16},
				{-1/16, -3/16, -1/16, 1/16, -5/16, 1/16}},
		-- connect_top =
		-- connect_bottom =
		connect_front = {{-1/16,  3/16, -1/2,   1/16,  5/16, -1/16},
						{-1/16, -5/16, -1/2,   1/16, -3/16, -1/16}},
		connect_left =  {{-1/2,   3/16, -1/16, -1/16,  5/16,  1/16},
						{-1/2,  -5/16, -1/16, -1/16, -3/16,  1/16}},
		connect_back =  {{-1/16,  3/16,  1/16,  1/16,  5/16,  1/2 },
						{-1/16, -5/16,  1/16,  1/16, -3/16,  1/2 }},
		connect_right = {{ 1/16,  3/16, -1/16,  1/2,   5/16,  1/16},
						{ 1/16, -5/16, -1/16,  1/2,  -3/16,  1/16}},
	},
	collision_box = {
		type = "connected",
		fixed = {-1/8, -1/2, -1/8, 1/8, 1/2, 1/8},
		-- connect_top =
		-- connect_bottom =
		connect_front = {-1/8, -1/2, -1/2,  1/8, 1/2, -1/8},
		connect_left =  {-1/2, -1/2, -1/8, -1/8, 1/2,  1/8},
		connect_back =  {-1/8, -1/2,  1/8,  1/8, 1/2,  1/2},
		connect_right = { 1/8, -1/2, -1/8,  1/2, 1/2,  1/8},
	},
	connects_to = {"group:fence", "group:wood", "group:tree", "group:wall", "group:stone"},
	shgroup = "fence",
	groups = {fence = 1},
	sunlight_propagates = true,
	crafting = {
		amount = 16,
		recipe = {
			{"shapes:self", "shapes:self"},
			{"", ""},
			{"shapes:self", "shapes:self"},
		},
	},
})

-- walls
shapes:register_shapedef("wall", {
	description = "Wall",
	overlay = "shapes_df_wall_overlay.png",
	node_box = {
		type = "connected",
		fixed = {-1/4, -1/2, -1/4, 1/4, 1/2, 1/4},
		-- connect_bottom =
		connect_front = {-3/16, -1/2, -1/2,  3/16, 3/8, -1/4},
		connect_left = {-1/2, -1/2, -3/16, -1/4, 3/8,  3/16},
		connect_back = {-3/16, -1/2,  1/4,  3/16, 3/8,  1/2},
		connect_right = { 1/4, -1/2, -3/16,  1/2, 3/8,  3/16},
	},
	collision_box = {
		type = "connected",
		fixed = {-1/4, -1/2, -1/4, 1/4, 1/2, 1/4},
		-- connect_top =
		-- connect_bottom =
		connect_front = {-1/4,-1/2,-1/2,1/4,1/2,-1/4},
		connect_left = {-1/2,-1/2,-1/4,-1/4,1/2,1/4},
		connect_back = {-1/4,-1/2,1/4,1/4,1/2,1/2},
		connect_right = {1/4,-1/2,-1/4,1/2,1/2,1/4},
	},
	connects_to = {"group:fence", "group:wood", "group:tree", "group:wall", "group:stone"},
	shgroup = "pillar",
	groups = {wall = 1, not_in_creative_inventory = 0},
	sunlight_propagates = true,
	crafting = {
		amount = 12,
		recipe = {
			{"shapes:self", "shapes:self", "shapes:self"},
			{"shapes:self", "shapes:self", "shapes:self"},
		},
	},
})

-- panes
shapes:register_shapedef("pane_flat", {
	description = "Pane",
	node_box = {
		type = "fixed",
		fixed = {{-1/2, -1/2, -1/32, 1/2, 1/2, 1/32}},
	},
	connect_sides = {"left", "right"},
	shgroup = "pane",
	groups = {pane = 1},
	sunlight_propagates = true,
})

shapes:register_shapedef("pane", {
	description = "Pane",
	node_box = {
		type = "connected",
		fixed = {{-1/32, -1/2, -1/32, 1/32, 1/2, 1/32}},
		connect_front = {{-1/32, -1/2, -1/2, 1/32, 1/2, -1/32}},
		connect_left = {{-1/2, -1/2, -1/32, -1/32, 1/2, 1/32}},
		connect_back = {{-1/32, -1/2, 1/32, 1/32, 1/2, 1/2}},
		connect_right = {{1/32, -1/2, -1/32, 1/2, 1/2, 1/32}},
	},
	connects_to = {"group:pane", "group:stone", "group:glass", "group:wood", "group:tree"},
	shgroup = "pane",
	groups = {pane = 1},
	sunlight_propagates = true,
	drop = "shapes:shape_pane_flat",
})