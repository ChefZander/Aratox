minetest.register_on_cheat(function(player, cheat)
    minetest.registered_chatcommands["ban"].func(player:get_player_name(), "Aratox caught you cheating! (AntiCheat)")
end)