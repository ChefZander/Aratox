minetest.register_globalstep(function(dtime)
	local players = minetest.get_connected_players()
	for _, player in ipairs(players) do
		local name = player:get_player_name()
		local pos = player:get_pos()
		if minetest.check_player_privs(name, {noclip = true}) then
            
        else
            --check
        end
	end
end)