if game.PlaceId == 10515724474 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({
        Name = "voidhub | Tapping Legends X (iso's version)",
        HidePremium = false,
        SaveConfig = true,
        ConfigFolder = "OrionTest",
    })

    --Values
    _G.autoClick = true
    --Tabs
    local MainTab = Window:MakeTab({
        Name = "Autofarm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local MiscTab = Window:MakeTab({
        Name = "Misc",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    --Functions
    function autoClick()
        while _G.autoClick == true do
        workspace.Events.AddClick:FireServer()
        wait(0.01)
        end
    end

    --Toggles
    MainTab:AddToggle({
        Name = "Auto Click",
        Default = false,
        Callback = function(Value)
            _G.autoClick = Value
            autoClick()
        end    
    })
end
OrionLib:Init()