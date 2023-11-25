wait(5)
_G.KaitunConfig = {
	["Auto Boost FPS"] = true,
	["Skip Level Farm"] = true,
	["Fast Attack Mode"] = "Fast Attack", -- "Fast Attack" , "More Then old Fast Attack" 
	["Hop If Can't Kill Player"] = true,
	["Block All Hop"] = true,
	
	["Start Kaitun"] = true,
	-- World 1
	["Auto Pole"] = true, -- จะตีเเค่ถ้ามันเกิดไม่ได้ตีจนกว่าจะได้
	["Auto Saber"] = true,
	["Auto Second World"] = true,
	-- World 2
	["Auto Rengoku"] = true,
	["Auto Quest Flower"] = true,
	["Auto V3 Race"] = true,
	["Auto Bartilo"] = true,
	["Auto Cursed Captain"] = true,
	["Auto Darkbeard"] = true,
	["Auto Factory"] = true,
	["Auto Third World"] = true,
	["Skip Get Item Guitar"] = true, -- จะไม่ หาของทำ soul guiter ในโลก 2 เบบ หาจนกว่าจะได้ will not find item until get all item for do soul guiter ( open recommend เเนะนำให้เปิด )
	["Allise Fruit"] = {"Dragon-Dragon","Dough-Dough","Leopard-Leopard","Mammoth-Mammoth"}, -- จะไม่ใช้ผลพวกนี้ในการเปิดประตูไปโลก3
	-- World 3
	["Auto Hallow Scythe"] = true,
	["Auto Buddy Sword"] = true,
	["Auto Dough King"] = true,
	["Auto Spikey Trident"] = true,
	["Auto Tushita"] = true,
	["Auto Elite Hunter"] = true,
	["Auto rip Indra"] = true,
	["Auto Yama"] = true,
	["Auto Canvander"] = true,
	["Auto Soul Guitar"] = true, 
	["Auto Rainbow Haki"] = true,
	["Auto Cursed Dual Katana"] = true,
	
	-- Fighting Style 
	
	["Auto God Human"] = true,
	["Auto Superhuman"] = true,
	["Auto Death Step"] = true,
	["Auto Sharkman Karate"] = true,
	["Auto Electric Claw"] = true,
	["Auto Dargon Talon"] = true,
	
	["Auto Mastery Devil Fruit"] = true,
	["Skill Setting"] = { -- ถ้าไม่ใส่จะใช้ mode auto
		-- ["Z"] = 0.1,
		-- ["X"] = 0.1,
		-- ["C"] = 0.1,
		-- ["V"] = 0.1, -- อันไหนไม่เอาลบออกไปเลย
	},
	["Auto Mastery Sword"] = true,
	["Sword Rarity Select"] = {"Mythical","Legendary"}, -- Common , Uncommon,Rare,Legendary,Mythical

	["Select Redeem Code Level"] = 1,

	-- Raids

	["Select Rate Fruit Rais"] = 1000000, -- if fruit price less u rate then we use it to auto raids
	["Limit Raids Fragments"] = 100000,

	-- Devil Fruit

	["Select Main Devil Fruit Sniper"] = {"Dragon-Dragon","Dough-Dough","Leopard-Leopard","Mammoth-Mammoth"}, -- ผลหลักที่จะกินเเทนผลรอง
	["Select Sub Devil Fruit Sinper"] = {"Buddha-Buddha","Ice-Ice","Dark-Dark","Light-Light"}, -- ผลรองจะกินไว้ก่อนเเล้วพอผลหลักมีก้จะเปลียนไปกินผิดหลัก
	["Allow Eat Fruit In Inventory"] = true,
	["Start Sniper"] = true,

	-- RAM

	["RAM Port"] = 7963,
	["RAM Password"] = "",
	["Auto Set Description"] = false,

	-- Webhook

	["Start Webhook"] = false,
	["Link Webhook"] = "",
	["Mode Webhook"] = "Send On Level Max", -- "Send Every 10 min","Send On Level Max","Send On Level Max And Every 10 min"

	-- CPU
	
	["Select Lock Fps"] = 15,
	["Lock Fps Now"] = true,
	["White Screen"] = true
}

_G.Key = "GIJCI-EAMDX-SHKKG"
_G.DiscordId = "1028308553724866622"
loadstring(game:HttpGet("https://raw.githubusercontent.com/Natsuhanaki/Royx_PC/main/loader.lua"))();