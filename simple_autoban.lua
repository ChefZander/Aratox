minetest.register_on_cheat(function(ObjectRef, cheat){
    minetest.ban_player(ObjectRef:get_name(), "Aratox caught you cheating! (AntiCheat)")
})