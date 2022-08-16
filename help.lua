if game.PlaceId == 8750997647 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
	local Window = OrionLib:MakeWindow({
		Name = "Tutorial Hub | Tapping Legends X!",
		HidePremium = false,
		SaveConfig = true,
		IntroText = " Orion Libary - Tapping Legends X ",
		ConfigFolder = "TutorialHub",
	})

--Values
_G.autoTap = true
_G.autoRebirth = true
_G.autoRebirth2 = true
_G.selectRebirth = "Rebirth 1"
_G.autoHatch = true
_G.autoHatchTriple = true
_G.selectEgg = "Basic Egg"
_G.alwaysequipBest = true


--Functions

function autoTap()
    while _G.autoTap == true do
        game:GetService("ReplicatedStorage").Remotes.Tap:FireServer()
        wait(.000000000000001)
     end
    end

function autoRebirth()
    while _G.autoRebirth == true do
        game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(1)
        wait(.000000000000001)
     end
end

function autoRebirth2()
	while _G.autoRebirth2 == true do
		game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(2)
		wait(.0000000000000000001)
	 end
end

function autoHatch()
    while _G.autoHatch == true do
        game:GetService("ReplicatedStorage").Remotes.BuyEgg:InvokeServer(_G.selectEgg,1)
        wait(.000000000000001)
    end
end

function autoHatchTripple()
    while _G.autoHatchTripple == true do
        game:GetService("ReplicatedStorage").Remotes.BuyEgg:InvokeServer(_G.selectEgg,3)
        wait(.000000000000001)
    end
end

function equipBest()
    game:GetService("ReplicatedStorage").Remotes.UnequipAll:InvokeServer()
    game:GetService("ReplicatedStorage").Remotes.EquipBest:InvokeServer()
end

function autoRebirth2()
	while _G.autoRebirth2 == true do
		game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(2)
		wait(.00000000000001)
	 end
end  

function autoequipBest()
    while _G.autoequipBest == true do
        game:GetService("ReplicatedStorage").Remotes.UnequipAll:InvokeServer()
        game:GetService("ReplicatedStorage").Remotes.EquipBest:InvokeServer()
        wait(30)
    end
end


-- Tabs



local FarmTab = Window:MakeTab({
	Name = "AutoFarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local EggsTab = Window:MakeTab({
	Name = "Eggs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MiscTab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})



-- Label




MiscTab:AddLabel("Auto Equip Best Pets Dont work right now!!!")



-- Toggels




FarmTab:AddToggle({
	Name = "Auto Tap",
	Default = false,
	Callback = function(Value)
		_G.autoTap = Value
        autoTap()
	end    
})


FarmTab:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
		_G.autoRebirth = Value
            autoRebirth()
	end    
})

EggsTab:AddToggle({
	Name = "Auto Hatch",
	Default = false,
	Callback = function(Value)
        _G.autoHatch = Value
            autoHatch()
	end    
})

EggsTab:AddToggle({
	Name = "Auto Hatch Tripple Eggs",
	Default = false,
	Callback = function(Value)
        _G.autoHatchTripple = Value
            autoHatchTripple()
	end    
})

MiscTab:AddToggle({
	Name = "Auto Equip Best Pets!",
	Default = false,
	Callback = function(Value)
        _G.alwaysequipBest = Values
            alwaysequipBest()
	end    
})






-- Dropdowns






FarmTab:AddDropdown({
	Name = "Select Rebirth",
	Default = "Rebirth 1",
	Options = {"Rebirth 1", "Rebirth 2"},
	Callback = function(Value)
		_G.selectRebirth = Value
        print(_G.selectRebirth)
	end    
})



EggsTab:AddDropdown({
	Name = "Select Egg",
	Default = "Egg1",
	Options = {"Egg 1", "Egg 2"},
	Callback = function(Value)
		_G.selectEgg = Value
        print(_G.selectEgg)
	end    
})







-- Buttons






MiscTab:AddButton({
	Name = "Equip Best Pets!",
	Callback = function()
      	equipBest()
    end 
})





end
OrionLib:Init()