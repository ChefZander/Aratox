local modpath = minetest.get_modpath("aratox")

local modules = {
"autohandle", 
"checks/speed-1", 
--"checks/fly-1"
}

for _, module in pairs(modules) do
    dofile(modpath .. "/" .. module .. ".lua")
end