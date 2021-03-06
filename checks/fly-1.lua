local function fly_check(player)
    local name = player:get_player_name()
	local pos = player:get_pos()
	if not pos then return true end
	if minetest.check_player_privs(player:get_player_name(), {fly = true}) then
		return true
	end
	if minetest.get_node(pos).name == "air" and minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z}).name == "air" then
		local airnodes = minetest.find_nodes_in_area({x = pos.x - 2, y = pos.y - 2, z = pos.z - 2}, {x = pos.x + 2, y = pos.y + 2, z = pos.z + 2}, {"air"})
		local v = player:get_player_velocity()
		if #airnodes >= 125 and v.y >= 0 then
			return false
		end
	end

	return true
end

local oldpos = {}

local function posdel(player)
	if fly_check(player) then
		oldpos[player:get_player_name()] = nil
	else
		minetest.after(3, posdel, player)
	end
end

function aratox_checks.fly_1()
	local players = minetest.get_connected_players()
	for _, player in ipairs(players) do
		local name = player:get_player_name()
		local pos = player:get_pos()
		if not fly_check(player) then
			if oldpos[name] then
				player:set_pos(oldpos[name])
			end
            if not oldpos[name] then oldpos[name] = pos end
			minetest.kick_player(player:get_player_name(), "\n\nAratox caught you cheating! (AntiCheat)\n[FLY-1]")

			
			minetest.after(3, posdel, player)
		end
	end
end