local Unlocker, awful, project = ...
local guardian = project.druid.guardian

print("Guardian Druid loaded!")

-- Initialize variables for jump timer
local nextJumpTime = 0
local function getRandomJumpInterval()
    return math.random(1, 35)
end

-- Combat routine
guardian:Init(function()
    -- Check if we're level 60, if so logout
    --if awful.player.level >= 70 then
      --  print("Reached level 70! Logging out...")
        --Logout()
       -- return
    --end

    -- Check if it's time to jump
    if awful.time >= nextJumpTime then
        JumpOrAscendStart()
        nextJumpTime = awful.time + getRandomJumpInterval()
    end

    local target = awful.target
    if target then
        --print("Current target ID:", target.id)
        if target.id == 80018 and target.distance <= 40 and target.hp > 0 then
            --print("Found correct target within range and alive")
            moonfire()
        else
            -- Try to find and target the enemy we want
            local units = awful.units
            if units then
                for _, unit in ipairs(units) do
                    if unit.id == 80018 and unit.distance <= 40 and unit.hp > 0 then
                        --print("Found target enemy alive, targeting it")
                        TargetUnit(unit.guid)
                        return
                    end
                end
            end
        end
    else
        print("No target")
    end
end)
