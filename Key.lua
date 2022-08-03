local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({ Name = "Key System", HidePremium = false, SaveConfig = true, IntroText = false })

OrionLib:MakeNotification({
    Name = "Logged in!",
    Content = "You are logged in as " .. Player.Name .. ".",
    Image = "rbxassetid://4483345998",
    Time = 5,
})

_G.Key = "mom"
_G.KeyInput = "string"

function MakeScriptHub()
    local Window1 =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/offsetvoid/Hub/main/games%20supported.lua", true))()
end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key",
        Content = "You have entered the correct key!",
        Image = "rbxassetid://4483345998",
        Time = 5,
    })
end

function IncorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Incorrect Key",
        Content = "You have entered the incorrect key!",
        Image = "rbxassetid://4483345998",
        Time = 5,
    })
end

local Tab = Window:MakeTab({
    Name = "Key",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false,
})

local ChangelogTab = Window:MakeTab({
    Name = "Changelogs",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false,
})

local SupportedGamesTab = Window:MakeTab({
    Name = "Supported Games",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false,
})

Tab:AddTextbox({
    Name = "Enter Key",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        _G.KeyInput = Value
    end,
})

Tab:AddButton({
    Name = "Check Key",
    Callback = function()
        if _G.KeyInput == _G.Key then
            MakeScriptHub()
            CorrectKeyNotification()
            OrionLib:Destroy()
        else
            IncorrectKeyNotification()
        end
    end,
})

Tab:AddLabel("void and izzy for life!")
Tab:AddLabel("NOTICE: NOT ALL SCRIPTS ARE THE SAME GUI!!!")
SupportedGamesTab:AddLabel("Supported Games: Tapping Legends (Arsenal Soon lol)")
ChangelogTab:AddLabel("     Verison 0.0.1     ")
ChangelogTab:AddLabel("+ Supported Games tab")
OrionLib:Init()