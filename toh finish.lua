wait(0.5)

if game.Players.LocalPlayer.Character:FindFirstChild("KillScript") then
   game.Players.LocalPlayer.Character:FindFirstChild("KillScript"):Destroy()
end

repeat wait() until not game.Players.LocalPlayer.Character:FindFirstChild("KillScript")

wait(3) 

game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Sine), {CFrame = CFrame.new(game:GetService("Workspace").tower.finishes.Finish.Position)}):Play()

--hi