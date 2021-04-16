minetest.register_on_cheat(function(player, cheat)
    minetest.kick_player(player:get_player_name(), "Aratox caught you cheating! (AntiCheat)")
end)