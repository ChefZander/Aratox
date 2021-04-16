local modpath = minetest.get_modpath("aratox")

local modules = {"autohandle", "antispeed", "antifly"}

for _, module in pairs(modules) do
    dofile(modpath .. "/" .. module .. ".lua")
end

function ban(playername, reason)
    minetest.registered_chatcommands["ban"].func(playername, reason)
end