local Tinkr, awful, project = ...

awful.DevMode = true

project.druid = {}
project.druid.guardian = awful.Actor:New({ spec = 3, class = "druid" })
project.shaman = {}
project.shaman.ele = awful.Actor:New({ spec = 1, class = "shaman" })
