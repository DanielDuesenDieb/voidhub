if game.PlaceId == 10515724474 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "voidhub | Tapping Legends X (iso's version)", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

    --Values
    _G.autoClick

    --Tabs
    local MainTab = Window:MakeTab({
        Name = "Main",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
end
OrionLib:Init()