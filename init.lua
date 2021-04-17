local version = "1.1.0"

local modpath = minetest.get_modpath("aratox")

local modules = {
--autohandle
"autohandle", 

--speed
"checks/speed-1", 

--fly
"checks/fly-1",
"checks/fly-2",
}

for _, module in pairs(modules) do
    dofile(modpath .. "/" .. module .. ".lua")
end

minetest.register_chatcommand("aratox", {
    description = "Returns The Current Version Of The Installed Aratox Anticheat",
    params = "",
    privs = {shout = true},
    func = function(playername, param)
        minetest.chat_send_player(playername, "Aratox Anticheat v" .. version .. " (~Zander_200)")
    end,
})