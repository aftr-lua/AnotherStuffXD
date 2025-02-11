local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Mafiozi hub",
    Icon = 6168008923,
    LoadingTitle = "MAFIA ROBLOX EXPLOIT!",
    LoadingSubtitle = "Time to use hacks!",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil,
        FileName = "Big Hub"
    },
    Discord = {
        Enabled = false,
        Invite = "noinvitelink",
        RememberJoins = true
    },
    KeySystem = false,
    KeySettings = {
        Title = "Key system",
        Subtitle = "Dead or alive key system",
        Note = "",
        FileName = "Key",
        SaveKey = true,
        GrabKeyFromSite = false,
        Key = {"doa_134", "doa_135", "doa_175", "doa_762"}
    }
})

local InfoTab = Window:CreateTab("Info", 4483362458)
local TrollTab = Window:CreateTab("Troll", 6862780938)
local ExploitsTab = Window:CreateTab("Exploits", 6168008923)
local FuncTab = Window:CreateTab("Functions", 6168008923)

TrollTab:CreateButton({
    Name = "VFly",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/scorpsoftare/vfly/refs/heads/main/vfly"))()
    end
})

TrollTab:CreateButton({
    Name = "Grab knife",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Prison-Life-Grab-V3-18932"))()
    end
})

TrollTab:CreateButton({
    Name = "Vereus",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Roblox-VEREUS-monster-script-3746"))()
    end
})

TrollTab:CreateButton({
    Name = "Divine",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Fe-Goner-Fallen-Snow-24164"))()
    end
})

TrollTab:CreateButton({
    Name = "Gojo satoru",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Fe-universal-GOJO-moveset-27356"))()
    end
})

TrollTab:CreateButton({
    Name = "C00lKid gui",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Fe-Bypass-Gui-28220"))()
    end
})

TrollTab:CreateButton({
    Name = "Free admin",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Infinite-yeild-fe-14386"))()
    end
})

TrollTab:CreateButton({
    Name = "Give All Tools",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/scorpsoftare/giveall/refs/heads/main/giveall"))()
    end
})

ExploitsTab:CreateButton({
    Name = "Prison life exploit",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/scorpsoftare/execute/refs/heads/main/execute"))()
    end
})

FuncTab:CreateLabel("Tab by Aftr")

