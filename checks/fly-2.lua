local cheatcount = {}

minetest.register_globalstep(function(dtime)
    local players = minetest.get_connected_players()
	for _, player in ipairs(players) do
		local name = player:get_player_name()
		local pos = player:get_pos()
        if minetest.check_player_privs(name, {fly = true}) then 
        
        else
            local velo = player:get_velocity()
            local vY = math.abs(velo.y)
            if(vY == 0 and 
                minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z}).name == "air" and 
                minetest.get_node({x = pos.x -1, y = pos.y - 1, z = pos.z}).name == "air" and 
                minetest.get_node({x = pos.x +1, y = pos.y - 1, z = pos.z}).name == "air" and 
                minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z -1}).name == "air" and 
                minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z +1}).name == "air" and 
                minetest.get_node({x = pos.x +1, y = pos.y - 1, z = pos.z +1}).name == "air" and 
                minetest.get_node({x = pos.x -1, y = pos.y - 1, z = pos.z -1}).name == "air" and 
                minetest.get_node({x = pos.x +1, y = pos.y - 1, z = pos.z -1}).name == "air" and 
                minetest.get_node({x = pos.x -1, y = pos.y - 1, z = pos.z +1}).name == "air"
                ) then
                if cheatcount[name] == nil then
                    cheatcount[name] = 1
                elseif cheatcount[name] == 1 then
                    cheatcount[name] = 2
                elseif cheatcount[name] == 2 then
                    cheatcount[name] = 3
                elseif cheatcount[name] == 3 then
                    cheatcount[name] = 4
                elseif cheatcount[name] == 4 then
                    cheatcount[name] = 5
                elseif cheatcount[name] == 5 then
                    minetest.kick_player(name, "\n\nAratox caught you cheating! (AntiCheat)\n[FLY-2]")
                    cheatcount[name] = nil
                end
            end
        end
        
	end
end)