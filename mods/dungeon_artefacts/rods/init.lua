
rods = {}



minetest.register_tool("rods:rod_of_blinking", {
	description = "Rod of blinking",
	range = 20.0,
	tool_capabilities = {},
	wield_image = "rod_3.png",
	inventory_image = "rod_3.png",
	on_use = function(itemstack, user, pointed_thing)
	   
	   local name = user:get_player_name()
	   if mana.get(name) > 60 and scrolls.cast("scrolls:teleportation", user, pointed_thing) then
		  mana.subtract(user:get_player_name(), 60)
	   end
	   return itemstack
	end,
})
