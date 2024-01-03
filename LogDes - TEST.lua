while true do
    local plr = game.Players.LocalPlayer 

    local oldCFrame = plr.Character.HumanoidRootPart.CFrame.Position
    wait(10)
    local currentCFrame = plr.Character.HumanoidRootPart.CFrame.Position
	print(oldCFrame)
	print(currentCFrame)
end
