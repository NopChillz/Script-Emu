while true do
    local plr = game.Players.LocalPlayer ; 

    local oldCFrame = plr.Character.HumanoidRootPart.CFrame
    wait(10)
    local currentCFrame = plr.Character.HumanoidRootPart.CFrame
	print(oldCFrame)
	print(currentCFrame)
    end
end
