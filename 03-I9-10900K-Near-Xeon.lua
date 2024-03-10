if not game:IsLoaded() then repeat game.Loaded:Wait(5) until game:IsLoaded() end

-- Setting
getgenv().Item ={
    -- Item / ไอเทม
    ['Godhuman'] = true,
    ['CDK'] = true,
    ['Soul Guitar'] = true,

    -- Quest / เควส
    ['Dough Awaken'] = true,
    ['RGB Haki'] = true,

    -- Race / เผ่า
    ['Evo Race V3'] = true,
    ['Select Race'] = {'Fishman','Human','Mink','Skypiea'},

    -- Fruit / ผลปีศาจ
    ['Select Fruit'] = {
        ['Main'] = {},
        ['Fruit'] = {'Dark-Dark','Human-Human: Buddha','Light-Light','Dragon-Dragon','Mammoth-Mammoth','Kitsune-Kitsune','Dough-Dough','Leopard-Leopard'}
    },

    -- Mastery / มาสเตอรี่
    ['Mastery'] = {
        ['Melee'] = true,
        ['Sword'] = true,
        ['Fruit'] = true,
        ['Gun'] = false
    }
}

-- CPU Booster
_G.Bypass_Tp = true
_G.White_Screen = true
_G.FPS_Booster = true

script_key="BOmhzmaWcLvbTGkNcvrjDWPjKQJGKNlQ";
loadstring(game:HttpGet("https://raw.githubusercontent.com/londnee/code/main/m.lua"))()
