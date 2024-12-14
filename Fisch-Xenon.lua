getgenv().Configuration = {
    Enabled = true,
    ZoneFish = {
        ['Zone'] = 'The Depths', -- // สามารถเลือกได้ตาม [Fish Zone] ด้านบน
        ['Event Zone Fishing'] = false, -- // เปิด / ปิด ตกปลาในโซนอีเว้น
        ['Select Event Zones'] = {'Megalodon Default','Megalodon Ancient'}, -- // สามารถเลือกได้ตาม [Event Zone] ด้านบน
    },
    CollectMeteor = false,  
    EquipRod = 'Auto', -- // สามารถเลือกได้ตาม [Rods] ด้านบน แนะนําตั่งเป็น Auto นี้แหละดีแล้ว
    Rods = {
        ['Trident Rod'] = true,
        ['Aurora Rod'] = true,
        ['Kings Rod'] = true,
        ['Sunken Rod'] = true,
        ['Mythical Rod'] = true, 
        ['Rod Of The Depths'] = true,
        ['Destiny Rod'] = true,
    },
    AutoSell = {
        ['Enabled'] = true,
        ['Sell every'] = 200, -- seconds
        ['Mythical'] = true,
        ['Legendary'] = true,
        ['Enchant Rellcs'] = true,
        ['Exotic'] = true,
        ['Event Fish'] = true,
        ['Limited Fish'] = true,
    },
}

-- Pc-02
getgenv().key = '7417afaf-848a-4543-a4bb-44cd4ba89656'
loadstring(game:HttpGet('https://raw.githubusercontent.com/Xenon-Trash/Loader/main/Loader.lua'))()
