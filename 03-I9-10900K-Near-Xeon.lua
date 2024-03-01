if not game:IsLoaded() then repeat game.Loaded:Wait(5) until game:IsLoaded() end

_G.Delay_Upload = 300 -- โชว์ข้อมูลใหม่ทุกๆ 300วิ
_G.Bypass_Tp = true -- วาปฟาร์ม

_G.Select_Fruit = {
    ['Main'] = {'Kitsune-Kitsune'}, -- เลือกผลปีศาจหลัก
    ['Select Fruit'] = {''} -- เลือกผลปีศาจ
}
_G.Mastery_Farm = { -- ฟามมาสเตอรี่
    ['Melee'] = true,
    ['Devil Fruit'] = true,
    ['Sword'] = true,
    ['Gun'] = false
}
_G.Race_Evo = {
    ['Level'] = {1,2,3}, -- อีโวเผ่าจากขั้น0 ไปถึงขั้น3
    ['Enabled'] = true
}

script_key="QCHcdNiBvjjutjNdcVCCQnLktxeqjeRv";
loadstring(game:HttpGet("https://raw.githubusercontent.com/londnee/code/main/m.lua"))()
