wait(5)
print("[Script] Check Level Work and Don'tFarm !!")
local module = loadstring(game:HttpGet("https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua"))()

function FixNotFarm()
	while true do
		local fuckoldlevel = game:GetService("Players").LocalPlayer.Data.Level.Value
		wait(420)
		local currentlevelshit = game:GetService("Players").LocalPlayer.Data.Level.Value
		if currentlevelshit == 2550 and fuckoldlevel == 2550 then
			print("-------------------------------")
			print("[Loop Every 7 Minutes] !!")
			print("* Lv.Max | No Hop *")
			print("-------------------------------")
		elseif currentlevelshit == fuckoldlevel then
			module:Teleport(game.PlaceId)
			print("Hop Server Succeed")
		end
		print("Old Level : " ..fuckoldlevel)
		print("Current Level : " ..currentlevelshit)
	end
end

function CheckCFrameNotFarm()
	while true do
		local plr = game.Players.LocalPlayer 

		local oldCFrame = plr.Character.HumanoidRootPart.CFrame.Position
		wait(600)
		local currentCFrame = plr.Character.HumanoidRootPart.CFrame.Position

		if currentCFrame ~= oldCFrame then
			print("Farm Work !!")
		elseif currentCFrame == oldCFrame then
			print("Hop Current CFrame == Old CFrame")
			module:Teleport(game.PlaceId)
		end
	end
end

FixNotFarm()
CheckCFrameNotFarm()
