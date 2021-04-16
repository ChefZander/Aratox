minetest.register_on_cheat(function(player, cheat)
    minetest.ban_player(player:get_player_name(), "a")
)
