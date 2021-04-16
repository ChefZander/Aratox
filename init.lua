local modpath = minetest.get_modpath("aratox")

local modules = {""}

for _, module in pairs(modules) do
    dofile(modpath .. "/" .. module .. ".lua")
end