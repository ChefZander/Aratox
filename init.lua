local modpath = minetest.get_modpath("aratox")

local modules = {
"autohandle", 
"speed-1", 
"fly-1"
}

for _, module in pairs(modules) do
    dofile(modpath .. "/" .. module .. ".lua")
end