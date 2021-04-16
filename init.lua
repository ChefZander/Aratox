local modpath = minetest.get_modpath("aratox")

local modules = {
--autohandle
"autohandle", 

--speed
"checks/speed-1", 

--fly
"checks/fly-1",
"checks/fly-2",

--noclip (dont use, buggy)
--"checks/noclip-1",
}

for _, module in pairs(modules) do
    dofile(modpath .. "/" .. module .. ".lua")
end