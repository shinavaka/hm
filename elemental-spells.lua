local Unlocker, awful, project = ...
local ele = project.shaman.ele

local Spell = awful.Spell
awful.Populate({
    frostshock = Spell(196840),
}, ele, getfenv(1))

frostshock:Callback(function(spell)
    spell:Cast(target)
end)
