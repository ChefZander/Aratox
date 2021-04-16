local oldpos = {}

minetest.register_globalstep(function(dtime)
    local players = minetest.get_connected_players()
	for _, player in ipairs(players) do
		local name = player:get_player_name()
		local pos = player:get_pos()
        local velo = player:get_velocity()
        local vY = math.abs(velo.y)
		if(vY == 0 and minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z}).name == "air") then
            if oldpos[name] == nil then
                oldpos[name] = pos
            else
                if(vY == 0) then 
                    -- cheating
                    minetest.kick_player(name, "\n\nAratox caught you cheating! (AntiCheat)\n[FLY-2]")
                end
            end
        end
	end
end)

