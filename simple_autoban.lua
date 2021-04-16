minetest.register_on_cheat(function(player, cheat){
    minetest.ban_player(player:get_name(), "Aratox caught you cheating! (AntiCheat)")
})