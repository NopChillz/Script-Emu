print("[Script] Check Level Work !!")
local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()

function CheckLevel()
	while true do
		local oldlevel = game:GetService("Players").LocalPlayer.Data.Level.Value
		wait(300)
		local level = game:GetService("Players").LocalPlayer.Data.Level.Value
		if level == oldlevel then
			module:Teleport(game.PlaceId)
			print("Hop Server Succeed")
		else
			print("-------------------------------")
			print("[Loop : Every 3 Minutes]")
			print("Old Level : " ..oldlevel)
			print("Current Level :" ..level)
			print("-------------------------------")
		end
	end
end

CheckLevel()
