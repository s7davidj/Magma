--Script made by Heftig_HD#4355--
--Notoriety Autofarm script v1.3--
----------------------------------------------------------------------------------------------------------------------------------------
local FullAutoFarm = true         --Shadowraid(only) full autofarm, don't forget to put the script in autoexecute when you changed it to true
local AllHeist =     false        --Almost all Heists, change the false to true if you want to use it
local Difficult =    "Nightmare"  --You can select "Normal","Hard","Very Hard","Extreme","Anarchy" or "Nightmare"-
local Heist =        "Brick Bank" --[[You can choise: "Jewerly Shop","R&B Bank","Gift Factory","Four Stores","Diamond Store"
"Art Gallery","Ro-Bank","Mall Raid","Downtown Bank","Blood Money","Shadow Raid","Authority"
"BlackFriday","Cook Off","Nightclub","Haunted Forest".
bonus: "Golden Mask Casino" and "Brick Bank" gamepass not needed.
enjoy fucking this game,(hint do not turn both on,
 FullAutoFarm wont change difficult or heist only at AllHeist you can)
]]
----------------------------------------------------------------------------------------------------------------------------------------
local Scan = false
if game.ReplicatedFirst:FindFirstChild("ArrivalInGame") then
	Scan = true
	elseif not game.ReplicatedFirst:FindFirstChild("ArrivalInGame") then
		if FullAutoFarm == true and AllHeist == false then
game.ReplicatedStorage.MakeLobby:InvokeServer("Shadow Raid","Nightmare",false,"PUBLIC","ANY","true","false")
local plr = game.Players.LocalPlayer.Name
local heist = game.Players.LocalPlayer.PlayerGui.UI.frame_lobbyBrowser.frame_entryContainer:GetChildren()
for _,v in pairs(heist) do
if v.Name == "browserEntry" then
if v.lobbyName.Text == plr then
local Link = v.LobbyLink.Value	
game.ReplicatedStorage.RequestPlayerLevel:InvokeServer(plr)
game.ReplicatedStorage.GetTagInfo:InvokeServer(plr)
game.ReplicatedStorage.ReadyUp:FireServer(Link,true)
game.ReplicatedStorage.StartGame:FireServer(Link)
end
end	
end
end
if not game.ReplicatedFirst:FindFirstChild("ArrivalInGame") then
	if AllHeist == true and FullAutoFarm == false then
	game.ReplicatedStorage.MakeLobby:InvokeServer(Heist,Difficult,false,"PUBLIC","ANY","true","false")
local plr = game.Players.LocalPlayer.Name
local heist = game.Players.LocalPlayer.PlayerGui.UI.frame_lobbyBrowser.frame_entryContainer:GetChildren()
for _,v in pairs(heist) do
if v.Name == "browserEntry" then
if v.lobbyName.Text == plr then
local Link = v.LobbyLink.Value	
game.ReplicatedStorage.RequestPlayerLevel:InvokeServer(plr)
game.ReplicatedStorage.GetTagInfo:InvokeServer(plr)
game.ReplicatedStorage.ReadyUp:FireServer(Link,true)
game.ReplicatedStorage.StartGame:FireServer(Link) 
end
end
end
end
end
end
if FullAutoFarm and Scan == true then
wait(10)
game.ReplicatedStorage.RS_Package.Remotes.PlayerReady:FireServer("Class 1")
wait(3)
local WS = game:GetService("Workspace")
local PS = game:GetService("Players")
local Lootables = WS:WaitForChild("Lootables")
local HumRoot = PS.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
local NewO = Instance.new("Part", workspace)
NewO.CFrame = HumRoot.CFrame
NewO.CanCollide = false
NewO.Anchored = true
function Interact(O)
local Event = game:GetService("ReplicatedStorage").RS_Package.Remotes.CompleteInteraction
Event:FireServer(O)
end
PS.LocalPlayer.Character.Humanoid:ChangeState(11)
for _,v in pairs (workspace:GetDescendants()) do
if v.Name == "LootablePainting" then
local Picture = v:FindFirstChild("Picture")
repeat wait() HumRoot.CFrame = Picture.CFrame Interact(v) until v.Parent == nil
end
if v.Name == "Artifact" then
local Handle = v:FindFirstChild("Handle")
repeat wait() HumRoot.CFrame = Handle.CFrame Interact(v) until v.Parent == nil
end
if v.Name == "Samurai" then
local Part = v:FindFirstChildWhichIsA("Part")
repeat wait() HumRoot.CFrame = Part.CFrame Interact(v) until v.Parent == nil
end
if v.Name == "Coke" then
local Cola = v:FindFirstChild("Cola")
repeat wait() HumRoot.CFrame = Cola.CFrame Interact(v) until v.Parent == nil
end
if v.Name == "WeaponBagger" then
local Barrel = v:FindFirstChild("Barrel")
repeat wait() HumRoot.CFrame = Barrel.CFrame Interact(v) until v.Parent == nil
end
if v.Name == "GoldBars" then
local Bar = v:FindFirstChild("Bar")
repeat wait() HumRoot.CFrame = Bar.CFrame Interact(v) until v.Parent == nil
end
if v.Name == "Money" then
local Buck = v:FindFirstChild("Bucks")
repeat wait() HumRoot.CFrame = Buck.CFrame Interact(v) until v.Parent == nil
end
if v.Name == "SmallJewels2" then
local Part = v:FindFirstChildWhichIsA("Part")
repeat wait() HumRoot.CFrame = Part.CFrame Interact(v) until v.Parent == nil
end
if v.Name == "Jewels" then
local Part = v:FindFirstChildWhichIsA("Part")
repeat wait() HumRoot.CFrame = Part.CFrame Interact(v) until v.Parent == nil
end
if v.Name == "Cash Register" then
local Drawer = v:WaitForChild("Drawer")
repeat wait() HumRoot.CFrame = Drawer.CFrame Interact(v) until v.Name == "OpenedRegister"
end
if v.Name == "SmallJewels" then
local Ring = v:WaitForChild("Part")
repeat wait() HumRoot.CFrame = Ring.CFrame Interact(v) until v.Parent == nil
end
if v.Name == "DepositMoney" then
local Hitbox = v:WaitForChild("Hitbox")
repeat wait() HumRoot.CFrame = Hitbox.CFrame Interact(v) until v.Parent == nil
end
if v.Name == "DepositMoneyStack" then
local Hitbox = v:WaitForChild("Hitbox")
repeat wait() HumRoot.CFrame = Hitbox.CFrame Interact(v) until v.Parent == nil
end
if v.Name == "DepositGoldBar" then
local Hitbox = v:WaitForChild("Hitbox")
repeat wait() HumRoot.CFrame = Hitbox.CFrame Interact(v) until v.Parent == nil
end
if v.Name == "DepositRing" then
local Hitbox = v:WaitForChild("Hitbox")
repeat wait() HumRoot.CFrame = Hitbox.CFrame Interact(v) until v.Parent == nil
end
end
PS.LocalPlayer.Character.Humanoid:ChangeState(11)
warn("Teleported")
HumRoot.CFrame = NewO.CFrame
NewO:Remove()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-65, 2, -135)
wait(1)
game.ReplicatedStorage.RS_Package.Remotes.ThrowBag:FireServer(-65,2 ,-135)
wait(5)
game.ReplicatedStorage.RS_Package.Remotes.VoteReset:FireServer()
wait(0.1)
game.ReplicatedStorage.RS_Package.Remotes.VoteReset:FireServer()
elseif AllHeist and Scan == true then
local WS = game:GetService("Workspace")
local PS = game:GetService("Players")
local Lootables = WS:WaitForChild("Lootables")
local HumRoot = PS.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
local NewO = Instance.new("Part", workspace)
NewO.CFrame = HumRoot.CFrame
NewO.CanCollide = false
NewO.Anchored = true
function Interact(O)
local Event = game:GetService("ReplicatedStorage").RS_Package.Remotes.CompleteInteraction
Event:FireServer(O)
end
PS.LocalPlayer.Character.Humanoid:ChangeState(11)
for _,v in pairs (workspace:GetDescendants()) do
if v.Name == "LootablePainting" then
local Picture = v:FindFirstChild("Picture")
repeat wait() HumRoot.CFrame = Picture.CFrame Interact(v) until v.Parent == nil
end
if v.Name == "Artifact" then
local Handle = v:FindFirstChild("Handle")
repeat wait() HumRoot.CFrame = Handle.CFrame Interact(v) until v.Parent == nil
end
if v.Name == "Samurai" then
local Part = v:FindFirstChildWhichIsA("Part")
repeat wait() HumRoot.CFrame = Part.CFrame Interact(v) until v.Parent == nil
end
if v.Name == "Coke" then
local Cola = v:FindFirstChild("Cola")
repeat wait() HumRoot.CFrame = Cola.CFrame Interact(v) until v.Parent == nil
end
if v.Name == "WeaponBagger" then
local Barrel = v:FindFirstChild("Barrel")
repeat wait() HumRoot.CFrame = Barrel.CFrame Interact(v) until v.Parent == nil
end
if v.Name == "GoldBars" then
local Bar = v:FindFirstChild("Bar")
repeat wait() HumRoot.CFrame = Bar.CFrame Interact(v) until v.Parent == nil
end
if v.Name == "Money" then
local Buck = v:FindFirstChild("Bucks")
repeat wait() HumRoot.CFrame = Buck.CFrame Interact(v) until v.Parent == nil
end
if v.Name == "SmallJewels2" then
local Part = v:FindFirstChildWhichIsA("Part")
repeat wait() HumRoot.CFrame = Part.CFrame Interact(v) until v.Parent == nil
end
if v.Name == "Jewels" then
local Part = v:FindFirstChildWhichIsA("Part")
repeat wait() HumRoot.CFrame = Part.CFrame Interact(v) until v.Parent == nil
end
if v.Name == "Cash Register" then
local Drawer = v:WaitForChild("Drawer")
repeat wait() HumRoot.CFrame = Drawer.CFrame Interact(v) until v.Name == "OpenedRegister"
end
if v.Name == "SmallJewels" then
local Ring = v:WaitForChild("Part")
repeat wait() HumRoot.CFrame = Ring.CFrame Interact(v) until v.Parent == nil
end
if v.Name == "DepositMoney" then
local Hitbox = v:WaitForChild("Hitbox")
repeat wait() HumRoot.CFrame = Hitbox.CFrame Interact(v) until v.Parent == nil
end
if v.Name == "DepositMoneyStack" then
local Hitbox = v:WaitForChild("Hitbox")
repeat wait() HumRoot.CFrame = Hitbox.CFrame Interact(v) until v.Parent == nil
end
if v.Name == "DepositGoldBar" then
local Hitbox = v:WaitForChild("Hitbox")
repeat wait() HumRoot.CFrame = Hitbox.CFrame Interact(v) until v.Parent == nil
end
if v.Name == "DepositRing" then
local Hitbox = v:WaitForChild("Hitbox")
repeat wait() HumRoot.CFrame = Hitbox.CFrame Interact(v) until v.Parent == nil
end
end
PS.LocalPlayer.Character.Humanoid:ChangeState(11)
warn("Teleported")
HumRoot.CFrame = NewO.CFrame
NewO:Remove()
end