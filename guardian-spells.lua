local Unlocker, awful, project = ...
local guardian = project.druid.guardian

local Spell = awful.Spell
awful.Populate({
    moonfire = Spell(8921),
}, guardian, getfenv(1))

moonfire:Callback(function(spell)
    spell:Cast(target)
end)