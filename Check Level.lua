repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
print("[Script] Auto Server Hop - Check Level Every 10 Minutes")

local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local PLACE_ID = game.PlaceId
local CURRENT_JOB_ID = game.JobId
local MAX_LEVEL = 2800
local CHECK_INTERVAL = 10 -- 10 minutes

local function ServerHop()
	local success, result = pcall(function()
		return HttpService:JSONDecode(game:HttpGet(
			string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Asc&limit=100", PLACE_ID)
		))
	end)

	if not success or not result or not result.data then
		warn("[Hopping] Failed to fetch servers, retrying in 5s...")
		task.wait(5)
		return ServerHop()
	end

	local availableServers = {}
	for _, server in ipairs(result.data) do
		if server.id ~= CURRENT_JOB_ID and server.playing < server.maxPlayers then
			table.insert(availableServers, server.id)
		end
	end

	if #availableServers == 0 then
		warn("[Hopping] No available servers found, retrying in 5s...")
		task.wait(5)
		return ServerHop()
	end

	local targetServer = availableServers[math.random(1, #availableServers)]
	print("[Hopping] Teleporting to new server...")

	local hopSuccess = pcall(function()
		TeleportService:TeleportToPlaceInstance(PLACE_ID, targetServer, LocalPlayer)
	end)

	if not hopSuccess then
		warn("[Hopping] Teleport failed, retrying...")
		task.wait(3)
		return ServerHop()
	end
end

-- Main Loop
while true do
	local oldLevel = LocalPlayer.Data.Level.Value
	print(string.format("[Check] Old Level: %d", oldLevel))

	task.wait(CHECK_INTERVAL)

	local currentLevel = LocalPlayer.Data.Level.Value
	print(string.format("[Check] Current Level: %d", currentLevel))

	if currentLevel == MAX_LEVEL and oldLevel == MAX_LEVEL then
		print("[Status] Level Max - No Hop Needed")
	elseif currentLevel == oldLevel then
		warn("[Status] Level Not Changed - Initiating Server Hop...")
		ServerHop()
		break -- Exit loop after hop attempt
	else
		print("[Status] Level Changed - Farming Working Normally")
	end

	task.wait(1)
end
