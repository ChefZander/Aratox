--[[
Aratox
Copyright (C) 2021  Zander_200
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.
This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.
You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
]]--

local cheatcount = {}

function aratox_checks.fly_2()
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
end