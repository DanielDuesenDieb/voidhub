local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Hub", "Ocean")

-- MAIN
local Main = Window:NewTab("FE")
local MainSection = Main:NewSection("FE")

MainSection:NewButton("front/back flip", "jim teknike", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/7wDcPtLk'))()
end)
MainSection:NewButton("Anti AFK", "No AFK", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/sDXcYFhR", true))()
end)

--TYCOON
local Main = Window:NewTab("Tycoons")
local MainSection = Main:NewSection("Tycoons")

MainSection:NewButton("Guillotine Tycoon", "you heard me", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Pikaruru/Scripts/main/GuillotineTycoon.lua"))()
end)

-- ACTION
local Main = Window:NewTab("Action")
local MainSection = Main:NewSection("Action")

MainSection:NewButton("Arsenal/Phantom Forces", "lol", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fusiongreg/BoltsHubV5/main/BoltsHubV5"))()
end)