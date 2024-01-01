wait(5)
print("[Script] Check Level Work !!")
local module = loadstring(game:HttpGet("https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua"))()

function FixNotFarm()
	while true do
		local oldlevel = game:GetService("Players").LocalPlayer.Data.Level.Value
		wait(300)
		local level = game:GetService("Players").LocalPlayer.Data.Level.Value
		if level == 2550 and oldlevel == 2550 then
			print("-------------------------------")
			print("[Loop Every 5 Minutes] !!")
			print("* Lv.Max | No Hop *")
			print("-------------------------------")
		elseif level == oldlevel then
			module:Teleport(game.PlaceId)
			print("Hop Server Succeed")
		end
		print("Old Level : " ..oldlevel)
		print("Current Level : " ..level)
	end
end

FixNotFarm()
