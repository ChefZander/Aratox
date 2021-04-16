minetest.register_on_cheat(function(player, cheat)
    minetest.kick_player(player:get_player_name(), "\n\nAratox caught you cheating! (AntiCheat)\n[VANILLA]")
end)