local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({ Name = "voidhub Key System", HidePremium = true, SaveConfig = true, IntroText = "voidhub" })

OrionLib:MakeNotification({
    Name = "Logged in!",
    Content = "You are logged in as " .. Player.Name .. ".",
    Image = "rbxassetid://4483345998",
    Time = 5,
})

_G.Key = "efhefc"
_G.KeyInput = "string"

function MakeScriptHub()
    local Window1 =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/voidisdaddy/Gchecker/main/Protected.lua",true))()
    game:GetService("CoreGui").Orion:Destroy()
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
        else
            IncorrectKeyNotification()
        end
    end,
})

Tab:AddButton({
    Name = "Discord Server",
    Callback = function()
              setclipboard("https://discord.gg/6pHDHyDMj2")
      end    
})

Tab:AddLabel("NOTICE: NOT ALL SCRIPTS ARE THE SAME GUI!!!")
SupportedGamesTab:AddParagraph("Supported Games: ", "Tapping Legends, Prison Life, Lifting Sim")
SupportedGamesTab:AddLabel("games soon: clicker madness and find the memes")

ChangelogTab:AddParagraph("                                   Verison 0.0.71(beta)"," + new key change, + fixing clicker madness, + new game soon")
OrionLib:Init()

-- Roblox LSP -> https://discord.com/channels/996611195199037570/997588188895924264/1005598829254541392