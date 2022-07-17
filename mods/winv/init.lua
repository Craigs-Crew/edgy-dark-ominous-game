winv = {}
winv.default = {}
winv.default.left = "crafting"
winv.default.right = "player"
winv.inventories = {}
winv.inventories_order = {}

-- store registrations
function winv:register_inventory(name, def)
	if winv.inventories[name] then
		return minetest.log("error", "[winv] Error registering inventory, '"..name.."' already exists!")
	end
	local bdata
	if def.button then -- compress button data if it exists
		local bdef = def.button
		bdata = {
			texture = bdef.texture,
			pressed_texture = bdef.texture,
			label = bdef.label or "",
			tooltip = bdef.tooltip or name,
		}
	end
	
	local formspec = nil
	if def.formspec then
		formspec = table.concat(def.formspec)
	end
	winv.inventories[name] = {
		lists = def.lists,
		button = bdata,
		formspec = formspec or nil,
		formspec_func = def.formspec_func,
		on_player_receive_fields = def.on_player_receive_fields
	}
end

winv:register_inventory("crafting", {
	lists = {
		{"winv_craft", 3 * 3},
		{"winv_craftresult", 2 * 2},
	},
	button = {
		texture = "winv_icon_craft.png",
		tooltip = "Crafting Grid",
	},
	formspec = {
		"image[0,0;7.75,7.75;winv_bg.png]",
		"list[current_player;winv_craft;0.25,2;3,3;]",
		"image[4,3.25;1,1;gui_arrow.png^[transformFYR90]",
		"list[current_player;winv_craftresult;5.25,2.75;2,2;]",
	},
})

winv:register_inventory("player", {
	lists = {
		{"main", 6 * 6},
	},
	button = {
		texture = "winv_icon_player.png",
		tooltip = "Player Inventory",
	},
	formspec =  {
		"image[0,0;7.75,7.75;winv_bg.png]",
		--"box[0,0;7.75,7.75;#606060CC]",
		"list[current_player;main;0.25,0.25;6,6;]",
	},
})

local path = minetest.get_modpath("winv")
--dofile(path.."/remote.lua")

-- create nav buttons
function nav_buttons(incre, side)
	local invamt = #winv.inventories
	local buttonform = ""
	local invno = 0
	for invname, invdata in pairs(winv.inventories) do
		if invdata.button then
			local bdef = invdata.button
			buttonform = buttonform.."image_button["..0.1 + (invno * 0.6) + incre..",-0.6;0.5,0.5;"..bdef.texture..";winv_"..invname.."_"..side..";"..bdef.label..";true;false;"..bdef.pressed_texture.."]"..
				"tooltip[winv_"..invname.."_"..side..";"..bdef.tooltip.."]"
			invno = invno + 1
		end
	end
	
	return buttonform
end

-- construct inventory
local function init_inventory(player, node)
	local meta = player:get_meta()
	if meta:get_string("winv:left") == "" or meta:get_string("winv:right") == "" then
		meta:set_string("winv:left", winv.default.left)
		meta:set_string("winv:right", winv.default.right)
	end
	
	local idata = winv.inventories
	local left_inv = idata[meta:get_string("winv:left")].formspec
	local right_inv = idata[meta:get_string("winv:right")].formspec
	
	if idata[meta:get_string("winv:left")].formspec_func then
		left_inv = idata[meta:get_string("winv:left")].formspec_func(player)
	end
	
	if idata[meta:get_string("winv:right")].formspec_func then
		right_inv = idata[meta:get_string("winv:right")].formspec_func(player)
	end
	
	if node then
		return
			"formspec_version[4]"..
			"size[17.75, 7.75]"..
			"bgcolor[#00000000;neither]"..
			"container[0,0]"..
				node..
			"container_end[]"..
			nav_buttons(10, "right")..
			"container[10,0]"..
				right_inv..
			"container_end[]"
	elseif not node then
		return
			"formspec_version[4]"..
			"size[17.75, 7.75]"..
			"bgcolor[#00000000;neither]"..
			nav_buttons(0, "left")..
			"container[0,0]"..
				left_inv..
			"container_end[]"..
			nav_buttons(10, "right")..
			"container[10,0]"..
				right_inv..
			"container_end[]"
	end
end

function winv.receive_fields(player, formname, fields, node)
	local meta = player:get_meta()
	for invname, invdata in pairs(winv.inventories) do
		if fields["winv_"..invname.."_left"] then
			meta:set_string("winv:left", invname)
			local invform = init_inventory(player, node)
			player:set_inventory_formspec(invform)
		elseif fields["winv_"..invname.."_right"] then
			meta:set_string("winv:right", invname)
			local invform = init_inventory(player, node)
			if not node then
				player:set_inventory_formspec(invform)
			else
				return invform
			end
		end
		
		if invdata.on_player_receive_fields then
			invdata.on_player_receive_fields(player, formname, fields)
		end
	end
end

minetest.register_on_player_receive_fields(function(player, formname, fields)
	winv.receive_fields(player, formname, fields)
end)

minetest.register_on_joinplayer(function(player)
	-- Set formspec prepend
	player:set_formspec_prepend([[
		listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]
	]])
	-- Set hotbar textures
	player:hud_set_hotbar_image("gui_hotbar.png")
	player:hud_set_hotbar_selected_image("gui_hotbar_selected.png")
	-- Set hotbar size
	player:hud_set_hotbar_itemcount(12)
	
	-- initialize inventory sizes
	local meta = player:get_meta()
	local inv = player:get_inventory()
	for invname, invdata in pairs(winv.inventories) do
		if invdata.lists then
			for i, ldata in pairs(invdata.lists) do
				inv:set_size(ldata[1], ldata[2])
			end
		end
	end
	-- construct inventory
	local invform = init_inventory(player)
	player:set_inventory_formspec(invform)
end)