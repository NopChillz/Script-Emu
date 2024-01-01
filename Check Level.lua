wait(5)
print("[Script] Check Level Work !!")

function CheckLevel()
	while true do
		local oldlevel = game:GetService("Players").LocalPlayer.Data.Level.Value
		wait(60)
		local level = game:GetService("Players").LocalPlayer.Data.Level.Value
		if level == 2550 and oldlevel == 2550 then
			print("-------------------------------")
			print("[Loop Every 3 Minutes] !!")
			print("* Lv.Max | No Hop *")
			print("-------------------------------")
		elseif level == oldlevel then
			game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId)
			print("Hop Server Succeed")
		end
		print("Old Level : " ..oldlevel)
		print("Current Level : " ..level)
	end
end

CheckLevel()
