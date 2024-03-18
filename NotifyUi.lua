-- # Link Github Ui
-- https://github.com/Eazvy/UILibs/blob/main/Notifications/Jxereas/Preview

-- # Example use ui
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()

local function CheckPull_Lever_NopChillz()
    local args = {
        [1] = "CheckTempleDoor"
    }
    local Pull_Lever_NopChillz = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))	

    if Pull_Lever_NopChillz then
        print("✔")
        Pull_Lever_NopChillz_Text = 'Pull Leaver : ✔️'
		Notification.new("success", "[✔️] Successfully", "🕹️ Pull Leaver : ✔️")
    else
        print("❌")
        Pull_Lever_NopChillz_Text = '[❌] Pull Leaver : ❌'
		Notification.new("error", "[❌] Unsuccessful", "🕹️ Pull Leaver : ❌")
    end

    return Pull_Lever_NopChillz_Text
end

local function CheckSA_NopChillz()
    local hasSharkAnchor = false

    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild('Shark Anchor') or game:GetService("Players").LocalPlayer.Character:FindFirstChild('Shark Anchor') then
        SA_Text = 'Shark Anchor'
        hasSharkAnchor = true
    end

    for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryWeapons")) do
        for i1,v1 in pairs(v) do
            if v1 == 'Shark Anchor' then
                SA_Text = 'Shark Anchor'
                hasSharkAnchor = true
                break
            end
        end
    end

    -- แสดง Notification หากพบ Shark Anchor
    if hasSharkAnchor then
        Notification.new("success", "[✔️] Successfully", "⚓ Shark Anchor : ✔️")
	else
		Notification.new("error", "[✔❌] Unsuccessful", "⚓ Shark Anchor : ❌")
    end
end

while true do
	Notification.new("info", "[👑] Blox Fruits", "Ui Version 1.0")
	CheckPull_Lever_NopChillz()
	CheckSA_NopChillz()
	wait(60)
end