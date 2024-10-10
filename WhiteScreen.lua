game:GetService("RunService"):Set3dRenderingEnabled(false)

-- LocalScript ที่อยู่ในฝั่ง Client
-- ปิดการเรนเดอร์ 3D ในฝั่ง Client เท่านั้น
game:GetService("RunService"):Set3dRenderingEnabled(false)

-- สร้าง ScreenGui ที่จะแสดงข้อความบนหน้าจอของผู้เล่น
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

-- สร้าง TextLabel สำหรับชื่อผู้เล่น
local nameLabel = Instance.new("TextLabel")
nameLabel.Parent = screenGui
nameLabel.Size = UDim2.new(0.4, 0, 0.1, 0)  -- ขนาดข้อความ
nameLabel.Position = UDim2.new(0.3, 0, 0.4, 0)  -- ตำแหน่งกลางจอ
nameLabel.Text = "👤 Name : " .. player.Name  -- แสดงชื่อผู้เล่น
nameLabel.TextScaled = true
nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)  -- ข้อความสีขาว
nameLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)  -- พื้นหลังสีดำ
nameLabel.BackgroundTransparency = 0.3  -- ทำให้พื้นหลังโปร่งใสเล็กน้อย
nameLabel.Font = Enum.Font.GothamBold  -- ใช้ฟอนต์แบบ Bold
nameLabel.TextWrapped = true  -- ให้ข้อความตัดบรรทัดอัตโนมัติถ้าขยายเกินขนาด

-- เพิ่มมุมโค้งให้ TextLabel
local cornerName = Instance.new("UICorner")
cornerName.CornerRadius = UDim.new(0.1, 0)  -- โค้งมุมเล็กน้อยเพื่อความสวยงาม
cornerName.Parent = nameLabel

-- สร้าง TextLabel สำหรับจำนวนเห็ด
local mushroomLabel = Instance.new("TextLabel")
mushroomLabel.Parent = screenGui
mushroomLabel.Size = UDim2.new(0.4, 0, 0.1, 0)  -- ขนาดข้อความ
mushroomLabel.Position = UDim2.new(0.3, 0, 0.55, 0)  -- ตำแหน่งกลางจอ (ตำแหน่งอยู่ด้านล่าง nameLabel)
mushroomLabel.Text = "🍄 Mushroom : " .. game:GetService("Players").LocalPlayer.PlayerGui.Data.Coins.Value  -- แสดงจำนวนเห็ด
mushroomLabel.TextScaled = true
mushroomLabel.TextColor3 = Color3.fromRGB(255, 255, 255)  -- ข้อความสีขาว
mushroomLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)  -- พื้นหลังสีดำ
mushroomLabel.BackgroundTransparency = 0.3  -- ทำให้พื้นหลังโปร่งใสเล็กน้อย
mushroomLabel.Font = Enum.Font.GothamBold  -- ใช้ฟอนต์แบบ Bold
mushroomLabel.TextWrapped = true  -- ให้ข้อความตัดบรรทัดอัตโนมัติถ้าขยายเกินขนาด

-- เพิ่มมุมโค้งให้ TextLabel
local cornerMushroom = Instance.new("UICorner")
cornerMushroom.CornerRadius = UDim.new(0.1, 0)  -- โค้งมุมเล็กน้อยเพื่อความสวยงาม
cornerMushroom.Parent = mushroomLabel

loadstring(game:HttpGet("https://raw.githubusercontent.com/NopChillz/Script-Emu/main/COS/webhook_mush.lua"))()
