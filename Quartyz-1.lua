getgenv().Mode = "OneClick"
getgenv().Setting = {
    ["Team"] = "Pirates", -- Options "Pirates", "Marines"
    ["FucusOnLevel"] = true,
    ["Fruits"] = {  -- setting for fruits u want
        ["Primary"] = { -- if current fruit is not in this list, eat/buy
            "Dragon-Dragon",
            "Dough-Dough",
            -- u can configs add mores/remove and must end with , (comma symbol)
        },
        ["Normal"] = { -- it just a normal fruit list
            "Dark-Dark",
            "Ice-Ice",
            "Buddha-Buddha",
            "Light-Light",
            -- u can configs add mores/remove and must end with , (comma symbol)
        }
        -- run this for get all fruit name `local t={};for _,v in pairs(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("GetFruits"))do table.insert(t,v.Name)end;setclipboard(table.concat(t, "\n"))`
    },
    ["Lock Fruits"] = { -- don't use or eat fruits in this list
        "Dough-Dough",
        "Kisune-Kisune",
        "Tiger-Tiger",
        "T-Rex-T-Rex",
        "Dragon-Dragon"
    },
    ["IdleCheck"] = 300, -- every (x) seconds if not moving rejoin
};

-- script here
-- game:GetService("RunService"):Set3dRenderingEnabled(false)
getgenv().user_key = 'd22d87dd2582fea1c0056fbed16988ce'
loadstring(game:HttpGet("https://raw.githubusercontent.com/xQuartyx/QuartyzScript/main/OneClick/BF.lua"))()
task.wait(5)
loadstring(game:HttpGet("https://raw.githubusercontent.com/NopChillz/Script-Emu/refs/heads/main/Check%20Level.lua"))()
task.wait(1)
loadstring(game:HttpGet("https://raw.githubusercontent.com/NopChillz/Script-Emu/refs/heads/main/Candy.lua"))()
