wait(5)
print("[Script] Check Level Work !!")
local module = loadstring(game:HttpGet("https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua"))()

function FixNotFarm()
	while true do
		local fuckoldlevel = game:GetService("Players").LocalPlayer.Data.Level.Value
		wait(300)
		local currentlevelshit = game:GetService("Players").LocalPlayer.Data.Level.Value
		if currentlevelshit == 2550 and fuckoldlevel == 2550 then
			print("-------------------------------")
			print("[Loop Every 5 Minutes] !!")
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

FixNotFarm()
