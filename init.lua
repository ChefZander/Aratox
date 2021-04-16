local modpath = minetest.get_modpath("aratox")

local modules = {
--autihandle
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