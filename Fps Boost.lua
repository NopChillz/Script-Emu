repeat task.wait(5) until game:IsLoaded()
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local Terrain = workspace:FindFirstChildOfClass("Terrain")
local UserSettings = UserSettings():GetService("UserGameSettings")
UserSettings.MasterVolume = 0

local decalsYeeted = true

if Lighting then
    sethiddenproperty(Lighting, "Technology", 2)
    Lighting.GlobalShadows = false
    Lighting.FogEnd = 9e9
    Lighting.Brightness = 0
end

if Terrain then
    sethiddenproperty(Terrain, "Decoration", false)
    Terrain.WaterWaveSize = 0
    Terrain.WaterWaveSpeed = 0
    Terrain.WaterReflectance = 0
    Terrain.WaterTransparency = 0
end

settings().Rendering.QualityLevel = "Level01"

local function modifyDescendant(v)
    if v:IsA("BasePart") and not v:IsA("MeshPart") then
        v.Material = Enum.Material.Plastic
        v.Reflectance = 0
    elseif (v:IsA("Decal") or v:IsA("Texture")) and decalsYeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    elseif v:IsA("MeshPart") and decalsYeeted then
        v.Material = Enum.Material.Plastic
        v.Reflectance = 0
        v.TextureID = "10385902758728957"
    elseif v:IsA("SpecialMesh") and decalsYeeted then
        v.TextureId = 0
    elseif v:IsA("ShirtGraphic") and decalsYeeted then
        v.Graphic = 1
    elseif (v:IsA("Shirt") or v:IsA("Pants")) and decalsYeeted then
        v[v.ClassName .. "Template"] = 1
    end
end

for _, v in pairs(workspace:GetDescendants()) do
    modifyDescendant(v)
end

workspace.DescendantAdded:Connect(modifyDescendant)

for _, effect in ipairs(Lighting:GetChildren()) do
    if effect:IsA("BlurEffect") or 
       effect:IsA("SunRaysEffect") or 
       effect:IsA("ColorCorrectionEffect") or 
       effect:IsA("BloomEffect") or 
       effect:IsA("DepthOfFieldEffect") then
        effect.Enabled = false
    end
end

local StarterGui = game:GetService("StarterGui")
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function hidePlayers()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            local character = player.Character
            for _, part in pairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Transparency = 1
                    part.CanCollide = false 
                elseif part:IsA("Decal") or part:IsA("Texture") then
                    part.Transparency = 1 
                end
            end
            for _, accessory in pairs(character:GetChildren()) do
                if accessory:IsA("Accessory") then
                    local handle = accessory:FindFirstChild("Handle")
                    if handle then
                        handle.Transparency = 1
                        handle.CanCollide = false
                    end
                end
            end
        end
    end
end

hidePlayers()
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        wait(0.5)
        hidePlayers()
    end)
end)

LocalPlayer.CharacterAdded:Connect(function()
    hidePlayers()
end)