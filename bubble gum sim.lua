if game.PlaceId == 2512643572 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({
        Name = "voidhub | Bubble Gum Sim",
        HidePremium = false,
        IntroEnabled = false,
        IntroText = "voidhub",
        SaveConfig = true,
        ConfigFolder = "OrionTest"
    })

    --Values

    _G.autoBlow = true
    _G.tpSell = true
    _G.autoHatch = true
    _G.selectEgg = ""

    --Functions

    function autoBlow()
        while _G.autoBlow == true do
            game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer("BlowBubble")
            wait(.0001)
         end
    end

    function tpIs()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(90.4342041015625, 898.9441528320312, -340.5690002441406)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(98.84481811523438, 5224.66845703125, -324.6422424316406)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111.38037109375, 11383.9404296875, -286.3329162597656)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(115.84274291992188, 21098.939453125, -332.9201354980469)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(121.7915267944336, 32131.94140625, -328.3973083496094)
        wait(1)
    end

    function tpSell()
        if _G.tpSell == true then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(75.10041809082031, 11383.9404296875, -315.7679443359375)
        end
    end

    function autoHatch()
        while _G.autoHatch == true do
            game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer(_G.selectEgg,1)
            wait(.0001)
        end
       end


    --Tabs

    local FarmTab = Window:MakeTab({
        Name = "Autofarm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local TeleportTab = Window:MakeTab({
        Name = "Teleports",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    --Toggles

    FarmTab:AddToggle({
        Name = "Auto Blow",
        Default = false,
        Callback = function(Value)
            _G.autoBlow = Value
            autoBlow()
        end
    })

    --Buttons 

    TeleportTab:AddButton({
        Name = "Tp to Sell",
        Callback = function()
            tpSell()
        end
    })

    TeleportTab:AddButton({
        Name = "Tp All Islands",
        Callback = function()
            tpIs()
        end
    })

    --Dropdowns

end
OrionLib:Init()