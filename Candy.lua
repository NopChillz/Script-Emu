-- [[ OPTIMIZED AUTO CANDY SHOP SCRIPT ]] --

-- ============================================================================
-- CONFIGURATION
-- ============================================================================
local CONFIG = {
    INITIAL_WAIT = 20,           -- รอหลังโหลดเกม (วินาที)
    CHECK_INTERVAL = 180,        -- เช็คทุกๆ 3 นาที
    LEVEL_THRESHOLD = 2799,      -- เลเวลที่เปลี่ยนกลยุทธ์

    CANDY_COSTS = {
        EXP_BOOST = 50,          -- ราคา EXP x2
        FRAGMENTS = 100          -- ราคา Fragments
    },

    CANDY_BUFFER = 50,           -- เก็บ Candy สำรอง (150 = 100 + 50)

    EXP_BOOST_PATTERN = "2x ends in" -- Pattern สำหรับตรวจสอบบัฟ
}

-- ============================================================================
-- CACHED REFERENCES (เพื่อลด overhead)
-- ============================================================================
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Player = Players.LocalPlayer
local CommF_ = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("CommF_")

-- ============================================================================
-- UTILITY FUNCTIONS
-- ============================================================================

-- รอให้เกมโหลดพร้อม Data ของผู้เล่น
local function waitForGameReady()
    if not game:IsLoaded() then
        game.Loaded:Wait()
    end

    print("[ DEBUG-CANDY-EVENT ] Game Loaded! Waiting " .. CONFIG.INITIAL_WAIT .. " seconds...")
    task.wait(CONFIG.INITIAL_WAIT)

    -- รอให้ Data โหลด
    local data = Player:WaitForChild("Data", 30)
    if not data then
        error("[ DEBUG-CANDY-EVENT ] Failed to load player data!")
    end

    print("[ DEBUG-CANDY-EVENT ] Script Started!")
end

-- ดึงจำนวน Candy จาก Inventory (Optimized)
local function getCandyAmount()
    local success, inventory = pcall(function()
        return CommF_:InvokeServer("getInventory")
    end)

    if not success or type(inventory) ~= "table" then
        warn("[ DEBUG-CANDY-EVENT ] Failed to get inventory")
        return 0
    end

    -- ใช้ ipairs เพราะ inventory เป็น array และ early return เมื่อเจอ
    for _, item in ipairs(inventory) do
        if type(item) == "table"
            and item.Type == "Material"
            and item.Name == "Candy" then
            return item.Count or 0
        end
    end

    return 0
end

-- เช็คว่ามี EXP Boost อยู่หรือไม่
local function hasExpBoost()
    local success, result = pcall(function()
        local expText = Player.PlayerGui.Main.Level.Exp.Text
        return string.find(expText, CONFIG.EXP_BOOST_PATTERN, 1, true) ~= nil
    end)

    return success and result
end

-- ดึงเลเวลของผู้เล่น
local function getPlayerLevel()
    local data = Player:FindFirstChild("Data")
    if not data then return nil end

    local level = data:FindFirstChild("Level")
    return level and level.Value or nil
end

-- ซื้อของจาก Candy Shop
local function buyFromShop(itemType, cost, description)
    local success, result = pcall(function()
        return CommF_:InvokeServer("Candies", "Buy", itemType, itemType)
    end)

    if success then
        print("[ DEBUG-CANDY-EVENT ] ✓ Purchased: " .. description .. " (-" .. cost .. " Candy)")
    else
        warn("[ DEBUG-CANDY-EVENT ] ✗ Failed to purchase: " .. description)
    end

    return success
end

-- ============================================================================
-- MAIN LOGIC
-- ============================================================================

local function autoCandyShop()
    local level = getPlayerLevel()
    if not level then
        warn("[ DEBUG-CANDY-EVENT ] Cannot get player level, skipping...")
        return
    end

    local candyAmount = getCandyAmount()
    local hasBoost = hasExpBoost()

    print("[ DEBUG-CANDY-EVENT ] ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━")
    print("[ DEBUG-CANDY-EVENT ] Level: " .. level .. " | Candy: " .. candyAmount .. " | Boost: " .. (hasBoost and "✓" or "✗"))

    -- Logic แบบ Optimized (รวมเงื่อนไขที่คล้ายกัน)
    if level <= CONFIG.LEVEL_THRESHOLD then
        -- กรณีเลเวลต่ำกว่า 2799
        if not hasBoost and candyAmount >= CONFIG.CANDY_COSTS.EXP_BOOST then
            -- ไม่มีบัฟ -> ซื้อ EXP Boost
            buyFromShop(1, CONFIG.CANDY_COSTS.EXP_BOOST, "EXP Boost x2")

        elseif hasBoost and candyAmount >= (CONFIG.CANDY_COSTS.FRAGMENTS + CONFIG.CANDY_BUFFER) then
            -- มีบัฟแล้ว และมี Candy เหลือพอ -> ซื้อ Fragments
            buyFromShop(2, CONFIG.CANDY_COSTS.FRAGMENTS, "Fragments (Buffer maintained)")
        else
            print("[ DEBUG-CANDY-EVENT ] ⏳ Waiting: Not enough Candy or Boost active")
        end

    else
        -- กรณีเลเวล 2800+
        if candyAmount >= CONFIG.CANDY_COSTS.FRAGMENTS then
            buyFromShop(2, CONFIG.CANDY_COSTS.FRAGMENTS, "Fragments (Max level)")
        else
            print("[ DEBUG-CANDY-EVENT ] ⏳ Waiting: Need " .. (CONFIG.CANDY_COSTS.FRAGMENTS - candyAmount) .. " more Candy")
        end
    end
end

-- ============================================================================
-- MAIN LOOP
-- ============================================================================

waitForGameReady()

task.spawn(function()
    while true do
        local success, err = pcall(autoCandyShop)

        if not success then
            warn("[ DEBUG-CANDY-EVENT ] ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━")
            warn("[ DEBUG-CANDY-EVENT ] ⚠ Script Error: " .. tostring(err))
            warn("[ DEBUG-CANDY-EVENT ] ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━")
        end

        print("[ DEBUG-CANDY-EVENT ] ⏰ Next check in " .. (CONFIG.CHECK_INTERVAL / 60) .. " minutes...\n")
        task.wait(CONFIG.CHECK_INTERVAL)
    end
end)

print("[ DEBUG-CANDY-EVENT ] 🎯 Auto Candy Shop is now running in background!")
