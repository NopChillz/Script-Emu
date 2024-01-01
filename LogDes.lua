getgenv().Settings = {
    Show_Item_Settings = {
        Godhuman = true,  -- true or false
        Soul_Guitar = false,  -- true or false
		Valkyrie_Helm = true,
        Cursed_Dual_Katana = true,
    },
    Show_Material_Settings = {
        Mirror_Fractal = true,
    },
    Delay_Settings = {
        Enabled = true, -- true or false
        CheckingDelay = 60,
    },
    AutoRejoin = true,
}

repeat wait(.25) until game:IsLoaded() and game.Players.LocalPlayer.Character and game.Players.LocalPlayer:FindFirstChild("Backpack") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer:FindFirstChild("PlayerGui") and game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main") and pcall(function() return game.Players.LocalPlayer.Idled end)
repeat wait()
	pcall(function()
		join = game.Players.localPlayer.Neutral == false
		if _G.Team == "Pirates" then
			for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
				for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton[v])) do
					v.Function()
				end
			end
		elseif _G.Team == "Marines" then
			for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
				for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton[v])) do
					v.Function()
				end
			end
		else
			for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
				for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton[v])) do
					v.Function()
				end
			end
		end
	end)
until game.Players.LocalPlayer.Team ~= nil

local function Connect()
    print('[ NopChillz Service ] (Connect) : [1 / 5] : ✅')
    wait(0.5)
    print('[ NopChillz Service ] (Connect) : [2 / 5] : ✅')
    wait(0.5)
    print('[ NopChillz Service ] (Connect) : [3 / 5] : ✅')
    wait(0.5)
    print('[ NopChillz Service ] (Connect) : [4 / 5] : ✅')
    wait(0.5)
    print('[ NopChillz Service ] (Connect) : [5 / 5] : ✅')
    wait(0.5)
    Nexus_Version = 104
    loadstring(game:HttpGet"https://raw.githubusercontent.com/ic3w0lf22/Roblox-Account-Manager/master/RBX%20Alt%20Manager/Nexus/Nexus.lua")()
    task.spawn(function()
        Nexus:Connect()
    end)
    warn('[ NopChillz Service ] : Success executed script!')
end;

Connect() -- Load script

--
local requests = (syn and syn.request) or (krnl and request) or (fluxus and fluxus.request) or (electron and http.request) or request or http.request
local host = "http://localhost:7963"
local Port = "7963"
getgenv().Local=function(data)
    if data==1 then return game.Players.LocalPlayer.Name end
    if data==2 then return game.Players.LocalPlayer.UserId end
end
local json_encode = function(data)
    return game:GetService("HttpService"):JSONEncode(data)
end
getgenv().SetAlias=function(Alias)
    local SetAlias = requests({
        Url = host.."/SetAlias?Account="..getgenv().Local(2),
        Method = "POST",
        Body = Alias,
    })
    print("Changed Alias to : "..Alias)
    return SetAlias
end

getgenv().SetDescription=function(Description)
    local SetDescription = requests({
        Url = host.."/SetDescription?Account="..getgenv().Local(2),
        Method = "POST",
        Body = Description,
    })
    print("Changed Description to : "..Description)
    return SetDescription
end

spawn(function()
    while true do wait()
        local x, p = pcall(function()
            Nexus:CreateButton("World1btn", "World 1", {100, 40})
            Nexus:CreateButton("World2btn", "World 2", {100, 40})
            Nexus:CreateButton("World3btn", "World 3", {205, 40})
            Nexus:CreateButton("Rejoinbtn", "Rejoin", {100, 40})
            Nexus:CreateButton("Shutdownbtn", "Game Shutdown", {100, 40})
        end)
        if x then break end
    end
end)

local SkillAwake = '❌'
local WorldText = '1'

local placeId = game.PlaceId
if placeId == 2753915549 then
	WorldText = '1'
elseif placeId == 4442272183 then
	WorldText = '2'
elseif placeId == 7449423635 then
	WorldText = '3'
end

local formatNumber = (function (n) n = tostring(n) return n:reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "") end) 

function Abbreviate(x)
    local abbreviations = {
        "K", -- 4 digits
        "M", -- 7 digits
        "B", -- 10 digits
        "T", -- 13 digits
        "QD", -- 16 digits
        "QT", -- 19 digits
        "SXT", -- 22 digits
        "SEPT", -- 25 digits
        "OCT", -- 28 digits
        "NON", -- 31 digits
        "DEC", -- 34 digits
        "UDEC", -- 37 digits
        "DDEC", -- 40 digits
    }
    if x < 1000 then 
        return tostring(x)
    end

    local digits = math.floor(math.log10(x)) + 1
    local index = math.min(#abbreviations, math.floor((digits - 1) / 3))
    local front = x / math.pow(10, index * 3)

    return string.format("%i%s", front, abbreviations[index])
end

task.spawn(function()
    while true do wait(2)
        pcall(function()
            for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") then
                    if v.ToolTip == "Blox Fruit" then
                        if v:FindFirstChild("AwakenedMoves") then
                            if v.AwakenedMoves:FindFirstChild("Z") then
                                AwakeZ = true
                            end
                            if v.AwakenedMoves:FindFirstChild("X") then
                                AwakeX = true
                            end
                            if v.AwakenedMoves:FindFirstChild("C") then
                                AwakeC = true
                            end
                            if v.AwakenedMoves:FindFirstChild("V") then
                                AwakeV = true
                            end
                            if v.AwakenedMoves:FindFirstChild("F") then
                                AwakeF = true
                            end
                            if v.AwakenedMoves:FindFirstChild("TAP") then
                                AwakeTAP = true
                            end
                            if v.Name == "Dough-Dough" then
                                if AwakeZ == true and AwakeX == true and AwakeC == true and AwakeV == true and AwakeF == true and AwakeTAP == true then
                                    SkillAwake = "✔️"
                                else
                                    SkillAwake = "❌"
                                end
                            else
                                if (AwakeZ == true and AwakeX == true and AwakeC == true and AwakeV == true and AwakeF == true) or (AwakeZ == true and AwakeX == true and AwakeC == true and AwakeV == true) then
                                    SkillAwake = "✔️"
                                else
                                    SkillAwake = "❌"
                                end
                            end
                        else
                            SkillAwake = "Can't Awakened"
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.DevilFruit.Value == '' then
                        SkillAwake = "Don't have Fruit"
                    end
                end
            end
        end)
    end
end)

local function GetNewAwake()
    AwakeText = ''
    pcall(function()
        for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") then
                if v.ToolTip == "Blox Fruit" then
                    if v:FindFirstChild("AwakenedMoves") then
                        if v.AwakenedMoves:FindFirstChild("Z") then
                            AwakeZ = true
                        end
                        if v.AwakenedMoves:FindFirstChild("X") then
                            AwakeX = true
                        end
                        if v.AwakenedMoves:FindFirstChild("C") then
                            AwakeC = true
                        end
                        if v.AwakenedMoves:FindFirstChild("V") then
                            AwakeV = true
                        end
                        if v.AwakenedMoves:FindFirstChild("F") then
                            AwakeF = true
                        end
                        if v.AwakenedMoves:FindFirstChild("TAP") then
                            AwakeTAP = true
                        end
                        if v.Name == "Dough-Dough" then
                            if AwakeZ == true and AwakeX == true and AwakeC == true and AwakeV == true and AwakeF == true and AwakeTAP == true then
                                AwakeText = "Full "..string.split(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value,"-")[2].." ["..game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value.."]"
                            else
                                AwakeText = string.split(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value,"-")[2].." ["..game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value.."]"
                            end
                        else
                            if (AwakeZ == true and AwakeX == true and AwakeC == true and AwakeV == true and AwakeF == true) or (AwakeZ == true and AwakeX == true and AwakeC == true and AwakeV == true) then
                                AwakeText = "Full "..string.split(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value,"-")[2].." ["..game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value.."]"
                            else
                                AwakeText = string.split(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value,"-")[2].." ["..game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value.."]"
                            end
                        end
                    else
                        AwakeText = string.split(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value,"-")[2].." ["..game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value.."]"
                    end
                elseif game:GetService("Players").LocalPlayer.Data.DevilFruit.Value == '' then
                    AwakeText = "Don't have Fruit"
                end
            end
        end
        for i ,v in pairs(game:GetService("Workspace").Characters[game.Players.LocalPlayer.Name]:GetChildren()) do
            if v:IsA("Tool") then
                if v.ToolTip == "Blox Fruit" then
                    if v:FindFirstChild("AwakenedMoves") then
                        if v.AwakenedMoves:FindFirstChild("Z") then
                            AwakeZ = true
                        end
                        if v.AwakenedMoves:FindFirstChild("X") then
                            AwakeX = true
                        end
                        if v.AwakenedMoves:FindFirstChild("C") then
                            AwakeC = true
                        end
                        if v.AwakenedMoves:FindFirstChild("V") then
                            AwakeV = true
                        end
                        if v.AwakenedMoves:FindFirstChild("F") then
                            AwakeF = true
                        end
                        if v.AwakenedMoves:FindFirstChild("TAP") then
                            AwakeTAP = true
                        end
                        if v.Name == "Dough-Dough" then
                            if AwakeZ == true and AwakeX == true and AwakeC == true and AwakeV == true and AwakeF == true and AwakeTAP == true then
                                AwakeText = "F "..string.split(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value,"-")[2].." ["..game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value.."]"
                            else
                                AwakeText = string.split(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value,"-")[2].." ["..game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value.."]"
                            end
                        else
                            if (AwakeZ == true and AwakeX == true and AwakeC == true and AwakeV == true and AwakeF == true) or (AwakeZ == true and AwakeX == true and AwakeC == true and AwakeV == true) then
                                AwakeText = "F "..string.split(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value,"-")[2].." ["..game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value.."]"
                            else
                                AwakeText = string.split(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value,"-")[2].." ["..game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value.."]"
                            end
                        end
                    else
                        AwakeText = string.split(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value,"-")[2].." ["..game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value.."]"
                    end
                end
            end
        end
    end)
    return AwakeText
end

function GetGOD()
    if getgenv().Settings.Show_Item_Settings["Godhuman"] == true then
        GodHuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))
        if GodHuman then
            if GodHuman == 1 then
                CombatText = 'GOD'
            end
        end
    else
        CombatText = ''
    end
    return CombatText
end

local function GetAllMeleeNew()
    combat = 0
    BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true))
    if BuyDragonTalon then
        if BuyDragonTalon == 1 then
            combat += 1
        end
    end
    BuySuperhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true))
    if BuySuperhuman then
        if BuySuperhuman == 1 then
            combat += 1
        end
    end
    BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true))
    if BuySharkmanKarate then
        if BuySharkmanKarate == 1 then
            combat += 1
        end
    end
    BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true))
    if BuyDeathStep then
        if BuyDeathStep == 1 then
            combat += 1
        end
    end
    BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true))
    if BuyElectricClaw then
        if BuyElectricClaw == 1 then
            combat += 1
        end
    end
    GodHuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))
    if GodHuman then
        if GodHuman == 1 then
            combat += 1
        end
    end
    return combat
end

function CheckMirrorFractalNew()
    if getgenv().Settings.Show_Material_Settings["Mirror_Fractal"] == true then
        MirrorFac_Text = ''
        for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
            if type(v) == "table" then
                if v.Type == "Material" then
                    if v.Name == "Mirror Fractal" then
                        MirrorFac_Text = "+MIRROR"
                    end
                end
            end
        end
	else
        MirrorFac_Text = ''
    end
    return MirrorFac_Text
end

function GetFruitInU()
    local ReturnText = {}
    for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
        if type(v) == "table" then
            if v ~= nil then
                if v.Price >= 1000000 then
                    table.insert(ReturnText,string.split(v.Name,"-")[2])
                end
            end
        end
    end

    if #ReturnText ~= 0 then
        return table.concat(ReturnText,", ")
    else
        return "❌"
    end
end

function CheckLevel()
    RaceText = ''
    if game:GetService("Players").LocalPlayer.Data.Level.Value < 2550 then
        RaceText = 'Lv. '..game:GetService("Players").LocalPlayer.Data.Level.Value.." "
    else
        RaceText = 'Lv. MAX '
    end
    return RaceText
end

local function CheckSGTNew()
    if getgenv().Settings.Show_Item_Settings["Soul_Guitar"] == true then
        SGT_Text = ''
        for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryWeapons")) do -- เช็คในกระเป๋า
            for i1,v1 in pairs(v) do
                if v1 == 'Soul Guitar' then
                    SGT_Text = '+SG'
                end
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild('Soul Guitar') or game:GetService("Players").LocalPlayer.Character:FindFirstChild('Soul Guitar') then
                    SGT_Text = '+SG'
                end
            end
        end
    else
        SGT_Text = ''
    end
    return SGT_Text
end

local function CheckCDKNew()
    if getgenv().Settings.Show_Item_Settings["Cursed_Dual_Katana"] == true then
        CDK_Text = ''
        for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryWeapons")) do -- เช็คในกระเป๋า
            for i1,v1 in pairs(v) do
                if v1 == 'Cursed Dual Katana' then
                    CDK_Text = '+CDK'
                end
            end
        end
        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild('Cursed Dual Katana') or game:GetService("Players").LocalPlayer.Character:FindFirstChild('Cursed Dual Katana') then
            CDK_Text = '+CDK'
        end
    else
        CDK_Text = ''
    end
    return CDK_Text
end

local function CheckVK()
    if getgenv().Settings.Show_Item_Settings["Valkyrie_Helm"] == true then
        VK_Text = ''
        for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryWeapons")) do -- เช็คในกระเป๋า
            for i1,v1 in pairs(v) do
                if v1 == 'Valkyrie Helm' then
                    VK_Text = '+ADMIN'
                end
            end
        end
        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild('Valkyrie Helm') or game:GetService("Players").LocalPlayer.Character:FindFirstChild('Valkyrie Helm') then
            VK_Text = '+ADMIN'
        end
    else
        VK_Text = ''
    end
    return VK_Text
end

local function CheckRaceV()
	ReturnText = '1'
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Awakening") or game.Players.LocalPlayer.Character:FindFirstChild("Awakening") then
		ReturnText = '4'
	elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == -2 then
		ReturnText = '3'
	elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3") == -2 then
		ReturnText = '2'
	end
	return ReturnText
end

task.spawn(function()
    while true do
		pcall(function()
            getgenv().SetDescription(CheckLevel()..GetNewAwake().." | "..game:GetService("Players").LocalPlayer.Data.Race.Value.." ["..CheckRaceV().."]".." Melee : "..GetAllMeleeNew().." W : "..WorldText..' Fruits: '..GetFruitInU())
			getgenv().SetAlias(GetGOD()..CheckMirrorFractalNew()..CheckVK()..CheckCDKNew()..CheckSGTNew())
        end);
        if getgenv().Settings.Delay_Settings.Enabled == true then
            wait(getgenv().Settings.Delay_Settings.CheckingDelay)
        else
            wait(1)
        end
    end;
end);

Kick = false
-- [Auto Rejoin]
spawn(function()
	while wait() do
		if getgenv().Settings["AutoRejoin"] then
			game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
				if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") and Kick == false then
                    print("Kicked!")
                    Kick = true
                    local tpservice= game:GetService("TeleportService")
                    local plr = game.Players.LocalPlayer
                    tpservice:Teleport(game.PlaceId, plr)
                    wait(10)
				end
			end)
		end
	end
end)

Nexus:OnButtonClick('World1btn', function() 
    pcall(function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end)
end)

Nexus:OnButtonClick('World2btn', function() 
    pcall(function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end)
end)

Nexus:OnButtonClick('World3btn', function() 
    pcall(function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end)
end)

Nexus:OnButtonClick('Rejoinbtn', function() 
    pcall(function()
        local ts = game:GetService("TeleportService") local p = game.Players.LocalPlayer ts:Teleport(game.PlaceId, p)
    end)
end)

Nexus:OnButtonClick('Shutdownbtn', function() 
    pcall(function()
        game:Shutdown()
    end)
end)

loadstring(game:HttpGet("https://raw.githubusercontent.com/NopChillz/Script-Emu/main/Check%20Level.lua"))()
-- getgenv().SetDescription(GetNewAwake()..' | W : '..WorldText.." B : "..Abbreviate(game.Players.LocalPlayer.Data.Beli.Value)..' F : '..Abbreviate(game.Players.LocalPlayer.Data.Fragments.Value).." "..CheckHSNew()..CheckSGTNew()..CheckTushita()..CheckYama()..CheckDG()..CheckDarkFragment()..'\n FruitsInv: '..GetFruitInU())
