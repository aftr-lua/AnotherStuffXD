-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
local sound = Instance.new("Sound")


--Properties:

ScreenGui.Parent = game.CoreGui
sound.Parent = game.Workspace
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.Image = "rbxassetid://125951158065172"

sound.Name = "Sound"
sound.SoundId = "http://www.roblox.com/asset/?id=8867136699" -- Song ID at end.
sound.Volume = 10 -- Derp (I have quality speakers you might need to change this.)
sound.Pitch = 1 --Speed of Playback.
sound.Looped = true
sound.archivable = false


wait()

sound:play()

