if game.PlaceId == 1962086868 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "voidhub | Tower Of Hell", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

    -- Values
    _G.autoTop = true

    --Functions
    if _G.autoTop == true then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/offsetvoid/voidhub/main/toh%20finish.lua",true))()
    end
    -- Tabs
    local MainTab = Window:MakeTab({
        Name = "Main",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local MiscTab = Window:MakeTab({
        Name = "Misc",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    -- Buttons
    MainTab:AddButton({
        Name = "Go To Top",
        Callback = function()
            autoTop()
        end    
    })
end
OrionLib:Init()