-- Gui to Lua
-- Version: 3.2

-- Made By Your's Truly,
--          -xxX317thebrainsXxx

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local close = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local speedbtn = Instance.new("TextButton")
local btools = Instance.new("TextButton")
local speed = Instance.new("TextBox")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local jump = Instance.new("TextBox")
local jumpbtn = Instance.new("TextButton")
local enable = Instance.new("TextButton")
local playerName = Instance.new("TextBox")
local TextLabel_4 = Instance.new("TextLabel")
local gotobtn = Instance.new("TextButton")
local focusbtn = Instance.new("TextButton")
local open = Instance.new("TextButton")
local btoolsUsed = false

--Functions:

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

function RemoveSpaces(String)
    return String:gsub("%s+", "") or String
end

function FindPlayer(plrName)
    local players = game.Players:GetPlayers()
    local text = plrName
    local matches = {}

    for i, Player in ipairs(players) do
        local name = Player.Name
        local term = string.sub(name, 1, string.len(text))
        
        local match = string.find(term, text)

        if match then
            table.insert(matches, Player)
        end
    end
    
    return matches[1]
    
end
 
function SearchPlayer(String)
    String = RemoveSpaces(String)
    for _, _Player in pairs(Players:GetPlayers()) do
        if _Player.Name:lower():match('^'.. String:lower()) then
            return _Player
        end
    end
    return nil
end


--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game.CoreGui

main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
main.BackgroundTransparency = 0.250
main.BorderColor3 = Color3.fromRGB(27, 42, 53)
main.BorderSizePixel = 0
main.Position = UDim2.new(0, 0, 0.5, -192)
main.Size = UDim2.new(0, 235, 0, 385)
main.Visible = false

close.Name = "close"
close.Parent = main
close.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
close.BackgroundTransparency = 0.250
close.BorderColor3 = Color3.fromRGB(0, 255, 255)
close.BorderSizePixel = 0
close.Position = UDim2.new(0.99999994, 0, 0, 0)
close.Size = UDim2.new(0, 25, 0, 385)
close.Font = Enum.Font.SourceSans
close.Text = "<<"
close.TextColor3 = Color3.fromRGB(255, 255, 255)
close.TextSize = 24.000
close.TextWrapped = true
close.MouseButton1Click:connect(function()
    main.Visible = false
    open.Visible = true
end)

TextLabel.Parent = main
TextLabel.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 235, 0, 40)
TextLabel.Font = Enum.Font.Arial
TextLabel.Text = "ImKindaToxic - [0.0.1]"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 24.000

speedbtn.Name = "speedbtn"
speedbtn.Parent = main
speedbtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
speedbtn.BorderSizePixel = 0
speedbtn.Position = UDim2.new(0.757446826, 0, 0.742857218, 0)
speedbtn.Size = UDim2.new(0, 50, 0, 30)
speedbtn.Font = Enum.Font.SourceSansLight
speedbtn.Text = "Enter"
speedbtn.TextColor3 = Color3.fromRGB(255, 255, 255)
speedbtn.TextSize = 20.000
speedbtn.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed.Text
end)

btools.Name = "btools"
btools.Parent = main
btools.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
btools.BorderColor3 = Color3.fromRGB(255, 255, 255)
btools.BorderSizePixel = 0
btools.Position = UDim2.new(0.119148932, 0, 0.86493516, 0)
btools.Size = UDim2.new(0, 121, 0, 35)
btools.Font = Enum.Font.SourceSansLight
btools.Text = "Enable Backpack"
btools.TextColor3 = Color3.fromRGB(255, 255, 255)
btools.TextSize = 18.000
btools.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
btools.MouseButton1Click:connect(function()
    Instance.new("HopperBin", LocalPlayer.Backpack).BinType = 1
	Instance.new("HopperBin", LocalPlayer.Backpack).BinType = 2
	Instance.new("HopperBin", LocalPlayer.Backpack).BinType = 3
	Instance.new("HopperBin", LocalPlayer.Backpack).BinType = 4
end)

speed.Name = "speed"
speed.Parent = main
speed.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
speed.BorderSizePixel = 0
speed.Position = UDim2.new(0.029787235, 0, 0.74545455, 0)
speed.Size = UDim2.new(0, 164, 0, 30)
speed.Font = Enum.Font.SourceSans
speed.Text = "16"
speed.TextColor3 = Color3.fromRGB(255, 255, 255)
speed.TextSize = 18.000

TextLabel_2.Parent = main
TextLabel_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.029787235, 0, 0.67792207, 0)
TextLabel_2.Size = UDim2.new(0, 100, 0, 25)
TextLabel_2.Font = Enum.Font.SourceSansLight
TextLabel_2.Text = "Speed Changer"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 20.000
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_3.Parent = main
TextLabel_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.029787235, 0, 0.503896117, 0)
TextLabel_3.Size = UDim2.new(0, 100, 0, 25)
TextLabel_3.Font = Enum.Font.SourceSansLight
TextLabel_3.Text = "Jump Power"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 20.000
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

jump.Name = "jump"
jump.Parent = main
jump.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
jump.BorderSizePixel = 0
jump.Position = UDim2.new(0.029787235, 0, 0.571428597, 0)
jump.Size = UDim2.new(0, 164, 0, 30)
jump.Font = Enum.Font.SourceSans
jump.Text = "7.5"
jump.TextColor3 = Color3.fromRGB(255, 255, 255)
jump.TextSize = 18.000

jumpbtn.Name = "jumpbtn"
jumpbtn.Parent = main
jumpbtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
jumpbtn.BorderSizePixel = 0
jumpbtn.Position = UDim2.new(0.757446826, 0, 0.568831265, 0)
jumpbtn.Size = UDim2.new(0, 50, 0, 30)
jumpbtn.Font = Enum.Font.SourceSansLight
jumpbtn.Text = "Enter"
jumpbtn.TextColor3 = Color3.fromRGB(255, 255, 255)
jumpbtn.TextSize = 20.000
jumpbtn.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = jump.Text
end)

enable.Name = "enable"
enable.Parent = main
enable.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
enable.BorderColor3 = Color3.fromRGB(0, 0, 0)
enable.BorderSizePixel = 0
enable.Position = UDim2.new(0.685106397, 0, 0.86493516, 0)
enable.Size = UDim2.new(0, 50, 0, 35)
enable.Font = Enum.Font.SourceSansLight
enable.Text = "Btools"
enable.TextColor3 = Color3.fromRGB(255, 255, 255)
enable.TextSize = 18.000
enable.MouseButton1Click:connect(function()
    --game.StarterGui:SetCoreGuiEnabled(2, true)
end)

playerName.Name = "playerName"
playerName.Parent = main
playerName.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
playerName.BorderSizePixel = 0
playerName.Position = UDim2.new(0.029787235, 0, 0.189610422, 0)
playerName.Size = UDim2.new(0, 221, 0, 30)
playerName.Font = Enum.Font.SourceSans
playerName.Text = ""
playerName.TextColor3 = Color3.fromRGB(255, 255, 255)
playerName.TextSize = 18.000

TextLabel_4.Parent = main
TextLabel_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.029787235, 0, 0.122077949, 0)
TextLabel_4.Size = UDim2.new(0, 100, 0, 25)
TextLabel_4.Font = Enum.Font.SourceSansLight
TextLabel_4.Text = "Player"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 20.000
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left

gotobtn.Name = "gotobtn"
gotobtn.Parent = main
gotobtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
gotobtn.BorderSizePixel = 0
gotobtn.Position = UDim2.new(0.11914894, 0, 0.298701376, 0)
gotobtn.Size = UDim2.new(0, 85, 0, 30)
gotobtn.Font = Enum.Font.SourceSansLight
gotobtn.Text = "GoTo"
gotobtn.TextColor3 = Color3.fromRGB(255, 255, 255)
gotobtn.TextSize = 20.000
gotobtn.MouseButton1Click:connect(function()
    if FindPlayer(playerName.Text) == nil then
        wait(0.1)
        game.StarterGui:SetCore("SendNotification", {
            Title = "Player Not Found."; -- the title (ofc)
            Text = "Looks like the player you tried to GoTo to isnt on the server at the moment."; -- what the text says (ofc)
            Duration = 10; -- how long the notification should in secounds
            Button1 = "Oof."
        })
        return
    end

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = FindPlayer(playerName.Text).Character.HumanoidRootPart.CFrame * CFrame.new(0,2,0)
end)

focusbtn.Name = "focusbtn"
focusbtn.Parent = main
focusbtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
focusbtn.BorderSizePixel = 0
focusbtn.Position = UDim2.new(0.536170244, 0, 0.298701376, 0)
focusbtn.Size = UDim2.new(0, 85, 0, 30)
focusbtn.Font = Enum.Font.SourceSansLight
focusbtn.Text = "[UselessBtn]"
focusbtn.TextColor3 = Color3.fromRGB(255, 255, 255)
focusbtn.TextSize = 20.000
focusbtn.MouseButton1Click:connect(function()
    
end)

open.Name = "open"
open.Parent = ScreenGui
open.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
open.BackgroundTransparency = 0.250
open.BorderColor3 = Color3.fromRGB(0, 255, 255)
open.BorderSizePixel = 0
open.Position = UDim2.new(0, 0, 0.5, -192)
open.Size = UDim2.new(0, 25, 0, 385)
open.Font = Enum.Font.SourceSans
open.Text = ">>"
open.TextColor3 = Color3.fromRGB(255, 255, 255)
open.TextSize = 24.000
open.TextWrapped = true
open.MouseButton1Click:connect(function()
    main.Visible = true
    open.Visible = false
end)

LocalPlayer.CharacterAdded:connect(function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = jump.Text
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed.Text
    if btoolsUsed == true then
        
    end
end)