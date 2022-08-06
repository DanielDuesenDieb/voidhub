if game.PlaceId == 1962086868 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Hub | Tower Of Hell", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

    -- Values
    _G.autoBuy = true

    -- Tabs
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
    
    -- Buttons
    MainTab:AddButton({
        Name = "Buy All",
        Callback = function()
            autoBuy()
        end    
    })
end
OrionLib:Init()

-- Invicibility -> game:GetService("ReplicatedStorage").buyMutator:InvokeServer("invincibility","regular")