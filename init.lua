--[[
Aratox
Copyright (C) 2021  Zander_200
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.
This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.
You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
]]--

local version = "1.1.0"

local modpath = minetest.get_modpath("aratox")
aratox_checks = {}

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
        minetest.chat_send_player(playername, "Aratox Anticheat v" .. version .. " (~Chef Zander)")
    end,
})

minetest.register_globalstep(function(dtime)
    --fly
    aratox_checks.fly_1()
    aratox_checks.fly_2()

    --speed
    aratox_checks.speed_1()

end)
