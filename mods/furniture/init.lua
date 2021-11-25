furniture = {}

furniture.parts = {
	{
		name = "tall_table",
		description = "Tall Table",
		node_box = {
			{-0.5, 0.4375, -0.5, 0.5, 0.5, 0.5}, -- Top
			{0.3125, -0.5, -0.4375, 0.4375, 0.4375, -0.3125}, -- Leg_1
			{0.3125, -0.5, 0.3125, 0.4375, 0.4375, 0.4375}, -- Leg_2
			{-0.4375, -0.5, -0.4375, -0.3125, 0.4375, -0.3125}, -- Leg_3
			{-0.4375, -0.5, 0.3125, -0.3125, 0.4375, 0.4375}, -- Leg_4
		},
	},
	{
		name = "short_table",
		description = "Short Table",
		node_box = {
			{-0.5, 0, -0.5, 0.5, 0.0625, 0.5}, -- Top
			{0.3125, -0.5, -0.4375, 0.4375, 0, -0.3125}, -- Leg_1
			{-0.4375, -0.5, 0.3125, -0.3125, 0, 0.4375}, -- Leg_2
			{0.3125, -0.5, 0.3125, 0.4375, 0, 0.4375}, -- Leg_3
			{-0.4375, -0.5, -0.4375, -0.3125, 0, -0.3125}, -- Leg_4
		},
	},
}

function furniture.register_for_base(base_node)
	local base_definition = minetest.registered_nodes[base_node]
	
	for _, part in ipairs(furniture.parts) do
		-- We get an iterator function over substrings split by :
		local base_node_full_name = string.gmatch(base_node, "([^:]+)")
	
		-- First call will give us the modname
		local base_node_modname = base_node_full_name()
		-- and the second will give us the node name
		local base_node_name = base_node_full_name()		

		local part_name = "furniture:" .. base_node_name .. "_" .. part.name
		local part_description = base_definition.description .. " " .. part.description

		minetest.register_node(part_name, {
			description = part_description,

			tiles = base_definition.tiles,
			groups = base_definition.groups,

			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			node_box = {
				type = "fixed",
				fixed = part.node_box,
			}
		})
	end
end

-- For testing
furniture.register_for_base("default:stone")
furniture.register_for_base("default:wood")
furniture.register_for_base("default:tree")
