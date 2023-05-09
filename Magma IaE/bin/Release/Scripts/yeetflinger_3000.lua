local lplayer = game:GetService('Players').LocalPlayer

local yeeting = false
function GetPlayer(String)
local Found = {}
local strl = String:lower()
if strl == "all" then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
table.insert(Found,v)
end
elseif strl == "others" then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Name ~= lplayer.Name then
table.insert(Found,v)
end
end 
elseif strl == "me" then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Name == lplayer.Name then
table.insert(Found,v)
end
end 
else
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Name:lower():sub(1, #String) == String:lower() then
table.insert(Found,v)
end
end 
end
return Found 
end
function ahh(thing)
local asd = {'yeet','gui','yeet gui'}
local f = string.upper(asd[math.random(1,#asd)])
return f
end
local XD = Instance.new("ScreenGui")
local BeGONE = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local AA = Instance.new("TextBox")
local yets = Instance.new("TextButton")
local stopyets = Instance.new("TextButton")
local ultrayets = Instance.new("TextButton")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel_3 = Instance.new("TextLabel")
XD.Name = "XD"
XD.Parent = game:GetService('CoreGui')
BeGONE.Name = "BeGONE"
BeGONE.Parent = XD
BeGONE.Active = true
BeGONE.Draggable = true
BeGONE.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
BeGONE.BorderSizePixel = 0
BeGONE.Position = UDim2.new(-0.0207920745, 111, 0.722570539, -1)
BeGONE.Size = UDim2.new(0, 389, 0, 129)
TextLabel.Parent = BeGONE
TextLabel.BackgroundColor3 = Color3.new(1, 0.419608, 0.129412)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 389, 0, 22)
TextLabel.Font = Enum.Font.Cartoon
TextLabel.Text = "fe yeet gui v3 (yes v3 xd) by scuba kermit"
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextSize = 16
TextLabel.TextWrapped = true
TextLabel_2.Parent = BeGONE
TextLabel_2.BackgroundColor3 = Color3.new(0.831373, 0.509804, 0.054902)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 0, 0.169230849, 0)
TextLabel_2.Size = UDim2.new(0, 389, 0, 9)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = ""
TextLabel_2.TextColor3 = Color3.new(0, 0, 0)
TextLabel_2.TextSize = 14
AA.Name = "AA"
AA.Parent = BeGONE
AA.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
AA.BorderSizePixel = 0
AA.Position = UDim2.new(0.20364143, 0, 0.299216866, 0)
AA.Size = UDim2.new(0, 229, 0, 35)
AA.Font = Enum.Font.SourceSans
AA.PlaceholderColor3 = Color3.new(0.831373, 0.831373, 0.831373)
AA.PlaceholderText = "Player you wanna yeet (can be shortened)"
AA.Text = ""
AA.TextColor3 = Color3.new(1, 1, 1)
AA.TextSize = 14
AA.TextWrapped = true
yets.Name = "yets"
yets.Parent = BeGONE
yets.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
yets.BorderSizePixel = 0
yets.Position = UDim2.new(0.0364736132, 0, 0.646153867, 0)
yets.Size = UDim2.new(0, 94, 0, 28)
yets.Font = Enum.Font.SourceSans
yets.Text = "Y E E T"
yets.TextColor3 = Color3.new(1, 1, 1)
yets.TextSize = 14
yets.TextWrapped = true
stopyets.Name = "stopyets"
stopyets.Parent = BeGONE
stopyets.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
stopyets.BorderSizePixel = 0
stopyets.Position = UDim2.new(0.722082794, 0, 0.646153867, 0)
stopyets.Size = UDim2.new(0, 94, 0, 28)
stopyets.Font = Enum.Font.SourceSans
stopyets.Text = "Stop Y E E T ing"
stopyets.TextColor3 = Color3.new(1, 1, 1)
stopyets.TextSize = 14
stopyets.TextWrapped = true
ultrayets.Name = "ultrayets"
ultrayets.Parent = BeGONE
ultrayets.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
ultrayets.BorderSizePixel = 0
ultrayets.Position = UDim2.new(0.298684418, 0, 0.646154106, 0)
ultrayets.Size = UDim2.new(0, 156, 0, 28)
ultrayets.Font = Enum.Font.SourceSans
ultrayets.Text = "U L T R A Y E E T"
ultrayets.TextColor3 = Color3.new(1, 1, 1)
ultrayets.TextSize = 14
ultrayets.TextWrapped = true
ImageLabel.Parent = XD
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.9, 0, 0.835423172, 0)
ImageLabel.Size = UDim2.new(0, 100, 0, 100)
ImageLabel.Image = "rbxassetid://2152234287"
TextLabel_3.Parent = ImageLabel
TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_3.BackgroundTransparency = 1
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.110989988, 0, 0.103538811, 0)
TextLabel_3.Size = UDim2.new(0, 77, 0, 23)
TextLabel_3.Font = Enum.Font.Arial
TextLabel_3.Text = "yeet gui"
TextLabel_3.TextColor3 = Color3.new(0, 0, 0)
TextLabel_3.TextSize = 14
yets.MouseButton1Click:Connect(function()
local target = unpack(GetPlayer(AA.Text)).Character

game:GetService'Players'.LocalPlayer.Character.Humanoid.PlatformStand = true
yeeting = true
local coin = Instance.new('BodyThrust',game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart)
coin.Force = Vector3.new(2590,0,2590)
coin.Name = "yeetforce"
repeat game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = target.Head.CFrame;coin.Location = target.Head.Position game["Run Service"].Heartbeat:wait() until not target.Head or yeeting == false
end)

stopyets.MouseButton1Click:Connect(function()
ypcall(function()
game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.yeetforce:Destroy()
game:GetService'Players'.LocalPlayer.Character.Humanoid.PlatformStand = false
end)
yeeting = false
end)
ultrayets.MouseButton1Click:Connect(function()
local target = unpack(GetPlayer(AA.Text)).Character

game:GetService'Players'.LocalPlayer.Character.Humanoid.PlatformStand = true
yeeting = true
local coin = Instance.new('BodyThrust',game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart)
coin.Force = Vector3.new(9999,9999,9999)
coin.Name = "yeetforce"
repeat game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = target.Head.CFrame;coin.Location = target.Head.Position game["Run Service"].Heartbeat:wait() until not target.Head or yeeting == false
end)

while game["Run Service"].Heartbeat:wait() do
ImageLabel.Rotation = ImageLabel.Rotation + 1
TextLabel_3.Text = ahh('yeet gui')
end