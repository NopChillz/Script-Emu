function SendFullMoon(vux)
    local url = vux
    local mushroom = game:GetService("Players").LocalPlayer.PlayerGui.Data.Coins.Value
    local data = {
        ["embeds"] = {
            {
                ["color"] = tonumber(0xffffff);
                ["fields"] = {
                    {
                        ["name"] = "🍄 Mushroom";
                        ["value"] = "```yaml\n"..tostring(mushroom).. "\n```";
                        ["inline"] = false;
                    }
                };
                ["description"] = "**📋 Username**\n```lua\n"..tostring(game.Players.LocalPlayer.Name).."\n```";
                ["author"] = {
                    ["name"] = "Mushroom (Notification)";
                    ["icon_url"] = "https://media.discordapp.net/attachments/944193407197282314/1281589667065761853/logo.png?ex=66dc44e3&is=66daf363&hm=25e5d260291883c368c6c547a0b14ee18cc64d228db0f67c1f9854ac0054ce6a&=&format=webp&quality=lossless";
                };
                ["thumbnail"] = {
                    ["url"] = "https://tr.rbxcdn.com/d5b4bb6c8fcbc62e8731f4b523cf7455/768/432/Image/Webp";
                };
                ["footer"] = {
                    ["text"] = "BloxTracker.xyz";
                    ["icon_url"] = "https://media.discordapp.net/attachments/944193407197282314/1281589667065761853/logo.png?ex=66dc44e3&is=66daf363&hm=25e5d260291883c368c6c547a0b14ee18cc64d228db0f67c1f9854ac0054ce6a&=&format=webp&quality=lossless";
                };
                ["timestamp"] = DateTime.now():ToIsoDate()
            }
        },
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)

    local headers = {
        ["content-type"] = "application/json"
    }
    local request = http_request or request or HttpPost 
    local R = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request(R)
end
SendFullMoon('https://discord.com/api/webhooks/1281428198134911048/3ZLXb87DdN3v_jXPoWTed0R_XFHbqlD7u3FEUziNxkM9RYNDRGT9TUjaDnA_UBEusJv_')
