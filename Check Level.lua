print("script")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local LevelData = LocalPlayer.Data.Level

-- Function Teleport 
local PlaceID = game.PlaceId
local Run = game:GetService("RunService") ;
local SetSkill = nil ; 
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
    AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
end
function TPReturner(kopkuy)
    local Site;
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            delfile("NotSameServers.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                    wait()
                    if kopkuy  then
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end
                end)
                wait(4)
            end
        end
    end
end

function Teleport(v)
    while true do
        wait()
        pcall(function()
            TPReturner(v)
        end)
    end
end

local function CheckLevel()
    local initialLevel = LevelData.Value  -- เลเวลเริ่มต้น

    while true do
        wait(10)  -- รอ 3 นาที

        if LevelData.Value == initialLevel then
            Teleport(true)
            print("Level เท่าเดิมหลังจาก 3 นาที!")
        else
            print("Level ได้เปลี่ยนแล้ว!")
            initialLevel = LevelData.Value  -- ปรับค่าเลเวลเริ่มต้นเป็นค่าใหม่
        end
    end
end

-- เรียกใช้ฟังก์ชั่นเพื่อเริ่มต้นตรวจสอบเลเวล
CheckLevel()
