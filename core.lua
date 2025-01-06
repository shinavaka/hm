local Tinkr, awful, project = ...

awful.DevMode = true

project.druid = {}
project.druid.guardian = awful.Actor:New({ spec = 3, class = "druid" })
