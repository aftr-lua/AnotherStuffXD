local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local LocalizationService = game:GetService("LocalizationService")
local RunService = game:GetService("RunService")

local BOT_TOKEN = "7392648625:AAHeEADawsbZN_9Y7Ew0ISXfuZJB_3m9HqY" -- Telegram botunun tokenini buraya ekle
local CHAT_ID = "-1002392198561" -- Telegram kanalının veya grubunun chat ID'sini buraya ekle

game.Players.PlayerAdded:Connect(function(player)
    -- Oyuncu hakkında genel bilgiler
    local playerInfo = {
        Username = player.Name,
        UserID = player.UserId,
        AccountAge = player.AccountAge,
        Platform = tostring(UserInputService:GetPlatform()),
        Locale = LocalizationService.RobloxLocaleId,
        GameLocale = LocalizationService.SystemLocaleId,
        Premium = player.MembershipType == Enum.MembershipType.Premium and "Evet" or "Hayır"
    }

    -- Oyun ve sunucu bilgileri
    local gameInfo = {
        GameID = game.GameId,
        PlaceID = game.PlaceId,
        JobID = game.JobId,
        ServerTime = os.date("%Y-%m-%d %H:%M:%S", os.time())
    }

    -- Oyuncu fiziksel bilgileri
    local character = player.Character
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
    local healthInfo = {
        Health = humanoid and humanoid.Health or "Bilinmiyor",
        MaxHealth = humanoid and humanoid.MaxHealth or "Bilinmiyor",
        WalkSpeed = humanoid and humanoid.WalkSpeed or "Bilinmiyor",
        JumpPower = humanoid and humanoid.JumpPower or "Bilinmiyor"
    }

    -- Takım bilgileri
    local teamInfo = {
        TeamName = player.Team and player.Team.Name or "Takım Yok",
        TeamColor = player.Team and tostring(player.Team.TeamColor) or "Yok"
    }

    -- Oyuncu ekran çözünürlüğü (eğer client ise)
    local screenSize = RunService:IsClient() and game:GetService("Workspace").CurrentCamera.ViewportSize or "Bilinmiyor"

    -- Telegram'a gönderilecek mesaj
    local message = "📌 **Bir kullanıcı scripti çalıştırdı!**\n\n"
    message = message .. "**👤 Player info:**\n"
    message = message .. "🔹 Username: " .. playerInfo.Username .. "\n"
    message = message .. "🔹 Player ID: " .. playerInfo.UserID .. "\n"
    message = message .. "🔹 Account age: " .. playerInfo.AccountAge .. " gün\n"
    message = message .. "🔹 Platform: " .. playerInfo.Platform .. "\n"
    message = message .. "🔹 Locale: " .. playerInfo.Locale .. "\n"
    message = message .. "🔹 Gamelocale: " .. playerInfo.GameLocale .. "\n"
    message = message .. "🔹 Premium: " .. playerInfo.Premium .. "\n\n"

    message = message .. "**🎮 Oyun & Sunucu Bilgileri:**\n"
    message = message .. "🔹 Game ID: " .. gameInfo.GameID .. "\n"
    message = message .. "🔹 Place ID: " .. gameInfo.PlaceID .. "\n"
    message = message .. "🔹 Job ID (Server ID): " .. gameInfo.JobID .. "\n"
    message = message .. "🔹 Sunucu Saati: " .. gameInfo.ServerTime .. "\n\n"

    message = message .. "**⚔️ Sağlık & Hareket Bilgileri:**\n"
    message = message .. "🔹 health: " .. healthInfo.Health .. "/" .. healthInfo.MaxHealth .. "\n"
    message = message .. "🔹 Walk speed: " .. healthInfo.WalkSpeed .. "\n"
    message = message .. "🔹 Jump Power: " .. healthInfo.JumpPower .. "\n\n"

    message = message .. "**🚩 Team info:**\n"
    message = message .. "🔹 Team name: " .. teamInfo.TeamName .. "\n"
    message = message .. "🔹 Team color: " .. teamInfo.TeamColor .. "\n\n"

    message = message .. "**🖥️ Screen:**\n"
    message = message .. "🔹 Screen size: " .. tostring(screenSize) .. "\n"

    -- Telegram'a mesaj gönderme işlemi
    local url = "https://api.telegram.org/bot" .. BOT_TOKEN .. "/sendMessage"
    local payload = {
        chat_id = CHAT_ID,
        text = message,
        parse_mode = "Markdown"
    }

    local headers = {
        ["Content-Type"] = "application/json"
    }

    local success, response = pcall(function()
        return HttpService:PostAsync(url, HttpService:JSONEncode(payload), Enum.HttpContentType.ApplicationJson, false, headers)
    end)

    if success then
        print("Logged.")
    else
        warn("⚠️ Not logged!")
    end
end)
