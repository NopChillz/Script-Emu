local requests = (syn and syn.request) or (krnl and request) or (fluxus and fluxus.request) or (electron and http.request) or request or http.request
local HttpService = game:GetService("HttpService")
local url = "http://192.168.1.43/saveData.php"

local function sendDataToServer(data)
    local jsonData = HttpService:JSONEncode(data)
    local response = requests({
        Url = url,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = jsonData
    })

    if response then
        print("Response status code:", response.StatusCode)
        print("Response body:", response.Body)
		print(jsonData)
    else
        print("Error: No response received")
    end
end

local WorldText = '1'

local placeId = game.PlaceId
if placeId == 2753915549 then
	WorldText = '1'
elseif placeId == 4442272183 then
	WorldText = '2'
elseif placeId == 7449423635 then
	WorldText = '3'
end

local function CheckLogRaceV()
	RaceVText = '1'
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Awakening") or game.Players.LocalPlayer.Character:FindFirstChild("Awakening") then
		RaceVText = '4'
	elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == -2 then
		RaceVText = '3'
	elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3") == -2 then
		RaceVText = '2'
	end
	return RaceVText
end

local dataToSend = {
    player = game.Players.LocalPlayer.Name,
    level = game.Players.LocalPlayer.Data.Level.Value,
	money =  game:GetService("Players").LocalPlayer.Data.Beli.Value,
	Fragment = game:GetService("Players").LocalPlayer.Data.Fragments.Value,
	World = WorldText,
	Race = game:GetService("Players").LocalPlayer.Data.Race.Value,
	RaceV = CheckLogRaceV(),
}

sendDataToServer(dataToSend)
