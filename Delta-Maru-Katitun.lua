repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
wait(10)
_G.Team = "Pirate" -- Marine / Pirate
getgenv().Script_Mode = "Kaitun_Script"
_G.MainSettings = {
        ["EnabledHOP"] = true, -- เปิด HOP ( มันไม่มีอยู่ละใส่มาเท่ๆ )
        ["UseGun"] = false,
        ['FPSBOOST'] = true, -- ภาพกาก
        ["FPSLOCKAMOUNT"] = 15, -- จำนวน FPS
        ['WhiteScreen'] = true, -- จอขาว
        ['CloseUI'] = false, -- ปิด Ui
        ["NotifycationExPRemove"] = true, -- ลบ ExP ที่เด้งตอนฆ่ามอน
        ['AFKCheck'] = 3600, -- ถ้ายืนนิ่งเกินวิที่ตั้งมันจะรีเกม
        ["LockFragments"] = 50000, -- ล็อคเงินม่วง
        ["LockFruitsRaid"] = { -- ล็อคผลที่ไม่เอาไปลงดัน
            [1] = "Dough-Dough",
            [2] = "Kisune-Kisune",
            [3] = "Dragon-Dragon",
            [4] = "Leopard-Leopard",
            [5] = "Gas-Gas"
        }
    }
_G.Fruits_Settings = { -- ตั้งค่าผล
    ['Main_Fruits'] = {"Dragon-Dragon"}, -- ผลหลัก ถ้ายังไม่ใช่ค่าที่ตั้งมันจะกินจนกว่าจะใช่หรือซื้อ
    ['Select_Fruits'] = {"Dark-Dark", "Dragon-Dragon", "Quake-Quake", "Light-Light", "Leopard-Leopard", "Buddha-Buddha","Kitsune-Kitsune","Dough-Dough","Dragon-Dragon","Gas-Gas"} -- กินหรือซื้อตอนไม่มีผล
}
_G.Quests_Settings = { -- ตั้งค่าเควสหลักๆ
    ['Rainbow_Haki'] = true,
    ["MusketeerHat"] = true,
    ["PullLever"] = true,
    ['DoughQuests_Mirror'] = {
        ['Enabled'] = true,
        ['UseFruits'] = true
    }        
}
_G.Races_Settings = { -- ตั้งค่าเผ่า
    ['Race'] = {
        ['EnabledEvo'] = true,
        ["v2"] = true,
        ["v3"] = true,
        ["Races_Lock"] = {
            ["Races"] = { -- Select Races U want
                ["Mink"] = true,
                ["Human"] = false,
                ["Fishman"] = true
            },
            ["RerollsWhenFragments"] = 20000 -- Random Races When Your Fragments is >= Settings
        }
    }
}
_G.Settings_Melee = { -- หมัดที่จะทำ
    ['Superhuman'] = true,
    ['DeathStep'] = true,
    ['SharkmanKarate'] = true,
    ['ElectricClaw'] = true,
    ['DragonTalon'] = true,
    ['Godhuman'] = true
}
_G.FarmMastery_Settings = {
    ['Melee'] = true,
    ['Sword'] = true,
    ['DevilFruits'] = true,
    ['Select_Swords'] = {
        ["AutoSettings"] = true, -- ถ้าเปิดอันนี้มันจะเลือกดาบให้เองหรือฟาร์มทุกดาบนั่นเอง
        ["ManualSettings"] = { -- ถ้าปรับ AutoSettings เป็น false มันจะฟาร์มดาบที่เลือกตรงนี้ ตัวอย่างข้างล่าง
            "Saber",
            "Buddy Sword"
        }
    }
}
_G.SwordSettings = { -- ดาบที่จะทำ
    ['Saber'] = true,
    ["Pole"] = true,
    ['MidnightBlade'] = true,
    ['Shisui'] = true,
    ['Saddi'] = true,
    ['Wando'] = true,
    ['Yama'] = true,
    ['Rengoku'] = true,
    ['Canvander'] = true,
    ['BuddySword'] = true,
    ['TwinHooks'] = true,
    ['HallowScryte'] = true,
    ['TrueTripleKatana'] = true,
    ['CursedDualKatana'] = true
}
_G.SharkAnchor_Settings = {
    ["Enabled_Farm"] = true,
    ['FarmAfterMoney'] = 2500000
}
_G.GunSettings = { -- ปืนที่จะทำ
    ['Kabucha'] = true,
    ['SerpentBow'] = true,
    ['SoulGuitar'] = true
}
-- Discord : RaMaFia
getgenv().Key = "MARU-0KTBL-WGQE-ZMP4P-D065-S1TX1"
getgenv().id = "411861336553947137"
getgenv().Script_Mode = "Kaitun_Script"
loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruBitkub/main/Mobile.lua"))()

--Add On By.NopChillz | TEAM

wait(10)
-- ฟังก์ชันที่จะเรียกทุกๆ 10 นาที
function TradeCandyNonStop()
    local args = { 
        [1] = "Candies",
        [2] = "Buy",
        [3] = 1,
        [4] = 1
    }

    local newArgs = {
        [1] = "Candies",
        [2] = "Buy",
        [3] = 2,
        [4] = 2
    }

    -- ฟังก์ชันนี้จะทำงานทุกๆ 10 นาที
    while true do
        local CurrentLevelFunc = game.Players.LocalPlayer.Data.Level.Value
        local CurrentFlagmentFucn = game:GetService("Players").LocalPlayer.Data.Fragments.Value

        -- ถ้าผู้เล่นมีเลเวลมากกว่าหรือเท่ากับ 2600
        if CurrentLevelFunc >= 2600 then
            print("Player has reached level 2600. Switching to new args.")
            
            -- ทำงานต่อไปจนกว่า Fragments จะเกิน 70,000
            while CurrentFlagmentFucn <= 500000 do
                -- ใช้ newArgs
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(newArgs))
                print("Running the action, current fragments: " .. CurrentFlagmentFucn)
                
                -- รอ 10 วินาที (10 วินาทีระหว่างการทำงานของ newArgs)
                wait(60)
                
                -- อัพเดทค่า Fragments
                CurrentFlagmentFucn = game:GetService("Players").LocalPlayer.Data.Fragments.Value
            end

            print("Player has accumulated enough fragments. Stopping.")
            break  -- หยุดการทำงานเมื่อ Fragments เกิน 70,000
        else
            -- หากเลเวลยังไม่ถึง 2600 ให้เรียก Remote ด้วย args เดิมและ newArgs
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            print("Running the action with args, player level: " .. CurrentLevelFunc)
            
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(newArgs))
            print("Running the action with newArgs, player level: " .. CurrentLevelFunc)
        end
        
        -- รอ 10 นาที (600 วินาที) ก่อนที่จะทำงานอีกครั้ง
        wait(600)
    end
end


-- เรียกใช้ฟังก์ชัน
TradeCandyNonStop()
