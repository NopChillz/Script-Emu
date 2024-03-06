_G.Setting = {
    ['FPS Booster'] = true, -- ภาพ144p ช่วยลดCPU+RAM
    ['White Screen'] = true, -- จอขาว ช่วยลดCPU+RAM
    ['Auto Rejoin'] = true, -- รีจอย
    ['Roblox Account Manager'] = {
        ['Enabled'] = false,
        ['Delay'] = 300
    },

    ['Farm Item'] = {
        ['Godhuman'] = true, -- 👊
        ['Cursed Dual Katana'] = true, -- ⚔️
        ['Hallow Scythe'] = true, -- 🔪
        ['Valkyrie Helm'] = true, -- 👑
        ['Mirror Fractal'] = true -- 🧩
    },
    ['Farm Mastery'] = { -- ฟาร์มมาสเตอรี่
        ['Melee'] = true,
        ['Sword'] = true,
        ['Devil Fruit'] = true,
        ['Gun'] = false
    },
    ['Farm Fruit'] = {
        ['Select Main Fruit'] = {}, -- ผลหลัก 
        ['Select Fruit'] = {'Dark-Dark','Human-Human: Buddha','Light-Light','Dragon-Dragon','Mammoth-Mammoth','Dough-Dough','Leopard-Leopard','Kitsune-Kitsune'}, -- ผลรอง
        ['Auto Awaken'] = true -- ทำผลตื่นออโต้ 🍎
    },
    ['Farm Quest'] = { 
        ['Quest Dough Awaken'] = true -- ทำโมจิตื่น 🍩
    },

    ['Mode'] = {
        ['Bypass Tp'] = true, -- วาปฟาร์ม
        ['Faster Farm'] = true, -- เควสลับเพิ่มความเร็วในการฟาร์ม โอกาศติด 100%
        ['Triple Quest'] = true --รับเควส 3ระดับความเร็วการฟาร์ม Exp X3
    }
}

_G.Switch_Hub_No_1 = true -- เปิดใช้งานSwitch Hub 
script_key = "iPwPzcaBsTNhRUDZAyCeEyOYedzbYkuB"
loadstring(game:HttpGet("https://raw.githubusercontent.com/londnee/code/main/sw.kaitun.lua"))()
