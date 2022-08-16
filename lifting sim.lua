if game.PlaceId == 3652625463 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({
        Name = "voidhub | Lifting Sim",
        HidePremium = false,
        IntroEnabled = false,
        IntroText = "voidhub",
        SaveConfig = true,
        ConfigFolder = "OrionTest"
    })


    --Values

    _G.autoClick = true
    _G.tpShop = true

    --Functions

    function autoClick()
        while _G.autoClick == true do
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"GainMuscle"})
            wait(000.1) 
        end
    end

    function tpShop()
        if _G.tpShop == true then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-644.515259, -53.8859596, 1775.98889, -0.998535812, 1.09035774e-07, 0.054094933, 1.05884375e-07, 1, -6.11228543e-08, -0.054094933, -5.53055486e-08, -0.998535812)
        end
    end
    --Tabs

    local MainTab = Window:MakeTab({
        Name = "Main",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local TeleportTab = Window:MakeTab({
        Name = "Teleports",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    --Toggles
    MainTab:AddToggle({
        Name = "Auto Click",
        Default = false,
        Callback = function(Value)
            _G.autoClick = Value
            autoClick()
        end
    })

    --Buttons
    TeleportTab:AddButton({
        Name = "Tp to Shop",
        Callback = function()
            tpShop()
        end    
    })

end
OrionLib:Init()