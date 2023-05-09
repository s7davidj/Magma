function LoadLibrary(a)
    return loadstring(game:HttpGet("https://pastebin.com/raw/UfzKgS6T", true))()
end

loadstring(game:GetObjects("rbxassetid://4480871791")[1].Source)()
-----------//SHRIKE THE DICE GOD\\-----------
--[[Movelist
Q = Teleport
E = Massive rend
R = Dice throw
T = Taunt
Y = Super kick(Target someone first)
U = Combustion light
P = Portal kick
F = Ultra form
G = Portal shotgun
H = Widowdicer(Sidekick)(Press again to make her dissapear)
J = Invisible(Press again to appear)
K = Lightning dice(Target someone first)
L = The end(Obliterates anything that's close)
-----WIDOWDICER CONTROLS-----
Z = Shoot
X = Swap gun to Uzi
C = Swap gun to Desert eagle
V = Swap gun to Raygun
B = Remove/wear glasses.
---------]]

--Alright Xester, you had your fun.--
--It's time for something new.--

Player=game.Players.LocalPlayer
Character=workspace.CloneCharacter
Character.Humanoid.Name = "noneofurbusiness"
hum = Character.noneofurbusiness
LeftArm=Character["Left Arm"]
LeftLeg=Character["Left Leg"]
RightArm=Character["Right Arm"]
RightLeg=Character["Right Leg"]
Root=Character["HumanoidRootPart"]
Head=Character["Head"]
Torso=Character["Torso"]
Neck=Torso["Neck"]
mouse = Player:GetMouse()
walking = false
hitdebounce = false
jumping = false
invisible = false
attacking = false
firsttime = false
tauntdebounce = false
raygun = false
position = nil
classical = true
dada = false
secondform = false
industrial = false
sidekicktaunting = false
popstar = false
vinyl = false
brutal = false
love = false
godgun = false
talkingtalking = false
glasson = true
glassonp = false
sidekick = false
MseGuide = true
sidekickshootanim = false
running = false
settime = 0
sine = 0
t = 0
ws = 32
change = 1
combo1 = true
equip = false
swetch = false
dgs = 75
combo2 = false
switch1 = true
switch2 = false
tauntdebounce = false
firsttime2 = false
stop = false
combo3 = false
gunallowance = false
shooting = false
RunSrv = game:GetService("RunService")
RenderStepped = game:GetService("RunService").RenderStepped
removeuseless = game:GetService("Debris")
smoothen = game:GetService("TweenService")
cam = workspace.CurrentCamera
randomcolortable={"Cyan","Really red","Cyan","Royal purple","Lime green","Crimson","Daisy yellow","Eggplant"} ---rainbow effect
randomsound={1841352043,1841310110,1841352055}
dicesound={3122807673,3122808037,3122808415,3122808790,3122809131}
shellsound={3178804103,3178804279,3178804471}
shellsound2={3182143803,3182144291,3182144511}
local dmt2 = {1843002153,3111464957,3164241009}
local soundtable = {3164866143,3164866542,3164866984,3164867563,3164868011,3164868391,3164868830,3164869532,3164869991,3164870493,3164872506,3164872843,3164873181}
local p2 = {3206942440,3206936546,3206936808,3206937465}
local p1 = {3206782096,3206785806,3206954599,3206954963,3206955213,3206955582,3206955890,3206956319,3206956640,3206957177}
local secondtheme={561542239,3206925146}
random = #randomcolortable

screenGui = Instance.new("ScreenGui")
screenGui.Parent = script.Parent

local HEADLERP = Instance.new("ManualWeld")
HEADLERP.Parent = Head
HEADLERP.Part0 = Head
HEADLERP.Part1 = Head
HEADLERP.C0 = CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local TORSOLERP = Instance.new("ManualWeld")
TORSOLERP.Parent = Root
TORSOLERP.Part0 = Torso
TORSOLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local ROOTLERP = Instance.new("ManualWeld")
ROOTLERP.Parent = Root
ROOTLERP.Part0 = Root
ROOTLERP.Part1 = Torso
ROOTLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local RIGHTARMLERP = Instance.new("ManualWeld")
RIGHTARMLERP.Parent = RightArm
RIGHTARMLERP.Part0 = RightArm
RIGHTARMLERP.Part1 = Torso
RIGHTARMLERP.C0 = CFrame.new(-1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local LEFTARMLERP = Instance.new("ManualWeld")
LEFTARMLERP.Parent = LeftArm
LEFTARMLERP.Part0 = LeftArm
LEFTARMLERP.Part1 = Torso
LEFTARMLERP.C0 = CFrame.new(1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local RIGHTLEGLERP = Instance.new("ManualWeld")
RIGHTLEGLERP.Parent = RightLeg
RIGHTLEGLERP.Part0 = RightLeg
RIGHTLEGLERP.Part1 = Torso
RIGHTLEGLERP.C0 = CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local LEFTLEGLERP = Instance.new("ManualWeld")
LEFTLEGLERP.Parent = LeftLeg
LEFTLEGLERP.Part0 = LeftLeg
LEFTLEGLERP.Part1 = Torso
LEFTLEGLERP.C0 = CFrame.new(0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local function weldBetween(a, b)
    local weld = Instance.new("ManualWeld", a)
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    return weld
end

function MAKETRAIL(PARENT,POSITION1,POSITION2,LIFETIME,COLOR)
A = Instance.new("Attachment", PARENT)
A.Position = POSITION1
A.Name = "A"
B = Instance.new("Attachment", PARENT)
B.Position = POSITION2
B.Name = "B"
tr1 = Instance.new("Trail", PARENT)
tr1.Attachment0 = A
tr1.Attachment1 = B
tr1.Enabled = true
tr1.Lifetime = LIFETIME
tr1.TextureMode = "Static"
tr1.LightInfluence = 0
tr1.Color = COLOR
tr1.Transparency = NumberSequence.new(0, 1)
end

coroutine.wrap(function()
while wait() do
if secondform then
elseif invisible then
else
doomtheme.Volume = 3
end
hum.WalkSpeed = ws
hum.JumpPower = 75
LeftArm.BrickColor = BrickColor.new("Really black")
RightArm.BrickColor = BrickColor.new("Really black")
Head.BrickColor = BrickColor.new("Really black")
end
end)()
godmode = coroutine.wrap(function()
for i,v in pairs(Character:GetChildren()) do
if v:IsA("BasePart") and v ~= Root then
v.Anchored = false
end
end
while true do
hum.MaxHealth = math.huge
wait(0.0000001)
hum.Health = math.huge
wait()
end
end)
godmode()
ff = Instance.new("ForceField", Character)
ff.Visible = false

----defaultpos----
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),.2)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
----defaultpos----

coroutine.wrap(function()
for i,v in pairs(Character:GetChildren()) do
if v.Name == "Animate" then v:Remove()
end
end
end)()

function damagealll(Radius,Position)		
	local Returning = {}		
	for _,v in pairs(workspace:GetChildren()) do		
		if v~=Character and v:FindFirstChildOfClass('Humanoid') and v:FindFirstChild('Torso') or v:FindFirstChild('UpperTorso') then
if v:FindFirstChild("Torso") then		
			local Mag = (v.Torso.Position - Position).magnitude		
			if Mag < Radius then		
				table.insert(Returning,v)		
			end
elseif v:FindFirstChild("UpperTorso") then	
			local Mag = (v.UpperTorso.Position - Position).magnitude		
			if Mag < Radius then		
				table.insert(Returning,v)		
			end
end	
		end		
	end		
	return Returning		
end

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")

frame = 1 / 60
tf = 0
allowframeloss = false
tossremainder = false


lastframe = tick()
script.Heartbeat:Fire()


game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.Heartbeat:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

function swait(num)
	if num == 0 or num == nil then
		game:service("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:service("RunService").Stepped:wait(0)
		end
	end
end

for _,x in pairs(Character:GetChildren()) do
if x:IsA("Decal") then x:Remove() end
end

function SOUND(PARENT,ID,VOL,LOOP,REMOVE)
so = Instance.new("Sound")
so.Parent = PARENT
so.SoundId = "rbxassetid://"..ID
so.Volume = VOL
so.Looped = LOOP
so:Play()
removeuseless:AddItem(so,REMOVE)
end

for _,n in pairs(Character:GetChildren()) do
if n:IsA("Accessory") then n:Remove() end
end
for _,x in pairs(Character:GetChildren()) do
if x:IsA("Decal") then x:Remove() end
end
Head.face:Remove()

dmt2random = dmt2[math.random(1,#dmt2)]
doomtheme = Instance.new("Sound", Torso)
doomtheme.Volume = 3
doomtheme.Name = "doomtheme"
doomtheme.Looped = true
doomtheme.SoundId = "rbxassetid://"..dmt2random
doomtheme:Play()

Torso.ChildRemoved:connect(function(removed)
if removed.Name == "doomtheme" then
if secondform then
local thousand = secondtheme[math.random(1,#secondtheme)]
doomtheme = Instance.new("Sound",Torso)
doomtheme.SoundId = "rbxassetid://"..thousand
if invisible then
doomtheme.Volume = 0
else
doomtheme.Volume = 4
end
doomtheme.Name = "doomtheme"
doomtheme.Looped = true
doomtheme:Play()
else
dmt2random = dmt2[math.random(1,#dmt2)]
doomtheme = Instance.new("Sound",Torso)
doomtheme.SoundId = "rbxassetid://2683987785"
doomtheme.SoundId = "rbxassetid://"..dmt2random
if invisible then
doomtheme.Volume = 0
else
doomtheme.Volume = 3
end
doomtheme.Name = "doomtheme"
doomtheme.Looped = true
doomtheme:Play()
end
end
end)

eyo = Instance.new("Part",Head)
eyo.BrickColor = BrickColor.new("White")
eyo.Material = "Neon"
eyo.Name = "eyo"
eyo.CanCollide = false
eyo.Size = Vector3.new(0.11, 0.12, 0.11)
eyeballmesh = Instance.new("SpecialMesh",eyo)
eyeballmesh.MeshType = "Sphere"
eyoweld = weldBetween(eyo,Head)
eyoweld.C0 = CFrame.new(-.215,-.21,.515)

coroutine.wrap(function()
while true do
wait(5)
for i = 1, 10 do
eyo.Size = eyo.Size - Vector3.new(0,.008,0)
swait()
end
for i = 1, 10 do
eyo.Size = eyo.Size + Vector3.new(0,.008,0)
swait()
end
swait()
end
end)()

leftlocation = Instance.new("Part",LeftArm)
leftlocation.Size = Vector3.new(1,1,1)
leftlocation.Transparency = 1
leftlocationweld = weldBetween(leftlocation,LeftArm)
leftlocationweld.C0 = CFrame.new(0,1.2,0)
rightlocation = Instance.new("Part",RightArm)
rightlocation.Size = Vector3.new(1,1,1)
rightlocation.Transparency = 1
rightlocationweld = weldBetween(rightlocation,RightArm)
rightlocationweld.C0 = CFrame.new(0,1.2,0)

fedora = Instance.new("Part",Character)
fedora.Size = Vector3.new(2,2,2)
fedora.CFrame = Head.CFrame
fedora.CanCollide = false
fedoraweld = Instance.new("Weld",fedora)
fedoraweld.Part0 = fedora
fedoraweld.Part1 = Head
fedoraweld.C0 = fedora.CFrame:inverse() * Head.CFrame * CFrame.new(-.1,-1.04,0) * CFrame.Angles(math.rad(0),math.rad(-20),math.rad(-10))
mfedora = Instance.new("SpecialMesh", fedora)
mfedora.MeshType = "FileMesh"
mfedora.Scale = Vector3.new(1.18, 1.18, 1.18)
mfedora.MeshId,mfedora.TextureId = 'http://www.roblox.com/asset/?id=11144636','http://www.roblox.com/asset/?id=1416342992'

mask = Instance.new("Part",Character)
mask.Size = Vector3.new(2,2,2)
mask.CFrame = Head.CFrame
mask.CanCollide = false
maskweld = Instance.new("Weld",mask)
maskweld.Part0 = mask
maskweld.Part1 = Head
maskweld.C0 = mask.CFrame:inverse() * Head.CFrame * CFrame.new(-.16,-.1,.62) * CFrame.Angles(math.rad(0),math.rad(10),math.rad(0))
mmask = Instance.new("SpecialMesh", mask)
mmask.MeshType = "FileMesh"
mmask.Scale = Vector3.new(1.25, 1.25, 1.25)
mmask.MeshId,mmask.TextureId = 'http://www.roblox.com/asset/?id=12470186','http://www.roblox.com/asset/?id=238375294'

shirt = Instance.new("Shirt", Character)
shirt.Name = "Shirt"
pants = Instance.new("Pants", Character)
pants.Name = "Pants"
Character.Shirt.ShirtTemplate = "rbxassetid://33209766"----lol
Character.Pants.PantsTemplate = "rbxassetid://33210029"

slaten = Instance.new("Decal",mask)
slaten.Texture = "rbxassetid://654786596"
slaten.Color3 = Color3.new(0, 0, 0)
slaten.Face = "Top"

slaten2 = Instance.new("Decal",mask)
slaten2.Texture = "rbxassetid://647393266"
slaten2.Color3 = Color3.new(0, 0, 0)
slaten2.Face = "Top"

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='m' then
immortality()
	for i,v in pairs(Player.Character:GetDescendants()) do
		if v:IsA("BodyVelocity") then
			v:Remove()
		end
	end
elseif Press=='r' then
if debounce then return end
debounce = true
attacking = true
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
g1.CFrame = CFrame.new(Root.Position,mouse.Hit.p)
ws = 4
for i = 1, 20 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)),.2)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.4, 2 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(-5), math.rad(30 + 0 * math.sin(sine/12)), math.rad(-5 - .1 * math.sin(sine/12))), 0.2)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.55, 2.0 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(5), math.rad(-20 + 0 * math.sin(sine/12)), math.rad(5 + .1 * math.sin(sine/12))), 0.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-88 + 2 * math.sin(sine/12)),math.rad(76 - 1 * math.sin(sine/12)),math.rad(0)), 0.2)
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(0)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3,0,.2) * CFrame.Angles(math.rad(30),math.rad(30),0),.2)
swait()
end
ws = 0
local dice = Instance.new("Part",Torso)
local mv = (dice.Position - mouse.Hit.p).magnitude
if mv > 50 then
mv = 50
end
dice.CanCollide = true
dice.CFrame = Root.CFrame * CFrame.new(2,0,-3.6) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
dice.Anchored = false
dice.Transparency = 1
dice.Size = Vector3.new(.5,.5,.5)
dice.Velocity = CFrame.new(dice.Position,mouse.Hit.p).lookVector*(mv * 2)
dicemesh = Instance.new("SpecialMesh",dice)
dicemesh.MeshId = "rbxassetid://95358536"
dicemesh.TextureId = "rbxassetid://100025876"
dicemesh.Scale = Vector3.new(.21,.21,.21)
coroutine.wrap(function()
for i = 1, 10 do
dice.Transparency = dice.Transparency - .1
swait()
end
end)()
local toched = false
dice.Touched:connect(function(explod)
if toched then return end
toched = true
r = dicesound[math.random(1,#dicesound)]
local daic = Instance.new("Sound",dice)
daic.SoundId = "rbxassetid://"..r
daic.Volume = 10
daic:Play()
wait(1.5)
ex2 = Instance.new("Part",Torso)
ex2.Anchored = true
ex2.CanCollide = false
ex2.Transparency = 1
ex2.Size = Vector3.new(.1,.1,.1)
ex2.CFrame = dice.CFrame
removeuseless:AddItem(ex2,4)
local ex = Instance.new("Sound",ex2)
ex.SoundId = "rbxassetid://3122872389"
ex.Volume = 10
ex:Play()
Hit = damagealll(34,dice.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
slachtoffer = v:FindFirstChildOfClass("Humanoid")
if secondform then
slachtoffer.Parent:BreakJoints()
else
slachtoffer:TakeDamage(math.random(48,72))
end
if secondform then
coroutine.wrap(function()
if tauntdebounce then return end
tauntdebounce = true
rdnm2 = p1[math.random(1,#p1)]
tauntsound = Instance.new("Sound", Head)
tauntsound.Volume = 10
tauntsound.SoundId = "http://www.roblox.com/asset/?id="..rdnm2
tauntsound.Looped = false
tauntsound:Play()
wait(3)
wait(tauntsound.TimeLength)
tauntsound:Remove()
wait(1)
tauntdebounce = false
end)()
end
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(dice.Position,torso.Position).lookVector*125
removeuseless:AddItem(vel,.1)
end
end
dice:Remove()
local lightofdeath = Instance.new("Part",Torso)
lightofdeath.Size = Vector3.new(1000000,20,20)
lightofdeath.CanCollide = false
lightofdeath.Anchored = true
lightofdeath.Material = "Neon"
lightofdeath.Transparency = .1
lightofdeath.BrickColor = BrickColor.new("White")
lightofdeath.CFrame = CFrame.new(dice.Position) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(90))
lightofdeath.Shape = "Cylinder"
coroutine.wrap(function()
local shockwave = Instance.new("Part", Torso)
shockwave.Size = Vector3.new(1,1,1)
shockwave.CanCollide = false
shockwave.Anchored = true
shockwave.Transparency = 0
shockwave.BrickColor = BrickColor.new("White")
shockwave.CFrame = CFrame.new(dice.Position) * CFrame.new(0,-1.75,0)
local shockwavemesh = Instance.new("SpecialMesh", shockwave)
shockwavemesh.Scale = Vector3.new(4,.7,4)
shockwavemesh.MeshId = "rbxassetid://20329976"
local shockwave2 = Instance.new("Part", Torso)
shockwave2.Size = Vector3.new(1,1,1)
shockwave2.CanCollide = false
shockwave2.Anchored = true
shockwave2.Transparency = 0
shockwave2.BrickColor = BrickColor.new("White")
shockwave2.CFrame = CFrame.new(dice.Position) * CFrame.new(0,-1.6,0)
local shockwavemesh2 = Instance.new("SpecialMesh", shockwave2)
shockwavemesh2.Scale = Vector3.new(4,.7,4)
shockwavemesh2.MeshId = "rbxassetid://20329976"
local shockwave3 = Instance.new("Part", Torso)
shockwave3.Size = Vector3.new(1,1,1)
shockwave3.CanCollide = false
shockwave3.Anchored = true
shockwave3.Transparency = 0
shockwave3.BrickColor = BrickColor.new("Really black")
shockwave3.CFrame = CFrame.new(dice.Position) * CFrame.new(0,-1.75,0)
local shockwavemesh3 = Instance.new("SpecialMesh", shockwave3)
shockwavemesh3.Scale = Vector3.new(4,.7,4)
shockwavemesh3.MeshId = "rbxassetid://20329976"
local shockwave4 = Instance.new("Part", Torso)
shockwave4.Size = Vector3.new(1,1,1)
shockwave4.CanCollide = false
shockwave4.Anchored = true
shockwave2.Transparency = 0
shockwave4.BrickColor = BrickColor.new("Really black")
shockwave4.CFrame = CFrame.new(dice.Position) * CFrame.new(0,-1.6,0)
local shockwavemesh4 = Instance.new("SpecialMesh", shockwave4)
shockwavemesh4.Scale = Vector3.new(4,.7,4)
shockwavemesh4.MeshId = "rbxassetid://20329976"
local e = Instance.new("Part",Torso)
e.Size = Vector3.new(2,2,2)
e.Material = "Neon"
e.Anchored = true
e.CanCollide = false
e.CFrame = dice.CFrame
e.Shape = "Ball"
e.BrickColor = BrickColor.new("White")
for i = 1, 50 do
e.Size = e.Size + Vector3.new(3.5,3.5,3.5)
e.Transparency = e.Transparency + .035
shockwave.CFrame = shockwave.CFrame * CFrame.Angles(math.rad(0),math.rad(0+21),0)
shockwave2.CFrame = shockwave2.CFrame * CFrame.Angles(math.rad(0),math.rad(0-16),0)
shockwave.Transparency = shockwave.Transparency + 0.03
shockwave2.Transparency = shockwave2.Transparency + 0.03
shockwavemesh2.Scale = shockwavemesh2.Scale + Vector3.new(2,.5,2)
shockwavemesh.Scale = shockwavemesh.Scale + Vector3.new(2,.5,2)
shockwave3.CFrame = shockwave3.CFrame * CFrame.Angles(math.rad(0),math.rad(0+9),0)
shockwave4.CFrame = shockwave4.CFrame * CFrame.Angles(math.rad(0),math.rad(0-9),0)
shockwave3.Transparency = shockwave3.Transparency + 0.05
shockwave4.Transparency = shockwave4.Transparency + 0.05
shockwavemesh3.Scale = shockwavemesh3.Scale + Vector3.new(5,1,5)
shockwavemesh4.Scale = shockwavemesh4.Scale + Vector3.new(5,1,5)
swait()
end
e:Remove()
shockwave:Remove()
shockwave2:Remove()
shockwave3:Remove()
shockwave4:Remove()
end)()
coroutine.wrap(function()
for i = 1, 20 do
lightofdeath.Transparency = lightofdeath.Transparency + .05
swait()
end
lightofdeath:Remove()
end)()
end)
for i = 1, 25 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3,1,.35) * CFrame.Angles(math.rad(-110),math.rad(22),math.rad(-1)),.2)
swait()
end
ws = 32
removeuseless:AddItem(g1,.0001)
debounce = false
attacking = false
elseif Press=='q' then
if debounce then return end
if mouse.Target ~= nil then
debounce = true
attacking = true
tps = Instance.new("Sound", Torso)
tps.Volume = 10
tps.SoundId = "rbxassetid://2610939724"
tps:Play()
removeuseless:AddItem(tps,4)
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
g1.CFrame = CFrame.new(Root.Position,mouse.Hit.p)
removeuseless:AddItem(g1,.05)
local fakemask = Instance.new("Part",Character)
fakemask.Size = Vector3.new(1,1,1)
fakemask.CFrame = mask.CFrame
fakemask.Material = "Neon"
fakemask.CanCollide = false
fakemask.Anchored = true
fakemask.BrickColor = BrickColor.new("Really black")
fakemask.Transparency = .5
local mfMask = Instance.new("SpecialMesh", fakemask)
mfMask.MeshType = "FileMesh"
mfMask.Scale = Vector3.new(1.25,1.25,1.25)
mfMask.MeshId = "rbxassetid://12470186"
local fakefedora = Instance.new("Part",Character)
fakefedora.Size = Vector3.new(2,2,2)
fakefedora.CFrame = fedora.CFrame
fakefedora.CanCollide = false
fakefedora.Transparency = .5
fakefedora.Anchored = true
fakefedora.BrickColor = BrickColor.new("Really black")
local fakefedoram = Instance.new("SpecialMesh", fakefedora)
fakefedoram.MeshType = "FileMesh"
fakefedoram.Scale = Vector3.new(1.1, 1.1, 1.1)
fakefedoram.MeshId = "rbxassetid://11144636"
local fakehead = Instance.new("Part",Character)
fakehead.Size = Vector3.new(1.01,1.01,1.01)
fakehead.Anchored = true
fakehead.CanCollide = false
fakehead.Transparency = .5
fakehead.BrickColor = BrickColor.new("Really black")
fakehead.Material = "Neon"
fakehead.CFrame = Head.CFrame
local fakeheadmesh = Instance.new("SpecialMesh",fakehead)
fakeheadmesh.MeshType = "Head"
fakeheadmesh.Scale = Vector3.new(1.255,1.255,1.255)
local fakelarm = Instance.new("Part",Character)
fakelarm.CFrame = LeftArm.CFrame
fakelarm.Size = Vector3.new(1,2,1)
fakelarm.CanCollide = false
fakelarm.BrickColor = BrickColor.new("Really black")
fakelarm.Transparency = .5
fakelarm.Material = "Neon"
fakelarm.Anchored = true
local fakerarm = Instance.new("Part",Character)
fakerarm.CFrame = RightArm.CFrame
fakerarm.Size = Vector3.new(1,2,1)
fakerarm.Transparency = .5
fakerarm.BrickColor = BrickColor.new("Really black")
fakerarm.CanCollide = false
fakerarm.Material = "Neon"
fakerarm.Anchored = true
local fakelleg = Instance.new("Part",Character)
fakelleg.CFrame = LeftLeg.CFrame
fakelleg.Size = Vector3.new(1,2,1)
fakelleg.BrickColor = BrickColor.new("Really black")
fakelleg.Transparency = .5
fakelleg.CanCollide = false
fakelleg.Material = "Neon"
fakelleg.Anchored = true
local fakerleg = Instance.new("Part",Character)
fakerleg.CFrame = RightLeg.CFrame
fakerleg.Size = Vector3.new(1,2,1)
fakerleg.Transparency = .5
fakerleg.BrickColor = BrickColor.new("Really black")
fakerleg.CanCollide = false
fakerleg.Material = "Neon"
fakerleg.Anchored = true
local fakeTorso = Instance.new("Part",Character)
fakeTorso.CFrame = Torso.CFrame
fakeTorso.Size = Vector3.new(2,2,1)
fakeTorso.Transparency = .5
fakeTorso.CanCollide = false
fakeTorso.BrickColor = BrickColor.new("Really black")
fakeTorso.Material = "Neon"
fakeTorso.Anchored = true
coroutine.wrap(function()
for i = 1, 80 do
fakemask.Transparency = fakemask.Transparency + .0125
fakefedora.Transparency = fakefedora.Transparency + .0125
fakehead.Transparency = fakehead.Transparency + .0125
fakelarm.Transparency = fakelarm.Transparency + .0125
fakerarm.Transparency = fakerarm.Transparency + .0125
fakelleg.Transparency = fakelleg.Transparency + .0125
fakerleg.Transparency = fakerleg.Transparency + .0125
fakeTorso.Transparency = fakeTorso.Transparency + .0125
swait()
end
fakemask:Remove()
fakefedora:Remove()
fakehead:Remove()
fakelarm:Remove()
fakerarm:Remove()
fakelleg:Remove()
fakerleg:Remove()
fakeTorso:Remove()
end)()
Root.CFrame = CFrame.new(mouse.Hit.p) * CFrame.new(0,3.3,0)
wait(.1)
attacking = false
debounce = false
end
elseif Press=='v' then
if debounce then return end
if not sidekick then return end
if sidekickshootanim then return end
sidekickshootanim = true
for i = 1, 20 do
gunweld2.C0 = gunweld2.C0:lerp(CFrame.new(0,-.9,-.85) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(180)),.2)
righthandweld.C0 = righthandweld.C0:lerp(CFrame.new(2 + .1 * math.sin(sine/15),1.8 - .05 * math.sin(sine/14),.4 + .02 * math.sin(sine/18)) * CFrame.Angles(math.rad(-20 + 2 * math.sin(sine/18)),math.rad(20),math.rad(-120 + 8 * math.sin(sine/16))),.2)
righthandweld2.C0 = righthandweld2.C0:lerp(CFrame.new(0,3 + .06 * math.sin(sine/14),1) * CFrame.Angles(math.rad(-15 + 3 * math.sin(sine/14)),math.rad(180 + 8 * math.sin(sine/16)),math.rad(0)),.2)
thedice.CFrame = thedice.CFrame:lerp(Root.CFrame * CFrame.new(5 + .3 * math.sin(sine/22),2.1 + .25 * math.sin(sine/16),0) * CFrame.Angles(math.rad(10 + 2 * math.sin(sine/22)),math.rad(120 - 2 * math.sin(sine/21)),math.rad(-10 - 2 * math.sin(sine/23))),.1)
gun.Transparency = gun.Transparency + .05
gun2.Transparency = gun2.Transparency + .05
gun3.Transparency = gun3.Transparency + .05
gun4.Transparency = gun4.Transparency + .05
swait()
end
gunmesh.MeshId = "rbxassetid://430586811"
gunmesh.TextureId = "rbxassetid://430586818"
gunmesh.Scale = Vector3.new(.0011,.0011,.0011)
gunweld.C0 = CFrame.new(-1.2,0,-.6) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(90))
for i = 1, 20 do
gunweld2.C0 = gunweld2.C0:lerp(CFrame.new(0,-.9,-.85) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(180)),.2)
righthandweld.C0 = righthandweld.C0:lerp(CFrame.new(2 + .1 * math.sin(sine/15),1.8 - .05 * math.sin(sine/14),.4 + .02 * math.sin(sine/18)) * CFrame.Angles(math.rad(-20 + 2 * math.sin(sine/18)),math.rad(20),math.rad(-120 + 8 * math.sin(sine/16))),.2)
righthandweld2.C0 = righthandweld2.C0:lerp(CFrame.new(0,3 + .06 * math.sin(sine/14),1) * CFrame.Angles(math.rad(-15 + 3 * math.sin(sine/14)),math.rad(180 + 8 * math.sin(sine/16)),math.rad(0)),.2)
thedice.CFrame = thedice.CFrame:lerp(Root.CFrame * CFrame.new(5 + .3 * math.sin(sine/22),2.1 + .25 * math.sin(sine/16),0) * CFrame.Angles(math.rad(10 + 2 * math.sin(sine/22)),math.rad(120 - 2 * math.sin(sine/21)),math.rad(-10 - 2 * math.sin(sine/23))),.1)
gun.Transparency = gun.Transparency - .05
swait()
end
gun2.Transparency = 1
gun3.Transparency = 1
gun4.Transparency = 1
uzi = false
deserteagle = true
raygun = true
sidekickshootanim = false
elseif Press=='c' then
if debounce then return end
if not sidekick then return end
if sidekickshootanim then return end
sidekickshootanim = true
for i = 1, 20 do
gunweld2.C0 = gunweld2.C0:lerp(CFrame.new(0,-.9,-.85) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(180)),.2)
righthandweld.C0 = righthandweld.C0:lerp(CFrame.new(2 + .1 * math.sin(sine/15),1.8 - .05 * math.sin(sine/14),.4 + .02 * math.sin(sine/18)) * CFrame.Angles(math.rad(-20 + 2 * math.sin(sine/18)),math.rad(20),math.rad(-120 + 8 * math.sin(sine/16))),.2)
righthandweld2.C0 = righthandweld2.C0:lerp(CFrame.new(0,3 + .06 * math.sin(sine/14),1) * CFrame.Angles(math.rad(-15 + 3 * math.sin(sine/14)),math.rad(180 + 8 * math.sin(sine/16)),math.rad(0)),.2)
thedice.CFrame = thedice.CFrame:lerp(Root.CFrame * CFrame.new(5 + .3 * math.sin(sine/22),2.1 + .25 * math.sin(sine/16),0) * CFrame.Angles(math.rad(10 + 2 * math.sin(sine/22)),math.rad(120 - 2 * math.sin(sine/21)),math.rad(-10 - 2 * math.sin(sine/23))),.1)
gun.Transparency = gun.Transparency + .05
swait()
end
gunmesh.MeshId = "rbxassetid://431258335"
gunmesh.TextureId = "rbxassetid://431259201"
gunmesh.Scale = Vector3.new(.003,.003,.003)
gunweld.C0 = CFrame.new(0,-.3,-.85) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(180))
for i = 1, 20 do
gunweld2.C0 = gunweld2.C0:lerp(CFrame.new(0,-.9,-.85) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(180)),.2)
righthandweld.C0 = righthandweld.C0:lerp(CFrame.new(2 + .1 * math.sin(sine/15),1.8 - .05 * math.sin(sine/14),.4 + .02 * math.sin(sine/18)) * CFrame.Angles(math.rad(-20 + 2 * math.sin(sine/18)),math.rad(20),math.rad(-120 + 8 * math.sin(sine/16))),.2)
righthandweld2.C0 = righthandweld2.C0:lerp(CFrame.new(0,3 + .06 * math.sin(sine/14),1) * CFrame.Angles(math.rad(-15 + 3 * math.sin(sine/14)),math.rad(180 + 8 * math.sin(sine/16)),math.rad(0)),.2)
thedice.CFrame = thedice.CFrame:lerp(Root.CFrame * CFrame.new(5 + .3 * math.sin(sine/22),2.1 + .25 * math.sin(sine/16),0) * CFrame.Angles(math.rad(10 + 2 * math.sin(sine/22)),math.rad(120 - 2 * math.sin(sine/21)),math.rad(-10 - 2 * math.sin(sine/23))),.1)
gun.Transparency = gun.Transparency - .05
gun2.Transparency = gun2.Transparency - .05
gun3.Transparency = gun3.Transparency - .05
gun4.Transparency = gun4.Transparency - .05
swait()
end
gun2.Transparency = 0
gun3.Transparency = 0
gun4.Transparency = 0
uzi = false
deserteagle = true
raygun = false
sidekickshootanim = false
elseif Press=='x' then
if debounce then return end
if not sidekick then return end
if sidekickshootanim then return end
sidekickshootanim = true
for i = 1, 20 do
gunweld2.C0 = gunweld2.C0:lerp(CFrame.new(0,-.9,-.85) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(180)),.2)
righthandweld.C0 = righthandweld.C0:lerp(CFrame.new(2 + .1 * math.sin(sine/15),1.8 - .05 * math.sin(sine/14),.4 + .02 * math.sin(sine/18)) * CFrame.Angles(math.rad(-20 + 2 * math.sin(sine/18)),math.rad(20),math.rad(-120 + 8 * math.sin(sine/16))),.2)
righthandweld2.C0 = righthandweld2.C0:lerp(CFrame.new(0,3 + .06 * math.sin(sine/14),1) * CFrame.Angles(math.rad(-15 + 3 * math.sin(sine/14)),math.rad(180 + 8 * math.sin(sine/16)),math.rad(0)),.2)
thedice.CFrame = thedice.CFrame:lerp(Root.CFrame * CFrame.new(5 + .3 * math.sin(sine/22),2.1 + .25 * math.sin(sine/16),0) * CFrame.Angles(math.rad(10 + 2 * math.sin(sine/22)),math.rad(120 - 2 * math.sin(sine/21)),math.rad(-10 - 2 * math.sin(sine/23))),.1)
gun.Transparency = gun.Transparency + .05
gun2.Transparency = gun2.Transparency + .05
gun3.Transparency = gun3.Transparency + .05
gun4.Transparency = gun4.Transparency + .05
swait()
end
gunmesh.MeshId = "rbxassetid://72012794"
gunmesh.TextureId = "rbxassetid://72012761"
gunmesh.Scale = Vector3.new(1,1.1,1)
gunweld.C0 = CFrame.new(0,-.45,.05) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(90))
for i = 1, 20 do
gunweld2.C0 = gunweld2.C0:lerp(CFrame.new(0,-.9,-.85) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(180)),.2)
righthandweld.C0 = righthandweld.C0:lerp(CFrame.new(2 + .1 * math.sin(sine/15),1.8 - .05 * math.sin(sine/14),.4 + .02 * math.sin(sine/18)) * CFrame.Angles(math.rad(-20 + 2 * math.sin(sine/18)),math.rad(20),math.rad(-120 + 8 * math.sin(sine/16))),.2)
righthandweld2.C0 = righthandweld2.C0:lerp(CFrame.new(0,3 + .06 * math.sin(sine/14),1) * CFrame.Angles(math.rad(-15 + 3 * math.sin(sine/14)),math.rad(180 + 8 * math.sin(sine/16)),math.rad(0)),.2)
thedice.CFrame = thedice.CFrame:lerp(Root.CFrame * CFrame.new(5 + .3 * math.sin(sine/22),2.1 + .25 * math.sin(sine/16),0) * CFrame.Angles(math.rad(10 + 2 * math.sin(sine/22)),math.rad(120 - 2 * math.sin(sine/21)),math.rad(-10 - 2 * math.sin(sine/23))),.1)
gun.Transparency = gun.Transparency - .05
swait()
end
gun2.Transparency = 1
gun3.Transparency = 1
gun4.Transparency = 1
uzi = true
deserteagle = false
raygun = false
sidekickshootanim = false
elseif Press=='z' then
if debounce then return end
if not sidekick then return end
if sidekickshootanim then return end
sidekickshootanim = true
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
g1.CFrame = CFrame.new(Root.Position,mouse.Hit.p)
coroutine.wrap(function()
if sidekicktaunting then return end
sidekicktaunting = true
local mr={3182322877,3182252391,3182374535,3182388872,3182410995,3182425171,3182432426,3182466325}
local r2 = mr[math.random(1,#mr)]
local lc = Instance.new("Sound",thedice)
lc.SoundId = "rbxassetid://"..r2
lc.Volume = 10
lc:Play()
wait(.5)
wait(lc.TimeLength)
wait(4)
lc:Remove()
sidekicktaunting = false
end)()
if raygun then
for i = 1, 1 do
for i = 1, 15 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
thedice.CFrame = thedice.CFrame:lerp(Root.CFrame * CFrame.new(5 + .3 * math.sin(sine/22),2.1 + .25 * math.sin(sine/16),0) * CFrame.Angles(math.rad(-10 + 2 * math.sin(sine/22)),math.rad(90 - 2 * math.sin(sine/21)),math.rad(10 - 2 * math.sin(sine/23))),.1)
gunweld2.C0 = gunweld2.C0:lerp(CFrame.new(0,-.9,-.85) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(180)),.2)
righthandweld.C0 = righthandweld.C0:lerp(CFrame.new(1.5 + .1 * math.sin(sine/15),2 - .05 * math.sin(sine/14),1 + .02 * math.sin(sine/18)) * CFrame.Angles(math.rad(00 + 0 * math.sin(sine/18)),math.rad(20),math.rad(-91 + 1 * math.sin(sine/16))),.2)
swait()
end
coroutine.wrap(function()
local shoot = Instance.new("Sound",gunbox)
shoot.SoundId = "rbxassetid://131179973"
shoot.Volume = 8
shoot:Play()
local orbhit = false
local orb = Instance.new("Part",Torso)
orb.Size = Vector3.new(1,1,1)
orb.Shape = "Ball"
orb.BrickColor = BrickColor.new("Lime green")
orb.Anchored = false
orb.Transparency = 1
orb.CanCollide = false
orb.Material = "Neon"
orb.CFrame = gunbox.CFrame
local bov = Instance.new("BodyVelocity",orb)
bov.maxForce = Vector3.new(99999,99999,99999)
orb.CFrame = CFrame.new(orb.Position,mouse.Hit.p)
bov.velocity = orb.CFrame.lookVector*325
coroutine.wrap(function()
while true do
if orbhit then break end
local magic = Instance.new("Part",Torso)
magic.BrickColor = BrickColor.new("Lime green")
magic.Anchored = true
magic.CanCollide = false
magic.CFrame = orb.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
magic.Material = "Neon"
magic.Size = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1, 40 do
magic.Transparency = magic.Transparency + .025
magic.Size = magic.Size - Vector3.new(.05,.05,.05)
swait()
end
magic:Remove()
end)()
swait()
end
end)()
coroutine.wrap(function()
while wait(.05) do
if orbhit then break end
local ring = Instance.new("Part",Torso)
ring.Anchored = true
ring.CanCollide = false
ring.Size = Vector3.new(1,1,1)
ring.Material = "Neon"
ring.BrickColor = BrickColor.new("Lime green")
ring.CFrame = orb.CFrame * CFrame.Angles(math.rad(90),0,0)
local ringmesh = Instance.new("SpecialMesh",ring)
ringmesh.MeshId = "rbxassetid://471124075"
ringmesh.Scale = Vector3.new(.001,.001,.001)
coroutine.wrap(function()
for i = 1, 40 do
ringmesh.Scale = ringmesh.Scale + Vector3.new(.005,.002,.005)
ring.Transparency = ring.Transparency + .025
swait()
end
ring:Remove()
end)()
end
end)()
coroutine.wrap(function()
wait(5)
if orbhit then
else
orbhit = true
orb:Remove()
end
end)()
orb.Touched:connect(function(orbh)
if orbh:IsA("Part") and orbh.Parent.Parent ~= Character and orbh.Parent ~= Character then
if orbhit then return end
orbhit = true
Hit = damagealll(28,orb.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
slachtoffer = v:FindFirstChildOfClass("Humanoid")
slachtoffer:TakeDamage(math.random(69,82))
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(orb.Position,torso.Position).lookVector*195
removeuseless:AddItem(vel,.1)
end
end
orb.Anchored = true
orb.Transparency = 1
local soundbox = Instance.new("Part",Torso)
soundbox.CFrame = orb.CFrame
soundbox.Size = Vector3.new(.1,.1,.1)
soundbox.Anchored = true
soundbox.CanCollide = false
soundbox.Transparency = 1
removeuseless:AddItem(soundbox,5)
local explosionsound = Instance.new("Sound",soundbox)
explosionsound.SoundId = "rbxassetid://2812343636"
explosionsound.TimePosition = .6
explosionsound.Volume = 10
explosionsound:Play()
local explosion = Instance.new("Part",Torso)
explosion.Size = Vector3.new(1,1,1)
explosion.Anchored = true
explosion.CanCollide = false
explosion.BrickColor = BrickColor.new("Lime green")
explosion.Material = "Neon"
explosion.Shape = "Ball"
explosion.CFrame = orb.CFrame
for i = 1, 40 do
local ps = Instance.new("Part",Torso)
ps.Size = Vector3.new(1,1,1)
ps.Anchored = true
ps.BrickColor = BrickColor.new("Lime green")
ps.Material = "Neon"
ps.Transparency = 0
ps.CFrame = explosion.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
local psm = Instance.new("SpecialMesh",ps)
psm.MeshType = "Sphere"
psm.Scale = Vector3.new(2,1,2)
coroutine.wrap(function()
for i = 1, 30 do
psm.Scale = psm.Scale + Vector3.new(0,6,0)
swait()
end
for i = 1, 20 do
psm.Scale = psm.Scale + Vector3.new(0,2,0)
ps.Transparency = ps.Transparency + .05
swait()
end
ps:Remove()
end)()
end
coroutine.wrap(function()
for i = 1, 30 do
local bamwave = Instance.new("Part",Torso)
bamwave.CanCollide = false
bamwave.Anchored = true
bamwave.BrickColor = BrickColor.new("Lime green")
bamwave.Name = "bamwave"
bamwave.Transparency = .85
bamwave.CFrame = orb.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
local bamwavemesh = Instance.new("SpecialMesh",bamwave)
bamwavemesh.MeshId = "rbxassetid://662586858"
bamwavemesh.Name = "explodmesh34"
bamwavemesh.Scale = Vector3.new(.04,.01,.04)
local wshockwave2 = Instance.new("Part", Torso)
wshockwave2.Size = Vector3.new(1,1,1)
wshockwave2.CanCollide = false
wshockwave2.Anchored = true
wshockwave2.Transparency = .9
wshockwave2.BrickColor = BrickColor.new("Lime green")
wshockwave2.CFrame = CFrame.new(orb.Position) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
local wshockwavemesh2 = Instance.new("SpecialMesh",wshockwave2)
wshockwavemesh2.Scale = Vector3.new(1,.05,1)
wshockwavemesh2.Name = "explodmesh33"
wshockwavemesh2.MeshId = "rbxassetid://20329976"
coroutine.wrap(function()
for i = 1, 30 do
wshockwave2.CFrame = wshockwave2.CFrame:lerp(CFrame.new(orb.Position) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),.02)
bamwave.CFrame = bamwave.CFrame:lerp(orb.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180))),.02)
bamwavemesh.Scale = bamwavemesh.Scale + Vector3.new(.02,0,.02)
wshockwavemesh2.Scale = wshockwavemesh2.Scale + Vector3.new(3,.05,3)
bamwave.Transparency = bamwave.Transparency + .0029
wshockwave2.Transparency = wshockwave2.Transparency + .0029
swait()
end
for i = 1, 40 do
wshockwave2.CFrame = wshockwave2.CFrame:lerp(CFrame.new(orb.Position) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),.02)
bamwave.CFrame = bamwave.CFrame:lerp(orb.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180))),.02)
bamwavemesh.Scale = bamwavemesh.Scale + Vector3.new(.01,0,.01)
wshockwavemesh2.Scale = wshockwavemesh2.Scale + Vector3.new(1,.05,1)
bamwave.Transparency = bamwave.Transparency + .0029
wshockwave2.Transparency = wshockwave2.Transparency + .0029
swait()
end
bamwave:Remove()
wshockwave2:Remove()
end)()
end
end)()
coroutine.wrap(function()
for i = 1, 20 do
explosion.Size = explosion.Size + Vector3.new(2,2,2)
swait()
end
for i = 1, 20 do
explosion.Size = explosion.Size + Vector3.new(.75,.75,.75)
explosion.Transparency = explosion.Transparency + .05
swait()
end
explosion:Remove()
orb:Remove()
end)()
end
end)
removeuseless:AddItem(shoot,10)
for i = 1, 1 do
local blast = Instance.new("Part",Torso)
blast.Size = Vector3.new(1,1,1)
blast.Anchored = true
blast.CanCollide = false
blast.Material = "Neon"
blast.Shape = "Ball"
blast.BrickColor = BrickColor.new("Lime green")
blast.CFrame = gunbox.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
coroutine.wrap(function()
for i = 1, 20 do
blast.Size = blast.Size + Vector3.new(1.1,1.1,1.1)
blast.Transparency = blast.Transparency + .05
swait()
end
blast:Remove()
end)()
end
end)()
for i = 1, 15 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
thedice.CFrame = thedice.CFrame:lerp(Root.CFrame * CFrame.new(5 + .3 * math.sin(sine/22),2.1 + .25 * math.sin(sine/16),.25) * CFrame.Angles(math.rad(-10 + 2 * math.sin(sine/22)),math.rad(90 - 2 * math.sin(sine/21)),math.rad(10 - 2 * math.sin(sine/23))),.1)
gunweld2.C0 = gunweld2.C0:lerp(CFrame.new(0,-.9,-.35) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(180)),.2)
righthandweld.C0 = righthandweld.C0:lerp(CFrame.new(1.4 + .1 * math.sin(sine/15),1.7 - .05 * math.sin(sine/14),1 + .02 * math.sin(sine/18)) * CFrame.Angles(math.rad(00 + 0 * math.sin(sine/18)),math.rad(20),math.rad(-120 + 1 * math.sin(sine/16))),.2)
swait()
end
swait()
end
elseif uzi then
for i = 1, 32 do
for i = 1, 3 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
thedice.CFrame = thedice.CFrame:lerp(Root.CFrame * CFrame.new(5 + .3 * math.sin(sine/22),2.1 + .25 * math.sin(sine/16),0) * CFrame.Angles(math.rad(-10 + 2 * math.sin(sine/22)),math.rad(90 - 2 * math.sin(sine/21)),math.rad(10 - 2 * math.sin(sine/23))),.1)
gunweld2.C0 = gunweld2.C0:lerp(CFrame.new(0,-.9,-.85) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(180)),.2)
righthandweld.C0 = righthandweld.C0:lerp(CFrame.new(1.5 + .1 * math.sin(sine/15),2 - .05 * math.sin(sine/14),1 + .02 * math.sin(sine/18)) * CFrame.Angles(math.rad(00 + 0 * math.sin(sine/18)),math.rad(20),math.rad(-91 + 1 * math.sin(sine/16))),.2)
swait()
end
coroutine.wrap(function()
local lazer = Instance.new("Part",Torso)
lazer.Size = Vector3.new(.07,.07,.07)
lazer.CanCollide = false
lazer.Anchored = true
lazer.CFrame = gunbox.CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(90))
lazer.Shape = "Cylinder"
lazer.Material = "Neon"
lazer.BrickColor = BrickColor.new("Bright yellow")
local STARTPOS = gunbox.CFrame*CFrame.new(0,0,0).p
local ENDHIT,ENDPOS = ray2(STARTPOS,mouse.Hit.p,650,Character)
local DISTANCE = (STARTPOS - ENDPOS).magnitude
lazer.CFrame = CFrame.new(STARTPOS,ENDPOS)*CFrame.new(0,0,-DISTANCE/2) * CFrame.Angles(math.rad(0),math.rad(90),0)
lazer.Size = Vector3.new(DISTANCE,.25,.25)
local shoot = Instance.new("Sound",gunbox)
shoot.SoundId = "rbxassetid://165946560"
shoot.Volume = 8
shoot:Play()
Hit = damagealll(2,ENDPOS)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
slachtoffer = v:FindFirstChildOfClass("Humanoid")
slachtoffer:TakeDamage(math.random(7,14))
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(ENDPOS,torso.Position).lookVector*8
removeuseless:AddItem(vel,.1)
end
end
removeuseless:AddItem(shoot,10)
local shell = Instance.new("Part",Torso)
shell.Anchored = false
shell.CanCollide = true
shell.Size = Vector3.new(.15,.15,1.2)
shell.BrickColor = BrickColor.new("Bright yellow")
shell.CFrame = gun.CFrame * CFrame.new(0,0,2)
local shellmesh = Instance.new("SpecialMesh",shell)
shellmesh.MeshId = "rbxassetid://3182118922"
shellmesh.Scale = Vector3.new(0.018, 0.018, 0.018)
shelldidhit = false
coroutine.wrap(function()
shell.Touched:connect(function(shellhit)
if shellhit.Parent.Parent ~= Character and shellhit.Parent ~= Character then
if shelldidhit then return end
shelldidhit = true
r = shellsound2[math.random(1,#shellsound2)]
local daic = Instance.new("Sound",shell)
daic.SoundId = "rbxassetid://"..r
daic.Volume = 10
daic:Play()
end
end)
for i = 1, 10 do
shell.CFrame = shell.CFrame:lerp(CFrame.new(gl.Position) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),.2)
swait()
end
wait(.25)
for i = 1, 100 do
shell.Transparency = shell.Transparency + .01
swait()
end
shell:Remove()
end)()
for i = 1, 1 do
local blast = Instance.new("Part",Torso)
blast.Size = Vector3.new(1,1,1)
blast.Anchored = true
blast.CanCollide = false
blast.Material = "Neon"
blast.BrickColor = BrickColor.new("Bright yellow")
blast.CFrame = gunbox.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
local blast2 = Instance.new("Part",Torso)
blast2.Size = Vector3.new(.5,.5,.5)
blast2.Anchored = true
blast2.CanCollide = false
blast2.Material = "Neon"
blast2.BrickColor = BrickColor.new("Bright yellow")
blast2.CFrame = CFrame.new(ENDPOS) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
coroutine.wrap(function()
for i = 1, 2 do
blast2.CFrame = blast2.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
blast.CFrame = blast.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
swait()
end
lazer:Remove()
blast2:Remove()
blast:Remove()
end)()
end
end)()
for i = 1, 2 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
thedice.CFrame = thedice.CFrame:lerp(Root.CFrame * CFrame.new(5 + .3 * math.sin(sine/22),2.1 + .25 * math.sin(sine/16),.25) * CFrame.Angles(math.rad(-10 + 2 * math.sin(sine/22)),math.rad(90 - 2 * math.sin(sine/21)),math.rad(10 - 2 * math.sin(sine/23))),.1)
gunweld2.C0 = gunweld2.C0:lerp(CFrame.new(0,-.9,-.35) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(180)),.4)
righthandweld.C0 = righthandweld.C0:lerp(CFrame.new(1.4 + .1 * math.sin(sine/15),1.7 - .05 * math.sin(sine/14),1 + .02 * math.sin(sine/18)) * CFrame.Angles(math.rad(00 + 0 * math.sin(sine/18)),math.rad(20),math.rad(-120 + 1 * math.sin(sine/16))),.4)
swait()
end
swait()
end
local tsound = Instance.new("Sound",gun)
tsound.SoundId = "rbxassetid://2323955180"
tsound.Volume = 10
tsound:Play()
removeuseless:AddItem(tsound,6)
local mag = gun3:Clone() mag.Parent = Torso
for i,v in pairs(mag:GetDescendants()) do
if v:IsA("ManualWeld") then v:Remove() end end
mag.Size = Vector3.new(.5,.5,.5)
mag.CanCollide = true
coroutine.wrap(function()
wait(10)
for i = 1, 40 do
mag.Transparency = mag.Transparency + .025
swait()
end
end)()
else
for i = 1, 7 do
for i = 1, 15 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
thedice.CFrame = thedice.CFrame:lerp(Root.CFrame * CFrame.new(5 + .3 * math.sin(sine/22),2.1 + .25 * math.sin(sine/16),0) * CFrame.Angles(math.rad(-10 + 2 * math.sin(sine/22)),math.rad(90 - 2 * math.sin(sine/21)),math.rad(10 - 2 * math.sin(sine/23))),.1)
gunweld2.C0 = gunweld2.C0:lerp(CFrame.new(0,-.9,-.85) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(180)),.2)
righthandweld.C0 = righthandweld.C0:lerp(CFrame.new(1.5 + .1 * math.sin(sine/15),2 - .05 * math.sin(sine/14),1 + .02 * math.sin(sine/18)) * CFrame.Angles(math.rad(00 + 0 * math.sin(sine/18)),math.rad(20),math.rad(-91 + 1 * math.sin(sine/16))),.2)
swait()
end
coroutine.wrap(function()
local lazer = Instance.new("Part",Torso)
lazer.Size = Vector3.new(.15,.15,.15)
lazer.CanCollide = false
lazer.Anchored = true
lazer.CFrame = gunbox.CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(90))
lazer.Shape = "Cylinder"
lazer.Material = "Neon"
lazer.BrickColor = BrickColor.new("Bright yellow")
local STARTPOS = gunbox.CFrame*CFrame.new(0,0,0).p
local ENDHIT,ENDPOS = ray2(STARTPOS,mouse.Hit.p,650,Character)
local DISTANCE = (STARTPOS - ENDPOS).magnitude
lazer.CFrame = CFrame.new(STARTPOS,ENDPOS)*CFrame.new(0,0,-DISTANCE/2) * CFrame.Angles(math.rad(0),math.rad(90),0)
lazer.Size = Vector3.new(DISTANCE,1,1)
local shoot = Instance.new("Sound",gunbox)
shoot.SoundId = "rbxassetid://131205975"
shoot.Volume = 8
shoot:Play()
Hit = damagealll(3,ENDPOS)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
slachtoffer = v:FindFirstChildOfClass("Humanoid")
slachtoffer:TakeDamage(math.random(26,41))
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(ENDPOS,torso.Position).lookVector*7
removeuseless:AddItem(vel,.1)
end
end
removeuseless:AddItem(shoot,10)
local shell = Instance.new("Part",Torso)
shell.Anchored = false
shell.CanCollide = true
shell.Size = Vector3.new(.3,.3,2)
shell.BrickColor = BrickColor.new("Bright yellow")
shell.CFrame = gun.CFrame * CFrame.new(0,0,-4)
local shellmesh = Instance.new("SpecialMesh",shell)
shellmesh.MeshId = "rbxassetid://3182118922"
shellmesh.Scale = Vector3.new(0.03, 0.03, 0.03)
shelldidhit = false
coroutine.wrap(function()
shell.Touched:connect(function(shellhit)
if shellhit.Parent.Parent ~= Character and shellhit.Parent ~= Character then
if shelldidhit then return end
shelldidhit = true
r = shellsound2[math.random(1,#shellsound2)]
local daic = Instance.new("Sound",shell)
daic.SoundId = "rbxassetid://"..r
daic.Volume = 10
daic:Play()
end
end)
for i = 1, 10 do
shell.CFrame = shell.CFrame:lerp(CFrame.new(gl.Position) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),.2)
swait()
end
wait(15)
for i = 1, 100 do
shell.Transparency = shell.Transparency + .01
swait()
end
shell:Remove()
end)()
for i = 1, 3 do
local blast = Instance.new("Part",Torso)
blast.Size = Vector3.new(2,2,2)
blast.Anchored = true
blast.CanCollide = false
blast.Material = "Neon"
blast.BrickColor = BrickColor.new("Bright yellow")
blast.CFrame = gunbox.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
local blast2 = Instance.new("Part",Torso)
blast2.Size = Vector3.new(1.25,1.25,1.25)
blast2.Anchored = true
blast2.CanCollide = false
blast2.Material = "Neon"
blast2.BrickColor = BrickColor.new("Bright yellow")
blast2.CFrame = CFrame.new(ENDPOS) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
coroutine.wrap(function()
for i = 1, 4 do
blast2.CFrame = blast2.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
blast.CFrame = blast.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
swait()
end
lazer:Remove()
blast2:Remove()
blast:Remove()
end)()
end
end)()
for i = 1, 7 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
thedice.CFrame = thedice.CFrame:lerp(Root.CFrame * CFrame.new(5 + .3 * math.sin(sine/22),2.1 + .25 * math.sin(sine/16),.25) * CFrame.Angles(math.rad(-10 + 2 * math.sin(sine/22)),math.rad(90 - 2 * math.sin(sine/21)),math.rad(10 - 2 * math.sin(sine/23))),.1)
gunweld2.C0 = gunweld2.C0:lerp(CFrame.new(0,-.9,-.35) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(180)),.4)
righthandweld.C0 = righthandweld.C0:lerp(CFrame.new(1.4 + .1 * math.sin(sine/15),1.7 - .05 * math.sin(sine/14),1 + .02 * math.sin(sine/18)) * CFrame.Angles(math.rad(00 + 0 * math.sin(sine/18)),math.rad(20),math.rad(-120 + 1 * math.sin(sine/16))),.4)
swait()
end
swait()
end
local tsound = Instance.new("Sound",gun)
tsound.SoundId = "rbxassetid://2323955180"
tsound.Volume = 10
tsound:Play()
removeuseless:AddItem(tsound,6)
local mag = gun3:Clone() mag.Parent = Torso
for i,v in pairs(mag:GetDescendants()) do
if v:IsA("ManualWeld") then v:Remove() end end
mag.Size = Vector3.new(.5,.5,.5)
mag.CanCollide = true
coroutine.wrap(function()
wait(10)
for i = 1, 40 do
mag.Transparency = mag.Transparency + .025
swait()
end
end)()
end
removeuseless:AddItem(g1,.001)
sidekickshootanim = false
elseif Press=='b' then
if glasson then
if glassonp then return end
glassonp = true
glasson = false
for i = 1, 20 do
glasses.Transparency = glasses.Transparency + .05
swait()
end
glassonp = false
else
if glassonp then return end
glassonp = true
glasson = true
for i = 1, 20 do
glasses.Transparency = glasses.Transparency - .05
swait()
end
glassonp = false
end
elseif Press=='j' then
if sidekick then return end
if debounce then return end
if invisible then
ws = 0
attacking = true
debounce = true
local cy = Instance.new("Part",Torso)
cy.Size = Vector3.new(0,.1,.1)
cy.Anchored = true
cy.Shape = "Cylinder"
cy.Material = "Neon"
cy.BrickColor = BrickColor.new("White")
cy.CanCollide = false
cy.CFrame = Root.CFrame * CFrame.new(0,-3,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))
local portalopen = Instance.new("Sound",cy)
portalopen.SoundId = "rbxassetid://1888686669"
portalopen.Volume = 10
portalopen:Play()
for i = 1, 20 do
cy.Size = cy.Size + Vector3.new(0,.5,.5)
swait()
end
wait(.5)
doomtheme.Volume = 0
local m = Instance.new("Sound",Torso)
m.SoundId = "rbxassetid://148894535"
m.Volume = 10
m:Play()
for i = 1, 20 do
doomtheme.Volume = doomtheme.Volume + .2
slaten.Transparency = slaten.Transparency - .05
slaten2.Transparency = slaten2.Transparency - .05
eyo.Transparency = eyo.Transparency - .05
fedora.Transparency = fedora.Transparency - .05
mask.Transparency = mask.Transparency - .05
Torso.Transparency = Torso.Transparency - .05
RightLeg.Transparency = RightLeg.Transparency - .05
LeftLeg.Transparency = LeftLeg.Transparency - .05
RightArm.Transparency = RightArm.Transparency - .05
LeftArm.Transparency = LeftArm.Transparency - .05
Head.Transparency = Head.Transparency - .05
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5, .15, 0) * CFrame.Angles(math.rad(10), math.rad(2), math.rad(10)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5, .15, 0) * CFrame.Angles(math.rad(-10), math.rad(-2), math.rad(-10)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 7, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 0.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.2)
swait()
end
coroutine.wrap(function()
for i = 1, 20 do
cy.Size = cy.Size - Vector3.new(0,.5,.5)
swait()
end
cy:Remove()
end)()
for i = 1, 20 do
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4, 1, 0.501) * CFrame.Angles(math.rad(-80), math.rad(-40), math.rad(2)), .2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5, 0, .3) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), .2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-80), math.rad(7), math.rad(0)), .2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.2, .8) * CFrame.Angles(math.rad(-80), math.rad(10), math.rad(0)), .2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 1.9, -.34) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(10)), .2)
swait()
end
debounce = false
attacking = false
invisible = false
ws = 32
else
debounce = true
attacking = true
ws = 0
for i = 1, 15 do
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-88 + 2 * math.sin(sine/12)),math.rad(76 - 1 * math.sin(sine/12)),math.rad(0)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.7,-.2,.33) * CFrame.Angles(math.rad(-80 + 2 * math.sin(sine/12)),math.rad(-94 + 1 * math.sin(sine/12)),math.rad(0)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),.2)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.4, 2 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(-5), math.rad(30 + 0 * math.sin(sine/12)), math.rad(-5 - .1 * math.sin(sine/12))), 0.2)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.55, 2.0 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(5), math.rad(-20 + 0 * math.sin(sine/12)), math.rad(5 + .1 * math.sin(sine/12))), 0.2)
swait()
end
local cy = Instance.new("Part",Torso)
cy.Size = Vector3.new(0,.1,.1)
cy.Anchored = true
cy.Shape = "Cylinder"
cy.Material = "Neon"
cy.BrickColor = BrickColor.new("White")
cy.CanCollide = false
cy.CFrame = Root.CFrame * CFrame.new(0,5,8) * CFrame.Angles(math.rad(0),math.rad(90),0)
local portalopen = Instance.new("Sound",cy)
portalopen.SoundId = "rbxassetid://1888686669"
portalopen.Volume = 10
portalopen:Play()
for i = 1, 20 do
cy.Size = cy.Size + Vector3.new(0,.5,.5)
swait()
end
wait(.5)
local m = Instance.new("Sound",Torso)
m.SoundId = "rbxassetid://148894535"
m.Volume = 10
m:Play()
removeuseless:AddItem(m,6)
invisible = true
for i = 1, 20 do
doomtheme.Volume = doomtheme.Volume - .5
slaten.Transparency = slaten.Transparency + .05
slaten2.Transparency = slaten2.Transparency + .05
eyo.Transparency = eyo.Transparency + .05
fedora.Transparency = fedora.Transparency + .05
mask.Transparency = mask.Transparency + .05
Torso.Transparency = Torso.Transparency + .05
RightLeg.Transparency = RightLeg.Transparency + .05
LeftLeg.Transparency = LeftLeg.Transparency + .05
RightArm.Transparency = RightArm.Transparency + .05
LeftArm.Transparency = LeftArm.Transparency + .05
Head.Transparency = Head.Transparency + .05
Root.CFrame = Root.CFrame:lerp(CFrame.new(cy.Position),.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)  * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.94 + .02 * math.sin(sine/12),-0) * CFrame.Angles(math.rad(28 + 5 * math.sin(sine/12)),math.rad(0),math.rad(45)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.94 + .02 * math.sin(sine/12),-0) * CFrame.Angles(math.rad(28 + 5 * math.sin(sine/12)),math.rad(0),math.rad(-45)), 0.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 1.4 + .1 * math.sin(sine/12), .4) * CFrame.Angles(math.rad(9 + 2 * math.cos(sine/12)), math.rad(0), math.rad(0)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(20), math.rad(0)), 0.2)
swait()
end
for i = 1, 20 do
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-88 + 2 * math.sin(sine/12)),math.rad(76 - 1 * math.sin(sine/12)),math.rad(0)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.7,-.2,.33) * CFrame.Angles(math.rad(-80 + 2 * math.sin(sine/12)),math.rad(-94 + 1 * math.sin(sine/12)),math.rad(0)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)),.2)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.4, 2 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(-5), math.rad(30 + 0 * math.sin(sine/12)), math.rad(-5 - .1 * math.sin(sine/12))), 0.2)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.55, 2.0 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(5), math.rad(-20 + 0 * math.sin(sine/12)), math.rad(5 + .1 * math.sin(sine/12))), 0.2)
cy.Size = cy.Size - Vector3.new(0,.5,.5)
swait()
end
cy:Remove()
attacking = false
debounce = false 
ws = 32
end
elseif Press=='h' then
if invisible then return end
if sidekick then
if sidekickshootanim then return end
if debounce then return end
sidekickshootanim = true
debounce = true
attacking = true
deserteagle = false
uzi = false
raygun = false
ws = 0
change = .5
for i = 1, 30 do
gunweld2.C0 = gunweld2.C0:lerp(CFrame.new(0,-.9,-.85) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(180)),.2)
righthandweld.C0 = righthandweld.C0:lerp(CFrame.new(2 + .1 * math.sin(sine/15),1.8 - .05 * math.sin(sine/14),.4 + .02 * math.sin(sine/18)) * CFrame.Angles(math.rad(-20 + 2 * math.sin(sine/18)),math.rad(20),math.rad(-120 + 8 * math.sin(sine/16))),.2)
righthandweld2.C0 = righthandweld2.C0:lerp(CFrame.new(0,3 + .06 * math.sin(sine/14),1) * CFrame.Angles(math.rad(-15 + 3 * math.sin(sine/14)),math.rad(180 + 8 * math.sin(sine/16)),math.rad(0)),.2)
thedice.CFrame = thedice.CFrame:lerp(Root.CFrame * CFrame.new(5 + .3 * math.sin(sine/22),2.1 + .25 * math.sin(sine/16),0) * CFrame.Angles(math.rad(10 + 2 * math.sin(sine/22)),math.rad(120 - 2 * math.sin(sine/21)),math.rad(-10 - 2 * math.sin(sine/23))),.1)
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-88 + 2 * math.sin(sine/12)),math.rad(76 - 1 * math.sin(sine/12)),math.rad(0)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(1.5,1.1,0) * CFrame.Angles(math.rad(2),math.rad(5),math.rad(171)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)),.2)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.4, 2 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(-5), math.rad(30 + 0 * math.sin(sine/12)), math.rad(-5 - .1 * math.sin(sine/12))), 0.2)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.55, 2.0 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(5), math.rad(-20 + 0 * math.sin(sine/12)), math.rad(5 + .1 * math.sin(sine/12))), 0.2)
swait()
end
local snap = Instance.new("Sound",Torso)
snap.SoundId = "rbxassetid://3154155968"
snap.Volume = 10
snap:Play()
coroutine.wrap(function()
for i = 1, 7 do
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-88 + 2 * math.sin(sine/12)),math.rad(76 - 1 * math.sin(sine/12)),math.rad(0)), 0.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(.95,1.7,0) * CFrame.Angles(math.rad(2),math.rad(5),math.rad(208)), 0.4)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)),.4)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.4, 2 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(-5), math.rad(30 + 0 * math.sin(sine/12)), math.rad(-5 - .1 * math.sin(sine/12))), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.55, 2.0 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(5), math.rad(-20 + 0 * math.sin(sine/12)), math.rad(5 + .1 * math.sin(sine/12))), 0.4)
swait()
end
for i = 1, 20 do
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-88 + 2 * math.sin(sine/12)),math.rad(76 - 1 * math.sin(sine/12)),math.rad(0)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(1.3,1.4,0) * CFrame.Angles(math.rad(2),math.rad(5),math.rad(188)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)),.2)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.4, 2 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(-5), math.rad(30 + 0 * math.sin(sine/12)), math.rad(-5 - .1 * math.sin(sine/12))), 0.2)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.55, 2.0 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(5), math.rad(-20 + 0 * math.sin(sine/12)), math.rad(5 + .1 * math.sin(sine/12))), 0.2)
swait()
end
attacking = false
end)()
local cy = Instance.new("Part",Torso)
cy.Size = Vector3.new(0,.1,.1)
cy.Anchored = true
cy.Shape = "Cylinder"
cy.Material = "Neon"
cy.BrickColor = BrickColor.new("White")
cy.CanCollide = false
cy.CFrame = Root.CFrame * CFrame.new(5,2.5,4) * CFrame.Angles(math.rad(0),math.rad(90),0)
local portalopen = Instance.new("Sound",cy)
portalopen.SoundId = "rbxassetid://1888686669"
portalopen.Volume = 10
portalopen:Play()
for i = 1, 20 do
gunweld2.C0 = gunweld2.C0:lerp(CFrame.new(0,-.9,-.85) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(180)),.2)
righthandweld.C0 = righthandweld.C0:lerp(CFrame.new(2 + .1 * math.sin(sine/15),1.8 - .05 * math.sin(sine/14),.4 + .02 * math.sin(sine/18)) * CFrame.Angles(math.rad(-20 + 2 * math.sin(sine/18)),math.rad(20),math.rad(-120 + 8 * math.sin(sine/16))),.2)
righthandweld2.C0 = righthandweld2.C0:lerp(CFrame.new(0,3 + .06 * math.sin(sine/14),1) * CFrame.Angles(math.rad(-15 + 3 * math.sin(sine/14)),math.rad(180 + 8 * math.sin(sine/16)),math.rad(0)),.2)
thedice.CFrame = thedice.CFrame:lerp(Root.CFrame * CFrame.new(5 + .3 * math.sin(sine/22),2.1 + .25 * math.sin(sine/16),0) * CFrame.Angles(math.rad(10 + 2 * math.sin(sine/22)),math.rad(120 - 2 * math.sin(sine/21)),math.rad(-10 - 2 * math.sin(sine/23))),.1)
cy.Size = cy.Size + Vector3.new(0,.4,.4)
swait()
end
for i = 1, 30 do
gunweld2.C0 = gunweld2.C0:lerp(CFrame.new(0,-.9,-.85) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(180)),.2)
righthandweld.C0 = righthandweld.C0:lerp(CFrame.new(2 + .1 * math.sin(sine/15),1.8 - .05 * math.sin(sine/14),.4 + .02 * math.sin(sine/18)) * CFrame.Angles(math.rad(-20 + 2 * math.sin(sine/18)),math.rad(20),math.rad(-120 + 8 * math.sin(sine/16))),.2)
righthandweld2.C0 = righthandweld2.C0:lerp(CFrame.new(0,3 + .06 * math.sin(sine/14),1) * CFrame.Angles(math.rad(-15 + 3 * math.sin(sine/14)),math.rad(180 + 8 * math.sin(sine/16)),math.rad(0)),.2)
thedice.CFrame = thedice.CFrame:lerp(Root.CFrame * CFrame.new(5 + .3 * math.sin(sine/22),2.1 + .25 * math.sin(sine/16),0) * CFrame.Angles(math.rad(10 + 2 * math.sin(sine/22)),math.rad(120 - 2 * math.sin(sine/21)),math.rad(-10 - 2 * math.sin(sine/23))),.1)
swait()
end
for i = 1, 20 do
thedice.CFrame = thedice.CFrame:lerp(CFrame.new(cy.Position),.2)
righthand.Transparency = righthand.Transparency + .05
righthand2.Transparency = righthand2.Transparency + .05
thedice.Transparency = thedice.Transparency + .05
fedora2.Transparency = fedora2.Transparency + .05
glasses.Transparency = glasses.Transparency + .05
hair.Transparency = hair.Transparency + .05
gun.Transparency = gun.Transparency + .05
gun2.Transparency = gun2.Transparency + .05
gun3.Transparency = gun3.Transparency + .05
gun4.Transparency = gun4.Transparency + .05
swait()
end
for i = 1, 20 do
cy.Size = cy.Size - Vector3.new(0,.4,.4)
swait()
end
cy:Remove()
thedice:Remove()
fedora2:Remove()
glasses:Remove()
righthand:Remove()
righthand2:Remove()
hair:Remove()
gun:Remove()
gun2:Remove()
mouth:Remove()
gun3:Remove()
gun4:Remove()
gunbox:Remove()
eyes:Remove()
sidekickshootanim = false
sidekick = false
debounce = false
else
if debounce then return end
debounce = true
attacking = true
sidekick = true
deserteagle = true
uzi = false
raygun = false
glasson = true
ws = 0
change = .5
for i = 1, 30 do
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-88 + 2 * math.sin(sine/12)),math.rad(76 - 1 * math.sin(sine/12)),math.rad(0)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(1.5,1.1,0) * CFrame.Angles(math.rad(2),math.rad(5),math.rad(171)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)),.2)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.4, 2 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(-5), math.rad(30 + 0 * math.sin(sine/12)), math.rad(-5 - .1 * math.sin(sine/12))), 0.2)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.55, 2.0 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(5), math.rad(-20 + 0 * math.sin(sine/12)), math.rad(5 + .1 * math.sin(sine/12))), 0.2)
swait()
end
local snap = Instance.new("Sound",Torso)
snap.SoundId = "rbxassetid://3154155968"
snap.Volume = 10
snap:Play()
coroutine.wrap(function()
for i = 1, 7 do
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-88 + 2 * math.sin(sine/12)),math.rad(76 - 1 * math.sin(sine/12)),math.rad(0)), 0.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(.95,1.7,0) * CFrame.Angles(math.rad(2),math.rad(5),math.rad(208)), 0.4)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)),.4)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.4, 2 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(-5), math.rad(30 + 0 * math.sin(sine/12)), math.rad(-5 - .1 * math.sin(sine/12))), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.55, 2.0 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(5), math.rad(-20 + 0 * math.sin(sine/12)), math.rad(5 + .1 * math.sin(sine/12))), 0.4)
swait()
end
for i = 1, 30 do
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-88 + 2 * math.sin(sine/12)),math.rad(76 - 1 * math.sin(sine/12)),math.rad(0)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(1.3,1.4,0) * CFrame.Angles(math.rad(2),math.rad(5),math.rad(188)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)),.2)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.4, 2 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(-5), math.rad(30 + 0 * math.sin(sine/12)), math.rad(-5 - .1 * math.sin(sine/12))), 0.2)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.55, 2.0 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(5), math.rad(-20 + 0 * math.sin(sine/12)), math.rad(5 + .1 * math.sin(sine/12))), 0.2)
swait()
end
end)()
local cy = Instance.new("Part",Torso)
cy.Size = Vector3.new(0,.1,.1)
cy.Anchored = true
cy.Shape = "Cylinder"
cy.Material = "Neon"
cy.BrickColor = BrickColor.new("White")
cy.CanCollide = false
cy.CFrame = Root.CFrame * CFrame.new(5,2.5,4) * CFrame.Angles(math.rad(0),math.rad(90),0)
local portalopen = Instance.new("Sound",cy)
portalopen.SoundId = "rbxassetid://1888686669"
portalopen.Volume = 10
portalopen:Play()
for i = 1, 20 do
cy.Size = cy.Size + Vector3.new(0,.4,.4)
swait()
end
wait(.5)
local entrysound={3182251817,3182252095,3182259340,3182291263,3182444133,3182443830}
local z = entrysound[math.random(1,#entrysound)]
thedice = Instance.new("Part",Torso)
thedice.CanCollide = true
thedice.CFrame = cy.CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-13),math.rad(0),math.rad(0))
thedice.Anchored = true
thedice.Transparency = 1
thedice.CanCollide = false
thedice.Size = Vector3.new(6,6,6)
local dicemesh = Instance.new("SpecialMesh",thedice)
dicemesh.MeshId = "rbxassetid://95358536"
dicemesh.TextureId = "rbxassetid://100025876"
dicemesh.Scale = Vector3.new(.75,.75,.75)
local entrys = Instance.new("Sound",thedice)
entrys.SoundId = "rbxassetid://"..z
entrys.Volume = 10
entrys:Play()
removeuseless:AddItem(entrys,4)
fedora2 = Instance.new("Part",Character)
fedora2.Size = Vector3.new(2,2,2)
fedora2.CFrame = thedice.CFrame
fedora2.CanCollide = false
fedora2.Transparency = 1
fedoraweld2 = Instance.new("Weld",fedora2)
fedoraweld2.Part0 = fedora2
fedoraweld2.Part1 = thedice
fedoraweld2.C0 = fedora2.CFrame:inverse() * thedice.CFrame * CFrame.new(-.1,-2.04,.125) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0))
mfedora2 = Instance.new("SpecialMesh", fedora2)
mfedora2.MeshType = "FileMesh"
mfedora2.Scale = Vector3.new(2.16, 2.16, 2.16)
mfedora2.MeshId,mfedora2.TextureId = 'http://www.roblox.com/asset/?id=11144636','http://www.roblox.com/asset/?id=1416342992'
hair = Instance.new("Part",Torso)
hair.BrickColor = BrickColor.new("Really black")
hair.Anchored = false
hair.CanCollide = false
hair.Transparency = 1
hairm = Instance.new("SpecialMesh",hair)
hairm.MeshId = "rbxassetid://949790989"
hairm.TextureId = "rbxassetid://949798362"
hairm.Scale = Vector3.new(2.95,2.75,2.75)
hairm.VertexColor = Vector3.new(0,0,0)
hairweld = weldBetween(hair,fedora2)
hairweld.C0 = CFrame.new(-.125,4.9,.2) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
glasses = Instance.new("Part",Torso)
glasses.Size = Vector3.new(1,1,1)
glasses.BrickColor = BrickColor.new("Really black")
glasses.Anchored = false
glasses.CanCollide = false
glasses.Transparency = 1
glassesweld = weldBetween(glasses,hair)
glassesweld.C0 = CFrame.new(-.28,-3,0) * CFrame.Angles(math.rad(0),0,math.rad(-5))
glassesmesh = Instance.new("SpecialMesh",glasses)
glassesmesh.MeshId = "rbxassetid://1577360"
glassesmesh.TextureId = "rbxassetid://1577349"
glassesmesh.Scale = Vector3.new(2.2,2.2,2.2)
eyes = Instance.new("Part",Torso)
eyes.Size = Vector3.new(2.15, 1.992, 0.556)
eyes.Anchored = false
eyes.Transparency = 1
eyes.CanCollide = false
eyesweld = weldBetween(eyes,glasses)
eyesweld.C0 = CFrame.new(0,.22,.38)
eyesdecal = Instance.new("Decal",eyes)
eyesdecal.Texture = "rbxassetid://849461193"
eyesdecal.Face = "Front"
mouth = Instance.new("Part",Torso)
mouth.Size = Vector3.new(2.05, 1.892, 0.456)
mouth.Anchored = false
mouth.Transparency = 1
mouth.CanCollide = false
mouthweld = weldBetween(mouth,glasses)
mouthweld.C0 = CFrame.new(0,.22,.45)
mouthdecal = Instance.new("Decal",mouth)
mouthdecal.Texture = "rbxassetid://1772659952"
mouthdecal.Face = "Front"
righthand = Instance.new("Part",Torso)
righthand.Size = Vector3.new(1,1,1)
righthand.BrickColor = BrickColor.new("White")
righthand.CanCollide = false
righthand.Transparency = 1
righthand.Anchored = false
righthand.Material = "Neon"
righthandmesh = Instance.new("SpecialMesh",righthand)
righthandmesh.MeshId = "rbxassetid://90718752"
righthandmesh.Scale = Vector3.new(3.2,3.2,3.2)
righthandweld = weldBetween(righthand,thedice)
righthandweld.C0 = CFrame.new(2,1.8,.4) * CFrame.Angles(math.rad(-20),math.rad(20),math.rad(-120))
righthand2 = Instance.new("Part",Torso)
righthand2.Size = Vector3.new(1,1,1)
righthand2.BrickColor = BrickColor.new("White")
righthand2.CanCollide = false
righthand2.Transparency = 1
righthand2.Anchored = false
righthand2.Material = "Neon"
righthandmesh2 = Instance.new("SpecialMesh",righthand2)
righthandmesh2.MeshId = "rbxassetid://90718752"
righthandmesh2.Scale = Vector3.new(3.2,3.2,3.2)
righthandweld2 = weldBetween(righthand2,thedice)
righthandweld2.C0 = CFrame.new(0,3,1) * CFrame.Angles(math.rad(-15),math.rad(180),math.rad(0))
gun = Instance.new("Part",Torso)
gun.Size = Vector3.new(1,1,1)
gun.Anchored = false
gun.Transparency = 1
gun.CanCollide = false
gunweld = weldBetween(gun,righthand)
gunweld.C0 = CFrame.new(0,-.3,-.85) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(180))
gunmesh = Instance.new("SpecialMesh",gun)
gunmesh.MeshId = "rbxassetid://431258335"
gunmesh.Scale = Vector3.new(.003,.003,.003)
gunmesh.TextureId = "rbxassetid://431259201"
gl = Instance.new("Part",Torso)
gl.Size = Vector3.new(1,1,1)
gl.Anchored = false
gl.Transparency = 1
gl.CanCollide = false
gl.CFrame = gun.CFrame
glweld = weldBetween(gl,gun)
glweld.C0 = CFrame.new(-4,0,0)
gun2 = Instance.new("Part",Torso)
gun2.Size = Vector3.new(1,1,1)
gun2.Anchored = false
gun2.Transparency = 1
gun2.CanCollide = false
gunweld2 = weldBetween(gun2,righthand)
gunweld2.C0 = CFrame.new(0,-.9,-.85) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(180))
gunmesh2 = Instance.new("SpecialMesh",gun2)
gunmesh2.MeshId = "rbxassetid://431258457"
gunmesh2.Scale = Vector3.new(.003,.003,.003)
gunmesh2.TextureId = "rbxassetid://431259201"
gun3 = Instance.new("Part",Torso)
gun3.Size = Vector3.new(1,1,1)
gun3.Anchored = false
gun3.Transparency = 1
gun3.CanCollide = false
gunweld3 = weldBetween(gun3,righthand)
gunweld3.C0 = CFrame.new(0,-.05,.1) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(180))
gunmesh3 = Instance.new("SpecialMesh",gun3)
gunmesh3.MeshId = "rbxassetid://431258382"
gunmesh3.Scale = Vector3.new(.003,.003,.003)
gunmesh3.TextureId = "rbxassetid://431259201"
gun4 = Instance.new("Part",Torso)
gun4.Size = Vector3.new(.5,2.4,.1)
gun4.Anchored = false
gun4.CanCollide = false
gun4.BrickColor = BrickColor.new("Really black")
gun4weld = weldBetween(gun4,righthand)
gun4weld.C0 = CFrame.new(-.8,1,0)
gunbox = Instance.new("Part",Torso)
gunbox.Size = Vector3.new(1,1,1)
gunbox.Anchored = false
gunbox.CanCollide = false
gunbox.Transparency = 1
gunboxweld = weldBetween(gunbox,gun2)
gunboxweld.C0 = CFrame.new(0,0,-2)
coroutine.wrap(function()
for i = 1, 20 do
thedice.Transparency = thedice.Transparency - .05
fedora2.Transparency = fedora2.Transparency - .05
hair.Transparency = hair.Transparency - .05
glasses.Transparency = glasses.Transparency - .05
righthand.Transparency = righthand.Transparency - .05
righthand2.Transparency = righthand2.Transparency - .05
gun.Transparency = gun.Transparency - .05
gun2.Transparency = gun2.Transparency - .05
gun3.Transparency = gun3.Transparency - .05
swait()
end
hair.Transparency = .001
end)()
coroutine.wrap(function()
wait(1)
for i = 1, 20 do
cy.Size = cy.Size - Vector3.new(0,.4,.4)
swait()
end
cy:Remove()
end)()
coroutine.wrap(function()
while sidekick do
if sidekickshootanim then
righthandweld2.C0 = righthandweld2.C0:lerp(CFrame.new(0,3 + .06 * math.sin(sine/14),1) * CFrame.Angles(math.rad(-15 + 3 * math.sin(sine/14)),math.rad(180 + 8 * math.sin(sine/16)),math.rad(0)),.2)
else
gunweld2.C0 = gunweld2.C0:lerp(CFrame.new(0,-.9,-.85) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(180)),.2)
righthandweld.C0 = righthandweld.C0:lerp(CFrame.new(2 + .1 * math.sin(sine/15),1.8 - .05 * math.sin(sine/14),.4 + .02 * math.sin(sine/18)) * CFrame.Angles(math.rad(-20 + 2 * math.sin(sine/18)),math.rad(20),math.rad(-120 + 8 * math.sin(sine/16))),.2)
righthandweld2.C0 = righthandweld2.C0:lerp(CFrame.new(0,3 + .06 * math.sin(sine/14),1) * CFrame.Angles(math.rad(-15 + 3 * math.sin(sine/14)),math.rad(180 + 8 * math.sin(sine/16)),math.rad(0)),.2)
thedice.CFrame = thedice.CFrame:lerp(Root.CFrame * CFrame.new(5 + .3 * math.sin(sine/22),2.1 + .25 * math.sin(sine/16),0) * CFrame.Angles(math.rad(10 + 2 * math.sin(sine/22)),math.rad(120 - 2 * math.sin(sine/21)),math.rad(-10 - 2 * math.sin(sine/23))),.1)
end
swait()
end
end)()
ws = 32
debounce = false
attacking = false
end
elseif Press=='f' then
if debounce then return end
if secondform then
debounce = true
local z = {
Color = BrickColor.new("White").Color
}
local f = game:GetService("TweenService"):Create(eyo,TweenInfo.new(.5,Enum.EasingStyle.Linear),z)
f:Play()
local cooldown = Instance.new("Sound",Torso)
cooldown.SoundId = "rbxassetid://1659770705"
cooldown.Volume = 10
cooldown.Pitch = .8
cooldown:Play()
removeuseless:AddItem(cooldown,10)
for i = 1, 20 do
doomtheme.Volume = doomtheme.Volume - .5
swait()
end
dmt2random = dmt2[math.random(1,#dmt2)]
doomtheme.Volume = 0
doomtheme.SoundId = "rbxassetid://"..dmt2random
doomtheme:Play()
for i = 1, 20 do
doomtheme.Volume = doomtheme.Volume + .2
swait()
end
b:Remove()
b2:Remove()
b3:Remove()
secondform = false
debounce = false
else
debounce = true
secondform = true
local c = Instance.new("Sound",Torso)
c.SoundId = "rbxassetid://3206852726"
c.Volume = 10
c:Play()
coroutine.wrap(function()
for i = 1, 20 do
hum.CameraOffset = Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
doomtheme.Volume = doomtheme.Volume - .5
swait()
end
hum.CameraOffset = Vector3.new(0,0,0)
end)()
for i = 1, 5 do
wait(.05)
eyo.BrickColor = BrickColor.new("Really black")
wait(.05)
eyo.BrickColor = BrickColor.new("Really red")
swait()
end
wait(1)
coroutine.wrap(function()
b = Instance.new("Part",Torso)
b.Size = Vector3.new(1,1,1)
b.Anchored = false
b.CanCollide = false
b.Transparency = 1
bweld = weldBetween(b,Root)
b2 = Instance.new("Part",Torso)
b2.Size = Vector3.new(1,1,1)
b2.Anchored = false
b2.Transparency = 1
b2.CanCollide = false
bweld2 = weldBetween(b2,b)
bweld2.C0 = CFrame.new(0,4,3.2)
b3 = Instance.new("Part",Torso)
b3.Size = Vector3.new(1,1,1)
b3.Anchored = false
b3.Transparency = 1
b3.CanCollide = false
bweld3 = weldBetween(b3,b)
bweld3.C0 = CFrame.new(0,4,-3.2)
coroutine.wrap(function()
while true do
if not secondform then break end
if invisible then
else
bweld2.C0 = bweld2.C0 * CFrame.Angles(math.rad(0),math.rad(0+5),0)
bweld3.C0 = bweld3.C0 * CFrame.Angles(math.rad(0),math.rad(0+5),0)
end
swait()
end
end)()
local l = 0
while wait(.1) do
l = l + 2
if not secondform then break end
if invisible then
else
local dice = Instance.new("Part",Torso)
dice.Anchored = true
dice.CanCollide = false
dice.Size = Vector3.new(1,1,1)
dice.CFrame = b2.CFrame
local dmeshs = math.random(.4,.7)
local dicemesh = Instance.new("SpecialMesh",dice)
dicemesh.MeshId = "rbxassetid://95358536"
dicemesh.TextureId = "rbxassetid://100025876"
dicemesh.Scale = Vector3.new(.25,.25,.25)
local dice2 = Instance.new("Part",Torso)
dice2.Anchored = true
dice2.CanCollide = false
dice2.Size = Vector3.new(1,1,1)
dice2.CFrame = b3.CFrame
local dmeshs2 = math.random(.4,.7)
local dicemesh2 = Instance.new("SpecialMesh",dice2)
dicemesh2.MeshId = "rbxassetid://95358536"
dicemesh2.TextureId = "rbxassetid://100025876"
dicemesh2.Scale = Vector3.new(.25,.25,.25)
local a = math.random(-180,180)
local b = math.random(-180,180)
local c = math.random(-180,180)
coroutine.wrap(function()
for i = 1, 80 do
dice.CFrame = dice.CFrame:lerp(b2.CFrame * CFrame.new(0,12,0) * CFrame.Angles(math.rad(a),math.rad(b),math.rad(c)),.05)
dice.Transparency = dice.Transparency + .015
dice2.CFrame = dice2.CFrame:lerp(b3.CFrame * CFrame.new(0,12,0) * CFrame.Angles(math.rad(a),math.rad(b),math.rad(c)),.05)
dice2.Transparency = dice2.Transparency + .015
swait()
end
dice:Remove()
end)()
end
swait()
end
end)()
coroutine.wrap(function()
while true do
if not secondform then break end
if invisible then
else
local dicl = Instance.new("Part",Torso)
dicl.Size = Vector3.new(1,1,1)
dicl.Anchored = true
dicl.Transparency = 1
dicl.CanCollide = false
dicl.CFrame = Root.CFrame * CFrame.new(math.random(-20,20),-5,math.random(-20,20))
local dice = Instance.new("Part",Torso)
dice.Anchored = true
dice.CanCollide = false
dice.Size = Vector3.new(1,1,1)
dice.CFrame = dicl.CFrame
local dmeshs = math.random(.4,.7)
local dicemesh = Instance.new("SpecialMesh",dice)
dicemesh.MeshId = "rbxassetid://95358536"
dicemesh.TextureId = "rbxassetid://100025876"
dicemesh.Scale = Vector3.new(.6,.6,.6)
local a = math.random(-180,180)
local b = math.random(-180,180)
local c = math.random(-180,180)
coroutine.wrap(function()
for i = 1, 1 do
wait(.2)
local tr = Instance.new("Part",Torso)
tr.Size = Vector3.new(2,2,2)
tr.Anchored = true
tr.CanCollide = false
tr.Transparency = .5
tr.BrickColor = BrickColor.new("White")
tr.Material = "Neon"
tr.CFrame = dice.CFrame
local z = {
Color = BrickColor.new("Crimson").Color
}
local sm = smoothen:Create(tr,TweenInfo.new(.1,Enum.EasingStyle.Linear),z)
sm:Play()
coroutine.wrap(function()
for i = 1, 40 do
tr.Size = tr.Size - Vector3.new(.05,.05,.05)
tr.CFrame = tr.CFrame:lerp(CFrame.new(Root.Position) * CFrame.Angles(math.rad(a),math.rad(b),math.rad(c)),.1)
tr.Transparency = tr.Transparency + .025
swait()
end
tr:Remove()
end)()
swait()
end
end)()
coroutine.wrap(function()
for i = 1, 2 do
wait(.2)
local tr = Instance.new("Part",Torso)
tr.Size = Vector3.new(2,2,2)
tr.Anchored = true
tr.CanCollide = false
tr.Transparency = .25
tr.BrickColor = BrickColor.new("White")
tr.Material = "Neon"
tr.CFrame = dice.CFrame
coroutine.wrap(function()
for i = 1, 40 do
tr.Size = tr.Size - Vector3.new(.05,.05,.05)
tr.Transparency = tr.Transparency + .025
swait()
end
tr:Remove()
end)()
swait()
end
end)()
coroutine.wrap(function()
for i = 1, 60 do
dice.CFrame = dice.CFrame:lerp(CFrame.new(dicl.Position) * CFrame.new(0,15,0) * CFrame.Angles(math.rad(a),math.rad(b),math.rad(c)),.04)
dice.Transparency = dice.Transparency + .017
swait()
end
dice:Remove()
dicl:Remove()
end)()
end
swait(10)
end
end)()
local fp = Instance.new("Sound",Torso)
fp.SoundId = "rbxassetid://3206874211"
fp.Volume = 8
fp:Play()
local thousand = secondtheme[math.random(1,#secondtheme)]
doomtheme.SoundId = "rbxassetid://"..thousand
if doomtheme.SoundId == "rbxassetid://561542239" then
doomtheme.TimePosition = 14
else
doomtheme.TimePosition = 0
end
doomtheme:Play()
coroutine.wrap(function()
for i = 1, 40 do
doomtheme.Volume = doomtheme.Volume + .1
swait()
end
end)()
attacking = false
debounce = false
end
elseif Press=='g' then
if debounce then return end
debounce = true
attacking = true
ws = 0
for i = 1, 30 do
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-88 + 2 * math.sin(sine/12)),math.rad(76 - 1 * math.sin(sine/12)),math.rad(0)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(1.5,1.1,0) * CFrame.Angles(math.rad(2),math.rad(5),math.rad(171)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)),.2)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.4, 2 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(-5), math.rad(30 + 0 * math.sin(sine/12)), math.rad(-5 - .1 * math.sin(sine/12))), 0.2)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.55, 2.0 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(5), math.rad(-20 + 0 * math.sin(sine/12)), math.rad(5 + .1 * math.sin(sine/12))), 0.2)
swait()
end
coroutine.wrap(function()
for i = 1, 7 do
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-88 + 2 * math.sin(sine/12)),math.rad(76 - 1 * math.sin(sine/12)),math.rad(0)), 0.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(.95,1.7,0) * CFrame.Angles(math.rad(2),math.rad(5),math.rad(208)), 0.4)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)),.4)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.4, 2 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(-5), math.rad(30 + 0 * math.sin(sine/12)), math.rad(-5 - .1 * math.sin(sine/12))), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.55, 2.0 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(5), math.rad(-20 + 0 * math.sin(sine/12)), math.rad(5 + .1 * math.sin(sine/12))), 0.4)
swait()
end
for i = 1, 30 do
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-88 + 2 * math.sin(sine/12)),math.rad(76 - 1 * math.sin(sine/12)),math.rad(0)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(1.3,1.4,0) * CFrame.Angles(math.rad(2),math.rad(5),math.rad(188)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)),.2)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.4, 2 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(-5), math.rad(30 + 0 * math.sin(sine/12)), math.rad(-5 - .1 * math.sin(sine/12))), 0.2)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.55, 2.0 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(5), math.rad(-20 + 0 * math.sin(sine/12)), math.rad(5 + .1 * math.sin(sine/12))), 0.2)
swait()
end
while true do
if not attacking then break end
change = .5
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-88 + 2 * math.sin(sine/12)),math.rad(76 - 1 * math.sin(sine/12)),math.rad(0)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.7,-.2,.33) * CFrame.Angles(math.rad(-80 + 2 * math.sin(sine/12)),math.rad(-94 + 1 * math.sin(sine/12)),math.rad(0)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)),.2)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.4, 2 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(-5), math.rad(30 + 0 * math.sin(sine/12)), math.rad(-5 - .1 * math.sin(sine/12))), 0.2)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.55, 2.0 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(5), math.rad(-20 + 0 * math.sin(sine/12)), math.rad(5 + .1 * math.sin(sine/12))), 0.2)
swait()
end
end)()
local snap = Instance.new("Sound",Torso)
snap.SoundId = "rbxassetid://3154155968"
snap.Volume = 10
snap:Play()
local zm = Instance.new("Part",Torso)
zm.Anchored = false
zm.CanCollide = false
zm.Transparency = 1
zm.Size = Vector3.new(1,1,1)
zmweld = weldBetween(zm,Torso)
zmweld.C0 = CFrame.new(0,0,5) * CFrame.Angles(math.rad(0),math.rad(30),0)
local z = math.random(1,1)
if z == 1 then
local z1 = true
local cy = Instance.new("Part",Torso)
cy.Size = Vector3.new(0,.1,.1)
cy.Anchored = true
cy.Shape = "Cylinder"
cy.Material = "Neon"
cy.BrickColor = BrickColor.new("White")
cy.CanCollide = false
cy.CFrame = zm.CFrame * CFrame.new(0,1.5,0) * CFrame.Angles(math.rad(0),math.rad(90),0)
local portalopen = Instance.new("Sound",cy)
portalopen.SoundId = "rbxassetid://1888686669"
portalopen.Volume = 10
portalopen:Play()
coroutine.wrap(function()
while z1 do
cy.CFrame = zm.CFrame * CFrame.new(0,1.5,0) * CFrame.Angles(math.rad(0),math.rad(90),0)
swait()
end
end)()
for i = 1, 20 do
cy.Size = cy.Size + Vector3.new(0,.115,.115)
swait()
end
wait(.25)
for i = 1, 20 do
cy.Size = cy.Size + Vector3.new(0,.3,.3)
swait()
end
local shotgun = Instance.new("Part",Torso)
shotgun.Size = Vector3.new(2,14,2)
shotgun.Anchored = true
shotgun.CanCollide = false
shotgun.BrickColor = BrickColor.new("White")
shotgun.Transparency = 1
shotgun.Material = "Neon"
shotgun.CFrame = cy.CFrame * CFrame.new(0,0,-2) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(-90))
shotgunmesh = Instance.new("SpecialMesh",shotgun)
shotgunmesh.MeshId = "rbxassetid://71947462"
shotgunmesh.Scale = Vector3.new(5,5,5)
SOUND(cy,148894535,10,false,10)
local shloc = Instance.new("Part",Torso)
shloc.Anchored = false
shloc.Size = Vector3.new(1,1,1)
shloc.Transparency = 1
shloc.CanCollide = false
shlocweld = weldBetween(shloc,shotgun)
shlocweld.C0 = CFrame.new(6,3,-3)
local hand = Instance.new("Part",Torso)
hand.Size = Vector3.new(1,1,1)
hand.Anchored = true
hand.Transparency = 1
hand.Material = "Neon"
hand.CanCollide = false
hand.CFrame = cy.CFrame * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))
hand.BrickColor = BrickColor.new("White")
handm = Instance.new("SpecialMesh",hand)
handm.MeshId = "rbxassetid://90718752"
handm.Scale = Vector3.new(8,8,8)
local ps = Instance.new("Part",Torso)
ps.Anchored = true
ps.CanCollide = false
ps.Transparency = 1
ps.Size = Vector3.new(1,1,1)
ps.CFrame = cy.CFrame * CFrame.new(17,.7,-2)
for i = 1, 20 do
hand.Transparency = hand.Transparency - .05
hand.CFrame = hand.CFrame:lerp(cy.CFrame * CFrame.new(2,-1.2,-2) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)),.2)
shotgun.CFrame = shotgun.CFrame:lerp(cy.CFrame * CFrame.new(9,0,-2) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(-90)),.2)
shotgun.Transparency = shotgun.Transparency - .045
ps.CFrame = cy.CFrame * CFrame.new(17,1,-2)
swait()
end
coroutine.wrap(function()
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
g1.CFrame = CFrame.new(Root.Position,mouse.Hit.p)
local zcounter = 0
for i = 1, 4 do
zcounter = zcounter + 1
for i = 1, 25 do
swait()
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
ps.CFrame = cy.CFrame * CFrame.new(17,1,-2)
hand.CFrame = hand.CFrame:lerp(cy.CFrame * CFrame.new(1.8,-1.2,-2) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)),.2)
shotgun.CFrame = shotgun.CFrame:lerp(cy.CFrame * CFrame.new(8.8,0,-2) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(-90)),.2)
end
coroutine.wrap(function()
local lazer = Instance.new("Part",Torso)
lazer.Size = Vector3.new(1,6,6)
lazer.CanCollide = false
lazer.Anchored = true
lazer.CFrame = ps.CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(90))
lazer.Shape = "Cylinder"
lazer.Material = "Neon"
lazer.BrickColor = BrickColor.new("Bright yellow")
local STARTPOS = ps.CFrame*CFrame.new(0,0,0).p
local ENDHIT,ENDPOS = ray2(STARTPOS,mouse.Hit.p,650,Character)
local DISTANCE = (STARTPOS - ENDPOS).magnitude
lazer.CFrame = CFrame.new(STARTPOS,ENDPOS)*CFrame.new(0,0,-DISTANCE/2) * CFrame.Angles(math.rad(0),math.rad(90),0)
lazer.Size = Vector3.new(DISTANCE,2,2)
local shoot = Instance.new("Sound",ps)
shoot.SoundId = "rbxassetid://3178597347"
shoot.Volume = 10
shoot:Play()
local shell = Instance.new("Part",Torso)
shell.Anchored = false
shell.CanCollide = true
shell.Size = Vector3.new(.6,.6,2)
shell.BrickColor = BrickColor.new("Bright yellow")
shell.CFrame = shotgun.CFrame * CFrame.new(0,0,-4)
local shellmesh = Instance.new("SpecialMesh",shell)
shellmesh.MeshId = "rbxassetid://2604622956"
shellmesh.Scale = Vector3.new(.12,.12,.12)
shelldidhit = false
coroutine.wrap(function()
shell.Touched:connect(function(shellhit)
if shellhit.Parent.Parent ~= Character and shellhit.Parent ~= Character then
if shelldidhit then return end
shelldidhit = true
r = shellsound[math.random(1,#shellsound)]
local daic = Instance.new("Sound",shell)
daic.SoundId = "rbxassetid://"..r
daic.Volume = 10
daic:Play()
end
end)
for i = 1, 10 do
shell.CFrame = shell.CFrame:lerp(CFrame.new(shloc.Position) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),.2)
swait()
end
wait(15)
for i = 1, 100 do
shell.Transparency = shell.Transparency + .01
swait()
end
shell:Remove()
end)()
removeuseless:AddItem(shoot,4)
Hit = damagealll(7,ENDPOS)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
slachtoffer = v:FindFirstChildOfClass("Humanoid")
if secondform then
slachtoffer.Parent:BreakJoints()
else
slachtoffer:TakeDamage(math.random(68,81))
end
if secondform then
coroutine.wrap(function()
if tauntdebounce then return end
tauntdebounce = true
rdnm2 = p1[math.random(1,#p1)]
tauntsound = Instance.new("Sound", Head)
tauntsound.Volume = 10
tauntsound.SoundId = "http://www.roblox.com/asset/?id="..rdnm2
tauntsound.Looped = false
tauntsound:Play()
wait(3)
wait(tauntsound.TimeLength)
tauntsound:Remove()
wait(1)
tauntdebounce = false
end)()
end
if secondform then
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(ps.Position,torso.Position).lookVector*3250
removeuseless:AddItem(vel,.1)
else
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(ps.Position,torso.Position).lookVector*220
removeuseless:AddItem(vel,.1)
end
end
end
for i = 1, 2 do
local b = Instance.new("Part",Torso)
b.Size = Vector3.new(4,4,4)
b.BrickColor = BrickColor.new("Bright yellow")
b.Anchored = true
b.CanCollide = false
b.CFrame = ps.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
b.Material = "Neon"
coroutine.wrap(function()
for i = 1, 5 do
b.CFrame = ps.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
swait()
end
b:Remove()
lazer:Remove()
end)()
local b2 = Instance.new("Part",Torso)
b2.Size = Vector3.new(2.5,2.5,2.5)
b2.BrickColor = BrickColor.new("Bright yellow")
b2.Anchored = true
b2.CanCollide = false
b2.CFrame = ps.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
b2.Material = "Neon"
coroutine.wrap(function()
for i = 1, 5 do
b2.CFrame = CFrame.new(ENDPOS) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
swait()
end
b2:Remove()
end)()
end
end)()
for i = 1, 10 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
shotgun.CFrame = shotgun.CFrame:lerp(cy.CFrame * CFrame.new(2.8,6,-2) * CFrame.Angles(math.rad(-90),math.rad(-70),math.rad(-90)),.2)
hand.CFrame = hand.CFrame:lerp(cy.CFrame * CFrame.new(1.8,-1.2,-2) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(170)),.2)
swait()
end
if zcounter ~= 4 then
local hand2 = Instance.new("Part",Torso)
hand2.Size = Vector3.new(.1,.1,.1)
hand2.Anchored = true
hand2.CanCollide = false
hand2.Locked = true
hand2.Transparency = 1
hand2.BrickColor = BrickColor.new("White")
hand2.Material = "Slate"
local hand2mesh = Instance.new("SpecialMesh",hand2)
hand2mesh.MeshId = "rbxassetid://2899129749"
hand2mesh.Scale = Vector3.new(.4, .4, .4)
hand2.CFrame = cy.CFrame * CFrame.new(0,0,2.2)
coroutine.wrap(function()
for i = 1, 30 do
hand2.Transparency = hand2.Transparency - .05
hand2.CFrame = hand2.CFrame:lerp(cy.CFrame * CFrame.new(11.8,3.5,-2.2) * CFrame.Angles(math.rad(90),math.rad(20),0),.15)
swait()
end
local pump = Instance.new("Sound",shotgun)
pump.SoundId = "rbxassetid://255061173"
pump.Volume = 10
pump:Play()
removeuseless:AddItem(pump,3)
for i = 1, 10 do
shotgun.CFrame = shotgun.CFrame:lerp(cy.CFrame * CFrame.new(7.6,2.5,-2) * CFrame.Angles(math.rad(-90),math.rad(-20),math.rad(-90)),.2)
hand.CFrame = hand.CFrame:lerp(cy.CFrame * CFrame.new(1.8,-1.2,-2) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(120)),.2)
hand2.CFrame = hand2.CFrame:lerp(cy.CFrame * CFrame.new(8.9,2.5,-2.2) * CFrame.Angles(math.rad(90),math.rad(20),0),.2)
swait()
end
for i = 1, 10 do
shotgun.CFrame = shotgun.CFrame:lerp(cy.CFrame * CFrame.new(7.8,2.5,-2) * CFrame.Angles(math.rad(-90),math.rad(-20),math.rad(-90)),.2)
hand.CFrame = hand.CFrame:lerp(cy.CFrame * CFrame.new(1.8,-1.2,-2) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(120)),.2)
hand2.CFrame = hand2.CFrame:lerp(cy.CFrame * CFrame.new(11.8,3.5,-2.2) * CFrame.Angles(math.rad(90),math.rad(20),0),.2)
swait()
end
for i = 1, 30 do
hand2.Transparency = hand2.Transparency + .05
hand2.CFrame = hand2.CFrame:lerp(cy.CFrame * CFrame.new(0,0,2.2),.06)
swait()
end
hand2:Remove()
end)()
for i = 1, 75 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
shotgun.CFrame = shotgun.CFrame:lerp(cy.CFrame * CFrame.new(7.8,2.5,-2) * CFrame.Angles(math.rad(-90),math.rad(-20),math.rad(-90)),.2)
hand.CFrame = hand.CFrame:lerp(cy.CFrame * CFrame.new(1.8,-1.2,-2) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(120)),.2)
swait()
end
end
swait()
end
shotgun.Anchored = false
shotgun.CanCollide = true
coroutine.wrap(function()
wait(2)
for i = 1, 20 do
shotgun.Transparency = shotgun.Transparency + .05
swait()
end
shotgun:Remove()
end)()
SOUND(cy,148894535,10,false,10)
for i = 1, 30 do
hand.CFrame = hand.CFrame:lerp(cy.CFrame,.2)
hand.Transparency = hand.Transparency + .05
swait()
end
for i = 1, 20 do
cy.Size = cy.Size - Vector3.new(.5,.5,.5)
swait()
end
cy:Remove()
hand:Remove()
shloc:Remove()
zm:Remove()
ps:Remove()
debounce = false
attacking = false
ws = 32
removeuseless:AddItem(g1,.001)
end)()
elseif z == 2 then
local cy2 = Instance.new("Part",Torso)
cy2.Size = Vector3.new(0,.1,.1)
cy2.Anchored = true
cy2.Shape = "Cylinder"
cy2.Material = "Neon"
cy2.BrickColor = BrickColor.new("White")
cy2.CanCollide = false
cy2.CFrame = zm.CFrame * CFrame.new(2,-1,0) * CFrame.Angles(math.rad(0),math.rad(90),0)
local cy3 = Instance.new("Part",Torso)
cy3.Size = Vector3.new(0,.1,.1)
cy3.Anchored = true
cy3.Shape = "Cylinder"
cy3.Material = "Neon"
cy3.BrickColor = BrickColor.new("White")
cy3.CanCollide = false
cy3.CFrame = zm.CFrame * CFrame.new(-2,4,0) * CFrame.Angles(math.rad(0),math.rad(90),0)
for i = 1, 20 do
cy2.Size = cy2.Size + Vector3.new(0,.115,.115)
cy3.Size = cy3.Size + Vector3.new(0,.115,.115)
swait()
end
wait(.5)
local z = {
Color = BrickColor.new("Really black").Color
}
local lol = smoothen:Create(cy2,TweenInfo.new(.8,Enum.EasingStyle.Linear),z)
local lol2 = smoothen:Create(cy3,TweenInfo.new(.8,Enum.EasingStyle.Linear),z)
lol:Play()
lol2:Play()
wait(2)
local b = 0
for i = 1, 200 do
b = b + 5
cy2.CFrame = zm.CFrame * CFrame.new(2,-1,0) * CFrame.Angles(math.rad(b),math.rad(90),0)
cy3.CFrame = zm.CFrame * CFrame.new(-2,4,0) * CFrame.Angles(math.rad(b),math.rad(90),0)
swait()
end
elseif z == 3 then
local cy = Instance.new("Part",Torso)
cy.Size = Vector3.new(0,.1,.1)
cy.Anchored = true
cy.Shape = "Cylinder"
cy.Material = "Neon"
cy.BrickColor = BrickColor.new("White")
cy.CanCollide = false
cy.CFrame = zm.CFrame * CFrame.new(0,1.5,0) * CFrame.Angles(math.rad(0),math.rad(90),0)
local cy2 = Instance.new("Part",Torso)
cy2.Size = Vector3.new(0,.1,.1)
cy2.Anchored = true
cy2.Shape = "Cylinder"
cy2.Material = "Neon"
cy2.BrickColor = BrickColor.new("White")
cy2.CanCollide = false
cy2.CFrame = zm.CFrame * CFrame.new(2,-1,0) * CFrame.Angles(math.rad(0),math.rad(90),0)
local cy3 = Instance.new("Part",Torso)
cy3.Size = Vector3.new(0,.1,.1)
cy3.Anchored = true
cy3.Shape = "Cylinder"
cy3.Material = "Neon"
cy3.BrickColor = BrickColor.new("White")
cy3.CanCollide = false
cy3.CFrame = zm.CFrame * CFrame.new(-2,4,0) * CFrame.Angles(math.rad(0),math.rad(90),0)
for i = 1, 20 do
cy.Size = cy.Size + Vector3.new(0,.115,.115)
cy2.Size = cy2.Size + Vector3.new(0,.115,.115)
cy3.Size = cy3.Size + Vector3.new(0,.115,.115)
swait()
end
elseif z == 4 then
print(4)
local cy = Instance.new("Part",Torso)
cy.Size = Vector3.new(0,.1,.1)
cy.Anchored = true
cy.Shape = "Cylinder"
cy.Material = "Neon"
cy.BrickColor = BrickColor.new("White")
cy.CanCollide = false
cy.CFrame = zm.CFrame * CFrame.new(2,4,0) * CFrame.Angles(math.rad(0),math.rad(90),0)
local cy2 = Instance.new("Part",Torso)
cy2.Size = Vector3.new(0,.1,.1)
cy2.Anchored = true
cy2.Shape = "Cylinder"
cy2.Material = "Neon"
cy2.BrickColor = BrickColor.new("White")
cy2.CanCollide = false
cy2.CFrame = zm.CFrame * CFrame.new(2,-1,0) * CFrame.Angles(math.rad(0),math.rad(90),0)
local cy3 = Instance.new("Part",Torso)
cy3.Size = Vector3.new(0,.1,.1)
cy3.Anchored = true
cy3.Shape = "Cylinder"
cy3.Material = "Neon"
cy3.BrickColor = BrickColor.new("White")
cy3.CanCollide = false
cy3.CFrame = zm.CFrame * CFrame.new(-2,4,0) * CFrame.Angles(math.rad(0),math.rad(90),0)
local cy4 = Instance.new("Part",Torso)
cy4.Size = Vector3.new(0,.1,.1)
cy4.Anchored = true
cy4.Shape = "Cylinder"
cy4.Material = "Neon"
cy4.BrickColor = BrickColor.new("White")
cy4.CanCollide = false
cy4.CFrame = zm.CFrame * CFrame.new(-2,-1,0) * CFrame.Angles(math.rad(0),math.rad(90),0)
for i = 1, 20 do
cy.Size = cy.Size + Vector3.new(0,.115,.115)
cy2.Size = cy2.Size + Vector3.new(0,.115,.115)
cy3.Size = cy3.Size + Vector3.new(0,.115,.115)
cy4.Size = cy4.Size + Vector3.new(0,.115,.115)
swait()
end
elseif z == 5 then
local cy = Instance.new("Part",Torso)
cy.Size = Vector3.new(0,.1,.1)
cy.Anchored = true
cy.Shape = "Cylinder"
cy.Material = "Neon"
cy.BrickColor = BrickColor.new("White")
cy.CanCollide = false
cy.CFrame = zm.CFrame * CFrame.new(0,1.5,0) * CFrame.Angles(math.rad(0),math.rad(90),0)
local cy5 = Instance.new("Part",Torso)
cy5.Size = Vector3.new(0,.1,.1)
cy5.Anchored = true
cy5.Shape = "Cylinder"
cy5.Material = "Neon"
cy5.BrickColor = BrickColor.new("White")
cy5.CanCollide = false
cy5.CFrame = zm.CFrame * CFrame.new(2,4,0) * CFrame.Angles(math.rad(0),math.rad(90),0)
local cy2 = Instance.new("Part",Torso)
cy2.Size = Vector3.new(0,.1,.1)
cy2.Anchored = true
cy2.Shape = "Cylinder"
cy2.Material = "Neon"
cy2.BrickColor = BrickColor.new("White")
cy2.CanCollide = false
cy2.CFrame = zm.CFrame * CFrame.new(2,-1,0) * CFrame.Angles(math.rad(0),math.rad(90),0)
local cy3 = Instance.new("Part",Torso)
cy3.Size = Vector3.new(0,.1,.1)
cy3.Anchored = true
cy3.Shape = "Cylinder"
cy3.Material = "Neon"
cy3.BrickColor = BrickColor.new("White")
cy3.CanCollide = false
cy3.CFrame = zm.CFrame * CFrame.new(-2,4,0) * CFrame.Angles(math.rad(0),math.rad(90),0)
local cy4 = Instance.new("Part",Torso)
cy4.Size = Vector3.new(0,.1,.1)
cy4.Anchored = true
cy4.Shape = "Cylinder"
cy4.Material = "Neon"
cy4.BrickColor = BrickColor.new("White")
cy4.CanCollide = false
cy4.CFrame = zm.CFrame * CFrame.new(-2,-1,0) * CFrame.Angles(math.rad(0),math.rad(90),0)
for i = 1, 20 do
cy.Size = cy.Size + Vector3.new(0,.115,.115)
cy2.Size = cy2.Size + Vector3.new(0,.115,.115)
cy3.Size = cy3.Size + Vector3.new(0,.115,.115)
cy4.Size = cy4.Size + Vector3.new(0,.115,.115)
cy5.Size = cy5.Size + Vector3.new(0,.115,.115)
swait()
end
elseif z == 6 then
local cy = Instance.new("Part",Torso)
cy.Size = Vector3.new(0,.1,.1)
cy.Anchored = true
cy.Shape = "Cylinder"
cy.Material = "Neon"
cy.BrickColor = BrickColor.new("White")
cy.CanCollide = false
cy.CFrame = zm.CFrame * CFrame.new(-2,5,0) * CFrame.Angles(math.rad(0),math.rad(90),0)
local cy6 = Instance.new("Part",Torso)
cy6.Size = Vector3.new(0,.1,.1)
cy6.Anchored = true
cy6.Shape = "Cylinder"
cy6.Material = "Neon"
cy6.BrickColor = BrickColor.new("White")
cy6.CanCollide = false
cy6.CFrame = zm.CFrame * CFrame.new(-2,2,0) * CFrame.Angles(math.rad(0),math.rad(90),0)
local cy5 = Instance.new("Part",Torso)
cy5.Size = Vector3.new(0,.1,.1)
cy5.Anchored = true
cy5.Shape = "Cylinder"
cy5.Material = "Neon"
cy5.BrickColor = BrickColor.new("White")
cy5.CanCollide = false
cy5.CFrame = zm.CFrame * CFrame.new(2,5,0) * CFrame.Angles(math.rad(0),math.rad(90),0)
local cy2 = Instance.new("Part",Torso)
cy2.Size = Vector3.new(0,.1,.1)
cy2.Anchored = true
cy2.Shape = "Cylinder"
cy2.Material = "Neon"
cy2.BrickColor = BrickColor.new("White")
cy2.CanCollide = false
cy2.CFrame = zm.CFrame * CFrame.new(2,2,0) * CFrame.Angles(math.rad(0),math.rad(90),0)
local cy3 = Instance.new("Part",Torso)
cy3.Size = Vector3.new(0,.1,.1)
cy3.Anchored = true
cy3.Shape = "Cylinder"
cy3.Material = "Neon"
cy3.BrickColor = BrickColor.new("White")
cy3.CanCollide = false
cy3.CFrame = zm.CFrame * CFrame.new(-2,-1,0) * CFrame.Angles(math.rad(0),math.rad(90),0)
local cy4 = Instance.new("Part",Torso)
cy4.Size = Vector3.new(0,.1,.1)
cy4.Anchored = true
cy4.Shape = "Cylinder"
cy4.Material = "Neon"
cy4.BrickColor = BrickColor.new("White")
cy4.CanCollide = false
cy4.CFrame = zm.CFrame * CFrame.new(2,-1,0) * CFrame.Angles(math.rad(0),math.rad(90),0)
for i = 1, 20 do
cy.Size = cy.Size + Vector3.new(0,.115,.115)
cy2.Size = cy2.Size + Vector3.new(0,.115,.115)
cy3.Size = cy3.Size + Vector3.new(0,.115,.115)
cy4.Size = cy4.Size + Vector3.new(0,.115,.115)
cy5.Size = cy5.Size + Vector3.new(0,.115,.115)
cy6.Size = cy6.Size + Vector3.new(0,.115,.115)
swait()
end
end
elseif Press=='p' then
if debounce then return end
debounce = true
attacking = true
local posb = Instance.new("Part",Torso)
posb.Anchored = true
posb.Transparency = 1
posb.CanCollide = false
posb.Size = Vector3.new(1,1,1)
ws = 3
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
g1.CFrame = CFrame.new(Root.Position,mouse.Hit.p)
for i = 1, 20 do
posb.CFrame = Root.CFrame * CFrame.new(0,35,-80)
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(-140),math.rad(10),math.rad(25)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(-140),math.rad(-10),math.rad(-25)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)),.2)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.4, 2, .1) * CFrame.Angles(math.rad(-10), math.rad(5), math.rad(-3)), 0.2)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.51, .7, .7) * CFrame.Angles(math.rad(42), math.rad(0), math.rad(0)), 0.4)
swait()
end
local hitbox = Instance.new("Part",Torso)
hitbox.Anchored = false
hitbox.CanCollide = false
hitbox.Transparency = 1
hitbox.Size = Vector3.new(2.5,3,3)
hitboxweld = weldBetween(hitbox,LeftLeg)
hitboxweld.C0 = CFrame.new(0,2.6,0)
local hi2 = false
hitbox.Touched:connect(function(hi)
if hi.Parent:FindFirstChildOfClass("Humanoid") and hi.Parent ~= Character then
if hi2 then return end
hi2 = true
SOUND(LeftLeg,3041191430,10,false,5)
for i = 1, 25 do
hi.Parent.Torso.CFrame = hi.Parent.Torso.CFrame:lerp(CFrame.new(posb.Position),.18)
swait()
end
local zw = weldBetween(hi.Parent.Torso,posb)
wait(.25)
local portalopen = Instance.new("Sound",nil)
portalopen.SoundId = "rbxassetid://148894535"
portalopen.Volume = 10
portalopen:Play()
local portalopen2 = Instance.new("Sound",nil)
portalopen2.SoundId = "rbxassetid://148894535"
portalopen2.Volume = 10
portalopen2:Play()
for i = 1, 4 do
wait(.5)
local cy = Instance.new("Part",Torso)
cy.Size = Vector3.new(.2,.1,.1)
cy.Anchored = true
cy.Shape = "Cylinder"
cy.Material = "Neon"
cy.BrickColor = BrickColor.new("White")
cy.CanCollide = false
cy.CFrame = posb.CFrame * CFrame.Angles(0,math.rad(math.random(-180,180)),math.rad(math.random(-180,180))) * CFrame.new(35,0,0)
portalopen.Parent = cy
portalopen:Play()
for i = 1, 20 do
cy.Size = cy.Size + Vector3.new(0,.85,.85)
swait()
end
local dice = Instance.new("Part",Torso)
dice.CanCollide = true
dice.CFrame = cy.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
dice.Anchored = true
dice.Transparency = 1
dice.Size = Vector3.new(6,6,6)
local dicemesh = Instance.new("SpecialMesh",dice)
dicemesh.MeshId = "rbxassetid://95358536"
dicemesh.TextureId = "rbxassetid://100025876"
dicemesh.Scale = Vector3.new(4,4,4)
dchit = false
coroutine.wrap(function()
wait(.25)
for i = 1, 20 do
cy.Size = cy.Size - Vector3.new(0,.85,.85)
swait()
end
cy:Remove()
end)()
local cy2 = Instance.new("Part",Torso)
cy2.Size = Vector3.new(.2,.1,.1)
cy2.Anchored = true
cy2.Shape = "Cylinder"
cy2.Material = "Neon"
cy2.BrickColor = BrickColor.new("White")
cy2.CanCollide = false
cy2.CFrame = cy.CFrame * CFrame.new(-70,0,0)
portalopen2.Parent = cy2
portalopen2:Play()
coroutine.wrap(function()
for i = 1, 14 do
dice.Transparency = dice.Transparency - .15
dice.CFrame = dice.CFrame:lerp(CFrame.new(posb.Position),.1)
swait()
end
Hit = damagealll(12,dice.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
slachtoffer = v:FindFirstChildOfClass("Humanoid")
slachtoffer:TakeDamage(math.random(2,4))
if secondform then
coroutine.wrap(function()
if tauntdebounce then return end
tauntdebounce = true
rdnm2 = p1[math.random(1,#p1)]
tauntsound = Instance.new("Sound", Head)
tauntsound.Volume = 10
tauntsound.SoundId = "http://www.roblox.com/asset/?id="..rdnm2
tauntsound.Looped = false
tauntsound:Play()
wait(3)
wait(tauntsound.TimeLength)
tauntsound:Remove()
wait(1)
tauntdebounce = false
end)()
end
local hc = Instance.new("Sound",slachtoffer.Parent.Head)
hc.SoundId = "rbxasssetid://2974876428"
hc.Volume = 10
hc:Play()
coroutine.wrap(function()
local w = Instance.new("Part",Torso)
w.Anchored = true
w.CanCollide = false
w.Material = "Neon"
w.BrickColor = BrickColor.new("White")
if slachtoffer.RigType == Enum.HumanoidRigType.R15 then
w.CFrame = slachtoffer.Parent:FindFirstChild("UpperTorso").CFrame
elseif slachtoffer.RigType == Enum.HumanoidRigType.R6 then
w.CFrame = slachtoffer.Parent:FindFirstChild("Torso").CFrame
end
w.Size = Vector3.new(3,3,3)
w.Shape = "Ball"
for i = 1, 50 do
w.Transparency = w.Transparency + .05
w.Size = w.Size + Vector3.new(1.75,1.75,1.75)
swait()
end
w:Remove()
end)()
for i = 1, 8 do
coroutine.wrap(function()
local ps = Instance.new("Part",Torso)
ps.Size = Vector3.new(1,1,1)
ps.Anchored = true
ps.BrickColor = BrickColor.new("White")
ps.Material = "Neon"
if slachtoffer.RigType == Enum.HumanoidRigType.R6 then
ps.CFrame = slachtoffer.Parent:FindFirstChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
elseif slachtoffer.RigType == Enum.HumanoidRigType.R15 then
ps.CFrame = slachtoffer.Parent:FindFirstChild("UpperTorso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
end
local psm = Instance.new("SpecialMesh",ps)
psm.MeshType = "Sphere"
psm.Scale = Vector3.new(3,1,3)
for i = 1, 50 do
psm.Scale = psm.Scale + Vector3.new(0,2.5,0)
ps.Transparency = ps.Transparency + .025
swait()
end
ps:Remove()
end)()
end
removeuseless:AddItem(hc,6)
end
end
for i = 1, 14 do
dice.Transparency = dice.Transparency + .15
dice.CFrame = dice.CFrame:lerp(CFrame.new(cy2.Position),.1)
swait()
end
dice:Remove()
end)()
for i = 1, 20 do
cy2.Size = cy2.Size + Vector3.new(0,.85,.85)
swait()
end
coroutine.wrap(function()
wait(.25)
for i = 1, 20 do
cy2.Size = cy2.Size - Vector3.new(0,.85,.85)
swait()
end
cy2:Remove()
end)()
swait()
end
for i = 1, 5 do
wait(.25)
local cy = Instance.new("Part",Torso)
cy.Size = Vector3.new(.2,.1,.1)
cy.Anchored = true
cy.Shape = "Cylinder"
cy.Material = "Neon"
cy.BrickColor = BrickColor.new("White")
cy.CanCollide = false
cy.CFrame = posb.CFrame * CFrame.Angles(0,math.rad(math.random(-180,180)),math.rad(math.random(-180,180))) * CFrame.new(35,0,0)
portalopen.Parent = cy
portalopen:Play()
for i = 1, 20 do
cy.Size = cy.Size + Vector3.new(0,.85,.85)
swait()
end
local dice = Instance.new("Part",Torso)
dice.CanCollide = true
dice.CFrame = cy.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
dice.Anchored = true
dice.Transparency = 1
dice.Size = Vector3.new(.5,.5,.5)
local dicemesh = Instance.new("SpecialMesh",dice)
dicemesh.MeshId = "rbxassetid://95358536"
dicemesh.TextureId = "rbxassetid://100025876"
dicemesh.Scale = Vector3.new(4,4,4)
coroutine.wrap(function()
wait(.25)
for i = 1, 20 do
cy.Size = cy.Size - Vector3.new(0,.85,.85)
swait()
end
cy:Remove()
end)()
local cy2 = Instance.new("Part",Torso)
cy2.Size = Vector3.new(.2,.1,.1)
cy2.Anchored = true
cy2.Shape = "Cylinder"
cy2.Material = "Neon"
cy2.BrickColor = BrickColor.new("White")
cy2.CanCollide = false
cy2.CFrame = cy.CFrame * CFrame.new(-70,0,0)
portalopen2.Parent = cy2
portalopen2:Play()
coroutine.wrap(function()
for i = 1, 14 do
dice.Transparency = dice.Transparency - .15
dice.CFrame = dice.CFrame:lerp(CFrame.new(posb.Position),.1)
swait()
end
Hit = damagealll(12,dice.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
slachtoffer = v:FindFirstChildOfClass("Humanoid")
slachtoffer:TakeDamage(math.random(2,4))
if secondform then
coroutine.wrap(function()
if tauntdebounce then return end
tauntdebounce = true
rdnm2 = p1[math.random(1,#p1)]
tauntsound = Instance.new("Sound", Head)
tauntsound.Volume = 10
tauntsound.SoundId = "http://www.roblox.com/asset/?id="..rdnm2
tauntsound.Looped = false
tauntsound:Play()
wait(3)
wait(tauntsound.TimeLength)
tauntsound:Remove()
wait(1)
tauntdebounce = false
end)()
end
local hc = Instance.new("Sound",slachtoffer.Parent.Head)
hc.SoundId = "rbxasssetid://2974876428"
hc.Volume = 10
hc:Play()
coroutine.wrap(function()
local w = Instance.new("Part",Torso)
w.Anchored = true
w.CanCollide = false
w.Material = "Neon"
w.BrickColor = BrickColor.new("White")
if slachtoffer.RigType == Enum.HumanoidRigType.R15 then
w.CFrame = slachtoffer.Parent:FindFirstChild("UpperTorso").CFrame
elseif slachtoffer.RigType == Enum.HumanoidRigType.R6 then
w.CFrame = slachtoffer.Parent:FindFirstChild("Torso").CFrame
end
w.Size = Vector3.new(3,3,3)
w.Shape = "Ball"
for i = 1, 50 do
w.Transparency = w.Transparency + .05
w.Size = w.Size + Vector3.new(1.75,1.75,1.75)
swait()
end
w:Remove()
end)()
for i = 1, 8 do
coroutine.wrap(function()
local ps = Instance.new("Part",Torso)
ps.Size = Vector3.new(1,1,1)
ps.Anchored = true
ps.BrickColor = BrickColor.new("White")
ps.Material = "Neon"
if slachtoffer.RigType == Enum.HumanoidRigType.R6 then
ps.CFrame = slachtoffer.Parent:FindFirstChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
elseif slachtoffer.RigType == Enum.HumanoidRigType.R15 then
ps.CFrame = slachtoffer.Parent:FindFirstChild("UpperTorso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
end
local psm = Instance.new("SpecialMesh",ps)
psm.MeshType = "Sphere"
psm.Scale = Vector3.new(3,1,3)
for i = 1, 50 do
psm.Scale = psm.Scale + Vector3.new(0,2.5,0)
ps.Transparency = ps.Transparency + .025
swait()
end
ps:Remove()
end)()
end
removeuseless:AddItem(hc,6)
end
end
for i = 1, 14 do
dice.Transparency = dice.Transparency + .15
dice.CFrame = dice.CFrame:lerp(CFrame.new(cy2.Position),.1)
swait()
end
dice:Remove()
end)()
for i = 1, 20 do
cy2.Size = cy2.Size + Vector3.new(0,.85,.85)
swait()
end
coroutine.wrap(function()
wait(.25)
for i = 1, 20 do
cy2.Size = cy2.Size - Vector3.new(0,.85,.85)
swait()
end
cy2:Remove()
end)()
swait()
end
for i = 1, 6 do
wait(.0325)
local cy = Instance.new("Part",Torso)
cy.Size = Vector3.new(.2,.1,.1)
cy.Anchored = true
cy.Shape = "Cylinder"
cy.Material = "Neon"
cy.BrickColor = BrickColor.new("White")
cy.CanCollide = false
cy.CFrame = posb.CFrame * CFrame.Angles(0,math.rad(math.random(-180,180)),math.rad(math.random(-180,180))) * CFrame.new(35,0,0)
portalopen.Parent = cy
portalopen:Play()
for i = 1, 20 do
cy.Size = cy.Size + Vector3.new(0,.85,.85)
swait()
end
local dice = Instance.new("Part",Torso)
dice.CanCollide = true
dice.CFrame = cy.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
dice.Anchored = true
dice.Transparency = 1
dice.Size = Vector3.new(.5,.5,.5)
local dicemesh = Instance.new("SpecialMesh",dice)
dicemesh.MeshId = "rbxassetid://95358536"
dicemesh.TextureId = "rbxassetid://100025876"
dicemesh.Scale = Vector3.new(4,4,4)
coroutine.wrap(function()
wait(.25)
for i = 1, 20 do
cy.Size = cy.Size - Vector3.new(0,.85,.85)
swait()
end
cy:Remove()
end)()
local cy2 = Instance.new("Part",Torso)
cy2.Size = Vector3.new(.2,.1,.1)
cy2.Anchored = true
cy2.Shape = "Cylinder"
cy2.Material = "Neon"
cy2.BrickColor = BrickColor.new("White")
cy2.CanCollide = false
cy2.CFrame = cy.CFrame * CFrame.new(-70,0,0)
portalopen2.Parent = cy2
portalopen2:Play()
coroutine.wrap(function()
for i = 1, 14 do
dice.Transparency = dice.Transparency - .15
dice.CFrame = dice.CFrame:lerp(CFrame.new(posb.Position),.1)
swait()
end
Hit = damagealll(12,dice.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
slachtoffer = v:FindFirstChildOfClass("Humanoid")
slachtoffer:TakeDamage(math.random(2,4))
if secondform then
coroutine.wrap(function()
if tauntdebounce then return end
tauntdebounce = true
rdnm2 = p1[math.random(1,#p1)]
tauntsound = Instance.new("Sound", Head)
tauntsound.Volume = 10
tauntsound.SoundId = "http://www.roblox.com/asset/?id="..rdnm2
tauntsound.Looped = false
tauntsound:Play()
wait(3)
wait(tauntsound.TimeLength)
tauntsound:Remove()
wait(1)
tauntdebounce = false
end)()
end
local hc = Instance.new("Sound",slachtoffer.Parent.Head)
hc.SoundId = "rbxasssetid://2974876428"
hc.Volume = 10
hc:Play()
coroutine.wrap(function()
local w = Instance.new("Part",Torso)
w.Anchored = true
w.CanCollide = false
w.Material = "Neon"
w.BrickColor = BrickColor.new("White")
if slachtoffer.RigType == Enum.HumanoidRigType.R15 then
w.CFrame = slachtoffer.Parent:FindFirstChild("UpperTorso").CFrame
elseif slachtoffer.RigType == Enum.HumanoidRigType.R6 then
w.CFrame = slachtoffer.Parent:FindFirstChild("Torso").CFrame
end
w.Size = Vector3.new(3,3,3)
w.Shape = "Ball"
for i = 1, 50 do
w.Transparency = w.Transparency + .05
w.Size = w.Size + Vector3.new(1.75,1.75,1.75)
swait()
end
w:Remove()
end)()
for i = 1, 8 do
coroutine.wrap(function()
local ps = Instance.new("Part",Torso)
ps.Size = Vector3.new(1,1,1)
ps.Anchored = true
ps.BrickColor = BrickColor.new("White")
ps.Material = "Neon"
if slachtoffer.RigType == Enum.HumanoidRigType.R6 then
ps.CFrame = slachtoffer.Parent:FindFirstChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
elseif slachtoffer.RigType == Enum.HumanoidRigType.R15 then
ps.CFrame = slachtoffer.Parent:FindFirstChild("UpperTorso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
end
local psm = Instance.new("SpecialMesh",ps)
psm.MeshType = "Sphere"
psm.Scale = Vector3.new(3,1,3)
for i = 1, 50 do
psm.Scale = psm.Scale + Vector3.new(0,2.5,0)
ps.Transparency = ps.Transparency + .025
swait()
end
ps:Remove()
end)()
end
removeuseless:AddItem(hc,6)
end
end
for i = 1, 14 do
dice.Transparency = dice.Transparency + .15
dice.CFrame = dice.CFrame:lerp(CFrame.new(cy2.Position),.1)
swait()
end
dice:Remove()
end)()
for i = 1, 20 do
cy2.Size = cy2.Size + Vector3.new(0,.85,.85)
swait()
end
coroutine.wrap(function()
wait(.25)
for i = 1, 20 do
cy2.Size = cy2.Size - Vector3.new(0,.85,.85)
swait()
end
cy2:Remove()
end)()
swait()
end
for i = 1, 8 do
swait()
local cy = Instance.new("Part",Torso)
cy.Size = Vector3.new(.2,.1,.1)
cy.Anchored = true
cy.Shape = "Cylinder"
cy.Material = "Neon"
cy.BrickColor = BrickColor.new("White")
cy.CanCollide = false
cy.CFrame = posb.CFrame * CFrame.Angles(0,math.rad(math.random(-180,180)),math.rad(math.random(-180,180))) * CFrame.new(35,0,0)
portalopen.Parent = cy
portalopen:Play()
for i = 1, 20 do
cy.Size = cy.Size + Vector3.new(0,.85,.85)
swait()
end
local dice = Instance.new("Part",Torso)
dice.CanCollide = true
dice.CFrame = cy.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
dice.Anchored = true
dice.Transparency = 1
dice.Size = Vector3.new(.5,.5,.5)
local dicemesh = Instance.new("SpecialMesh",dice)
dicemesh.MeshId = "rbxassetid://95358536"
dicemesh.TextureId = "rbxassetid://100025876"
dicemesh.Scale = Vector3.new(4,4,4)
coroutine.wrap(function()
wait(.25)
for i = 1, 20 do
cy.Size = cy.Size - Vector3.new(0,.85,.85)
swait()
end
cy:Remove()
end)()
local cy2 = Instance.new("Part",Torso)
cy2.Size = Vector3.new(.2,.1,.1)
cy2.Anchored = true
cy2.Shape = "Cylinder"
cy2.Material = "Neon"
cy2.BrickColor = BrickColor.new("White")
cy2.CanCollide = false
cy2.CFrame = cy.CFrame * CFrame.new(-70,0,0)
portalopen2.Parent = cy2
portalopen2:Play()
coroutine.wrap(function()
for i = 1, 14 do
dice.Transparency = dice.Transparency - .15
dice.CFrame = dice.CFrame:lerp(CFrame.new(posb.Position),.1)
swait()
end
Hit = damagealll(12,dice.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
slachtoffer = v:FindFirstChildOfClass("Humanoid")
if secondform then
slachtoffer.Parent:BreakJoints()
else
slachtoffer:TakeDamage(math.random(2,4))
end
if secondform then
coroutine.wrap(function()
if tauntdebounce then return end
tauntdebounce = true
rdnm2 = p1[math.random(1,#p1)]
tauntsound = Instance.new("Sound", Head)
tauntsound.Volume = 10
tauntsound.SoundId = "http://www.roblox.com/asset/?id="..rdnm2
tauntsound.Looped = false
tauntsound:Play()
wait(3)
wait(tauntsound.TimeLength)
tauntsound:Remove()
wait(1)
tauntdebounce = false
end)()
end
local hc = Instance.new("Sound",slachtoffer.Parent.Head)
hc.SoundId = "rbxasssetid://2974876428"
hc.Volume = 10
hc:Play()
coroutine.wrap(function()
local w = Instance.new("Part",Torso)
w.Anchored = true
w.CanCollide = false
w.Material = "Neon"
w.BrickColor = BrickColor.new("White")
if slachtoffer.RigType == Enum.HumanoidRigType.R15 then
w.CFrame = slachtoffer.Parent:FindFirstChild("UpperTorso").CFrame
elseif slachtoffer.RigType == Enum.HumanoidRigType.R6 then
w.CFrame = slachtoffer.Parent:FindFirstChild("Torso").CFrame
end
w.Size = Vector3.new(3,3,3)
w.Shape = "Ball"
for i = 1, 50 do
w.Transparency = w.Transparency + .05
w.Size = w.Size + Vector3.new(1.75,1.75,1.75)
swait()
end
w:Remove()
end)()
for i = 1, 8 do
coroutine.wrap(function()
local ps = Instance.new("Part",Torso)
ps.Size = Vector3.new(1,1,1)
ps.Anchored = true
ps.BrickColor = BrickColor.new("White")
ps.Material = "Neon"
if slachtoffer.RigType == Enum.HumanoidRigType.R6 then
ps.CFrame = slachtoffer.Parent:FindFirstChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
elseif slachtoffer.RigType == Enum.HumanoidRigType.R15 then
ps.CFrame = slachtoffer.Parent:FindFirstChild("UpperTorso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
end
local psm = Instance.new("SpecialMesh",ps)
psm.MeshType = "Sphere"
psm.Scale = Vector3.new(3,1,3)
for i = 1, 50 do
psm.Scale = psm.Scale + Vector3.new(0,2.5,0)
ps.Transparency = ps.Transparency + .025
swait()
end
ps:Remove()
end)()
end
removeuseless:AddItem(hc,6)
end
end
for i = 1, 14 do
dice.Transparency = dice.Transparency + .15
dice.CFrame = dice.CFrame:lerp(CFrame.new(cy2.Position),.1)
swait()
end
dice:Remove()
end)()
for i = 1, 20 do
cy2.Size = cy2.Size + Vector3.new(0,.85,.85)
swait()
end
coroutine.wrap(function()
wait(.25)
for i = 1, 20 do
cy2.Size = cy2.Size - Vector3.new(0,.85,.85)
swait()
end
cy2:Remove()
end)()
swait()
end
posb:Remove()
end
end)
ws = 0
for i = 1, 15 do
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.4,-.2) * CFrame.Angles(math.rad(36),math.rad(0),math.rad(12)), 0.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.4,-.2) * CFrame.Angles(math.rad(36),math.rad(0),math.rad(-12)), 0.4)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(22), math.rad(0), math.rad(0)),.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.39, 2, .6) * CFrame.Angles(math.rad(37), math.rad(0), math.rad(0)), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.1, -1.1) * CFrame.Angles(math.rad(-87), math.rad(3), math.rad(5)), 0.4)
swait()
end
hitbox:Remove()
ws = 32
removeuseless:AddItem(g1,.001)
debounce = false
attacking = false
elseif Press=='u' then
if mouse.Target ~= nil then
if debounce then return end
debounce = true
attacking = true
change = .5
ws = 0
for i = 1, 30 do
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-88 + 2 * math.sin(sine/12)),math.rad(76 - 1 * math.sin(sine/12)),math.rad(0)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(1.5,1.1,0) * CFrame.Angles(math.rad(2),math.rad(5),math.rad(171)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)),.2)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.4, 2 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(-5), math.rad(30 + 0 * math.sin(sine/12)), math.rad(-5 - .1 * math.sin(sine/12))), 0.2)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.55, 2.0 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(5), math.rad(-20 + 0 * math.sin(sine/12)), math.rad(5 + .1 * math.sin(sine/12))), 0.2)
swait()
end
local snap = Instance.new("Sound",Torso)
snap.SoundId = "rbxassetid://3154155968"
snap.Volume = 10
snap:Play()
removeuseless:AddItem(snap,4)
local mark = Instance.new("Part",Torso)
mark.Size = Vector3.new(1,1,1)
mark.Anchored = true
mark.CanCollide = false
mark.Transparency = 1
mark.CFrame = CFrame.new(mouse.Hit.p) * CFrame.new(0,30,0) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
local cy = Instance.new("Part",Torso)
cy.Size = Vector3.new(.2,.1,.1)
cy.Anchored = true
cy.Shape = "Cylinder"
cy.Material = "Neon"
cy.BrickColor = BrickColor.new("White")
cy.CanCollide = false
cy.CFrame = mark.CFrame * CFrame.Angles(0,math.rad(math.random(-180,180)),math.rad(math.random(-180,180))) * CFrame.new(23,0,0)
local portalopen = Instance.new("Sound",cy)
portalopen.SoundId = "rbxassetid://1888686669"
portalopen.Volume = 10
portalopen:Play()
coroutine.wrap(function()
for i = 1, 20 do
cy.Size = cy.Size + Vector3.new(0,.85,.85)
swait()
end
local dice = Instance.new("Part",Torso)
dice.CanCollide = true
dice.CFrame = cy.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
dice.Anchored = true
dice.Transparency = 1
dice.Size = Vector3.new(.5,.5,.5)
local dicemesh = Instance.new("SpecialMesh",dice)
dicemesh.MeshId = "rbxassetid://95358536"
dicemesh.TextureId = "rbxassetid://100025876"
dicemesh.Scale = Vector3.new(4,4,4)
local wh = Instance.new("Part",Torso)
wh.Size = Vector3.new(10,10,10)
wh.Anchored = false
wh.CanCollide = false
wh.Material = "Neon"
wh.BrickColor = BrickColor.new("White")
wh.Transparency = 1
SOUND(dice,148894535,10,false,10)
local whw = weldBetween(wh,dice)
for i = 1, 20 do
dice.Transparency = dice.Transparency - .05
wh.Transparency = wh.Transparency - .025
dice.CFrame = dice.CFrame:lerp(CFrame.new(mark.Position),.1)
swait()
end
local f = 0
local g = 0
local h = 0
local speen = true
coroutine.wrap(function()
while speen do
f = f + 2
g = g + 3
h = h + 1
dice.CFrame = dice.CFrame:lerp(CFrame.new(mark.Position)*CFrame.new(5 * math.sin(sine/11),8 * math.sin(sine/13),4 * math.sin(sine/16)) * CFrame.Angles(math.rad(f),math.rad(g),math.rad(h)),.1)
swait()
end
end)()
wait(.5)
for i = 1, 20 do
cy.Size = cy.Size - Vector3.new(0,.85,.85)
swait()
end
cy:Remove()
dice.Size = Vector3.new(11,11,11)
for i = 1, 4 do
local wh2 = Instance.new("Part",Torso)
wh2.Size = dice.Size
wh2.Anchored = false
wh2.CanCollide = false
wh2.Material = "Neon"
wh2.BrickColor = BrickColor.new("White")
wh2.Transparency = 1
local whw2 = weldBetween(wh2,dice)
for i = 1, 80 do
wh2.Transparency = wh2.Transparency - .0125
swait()
end
local mk = Instance.new("Part",Torso)
mk.Anchored = true
mk.CanCollide = false
mk.Size = Vector3.new(1,1,1)
mk.CFrame = dice.CFrame
mk.Transparency = 1
removeuseless:AddItem(mk,6)
local xplo = Instance.new("Sound",mk)
xplo.SoundId = "rbxassetid://2743212628"
xplo.Volume = 10
xplo:Play()
dicemesh.Scale = dicemesh.Scale - Vector3.new(1,1,1)
dice.Size = dice.Size - Vector3.new(2.75,2.75,2.75)
whw2:Remove()
wh2.Anchored = true
wh.Size = wh.Size - Vector3.new(2.5,2.5,2.5)
for i = 1, 20 do
local bm = Instance.new("Part",Torso)
bm.Anchored = true
bm.CanCollide = false
bm.CFrame = dice.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
bm.Material = "Neon"
bm.Shape = "Cylinder"
bm.BrickColor = BrickColor.new("White")
bm.Size = Vector3.new(5000000,4,4)
local hitt = false
bm.Touched:connect(function(hit)
if hitt then return end
if hit.Parent:FindFirstChildOfClass("Humanoid") then
hitt = true
if secondform then
hit.Parent:BreakJoints()
else
hit.Parent:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(32,47))
end
if secondform then
coroutine.wrap(function()
if tauntdebounce then return end
tauntdebounce = true
rdnm2 = p1[math.random(1,#p1)]
tauntsound = Instance.new("Sound", Head)
tauntsound.Volume = 10
tauntsound.SoundId = "http://www.roblox.com/asset/?id="..rdnm2
tauntsound.Looped = false
tauntsound:Play()
wait(3)
wait(tauntsound.TimeLength)
tauntsound:Remove()
wait(1)
tauntdebounce = false
end)()
end
end
end)
coroutine.wrap(function()
for i = 1, 20 do
bm.Transparency = bm.Transparency + .05
swait()
end
bm:Remove()
end)()
end
for i = 1, 40 do
wh2.Size = wh2.Size + Vector3.new(1,1,1)
wh2.Transparency = wh2.Transparency + .025
swait()
end
wh2:Remove()
swait()
end
mark:Remove()
dice:Remove()
wh:Remove()
end)() 
for i = 1, 7 do
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-88 + 2 * math.sin(sine/12)),math.rad(76 - 1 * math.sin(sine/12)),math.rad(0)), 0.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(.95,1.7,0) * CFrame.Angles(math.rad(2),math.rad(5),math.rad(208)), 0.4)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)),.4)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.4, 2 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(-5), math.rad(30 + 0 * math.sin(sine/12)), math.rad(-5 - .1 * math.sin(sine/12))), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.55, 2.0 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(5), math.rad(-20 + 0 * math.sin(sine/12)), math.rad(5 + .1 * math.sin(sine/12))), 0.4)
swait()
end
for i = 1, 30 do
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-88 + 2 * math.sin(sine/12)),math.rad(76 - 1 * math.sin(sine/12)),math.rad(0)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(1.3,1.4,0) * CFrame.Angles(math.rad(2),math.rad(5),math.rad(188)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)),.2)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.4, 2 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(-5), math.rad(30 + 0 * math.sin(sine/12)), math.rad(-5 - .1 * math.sin(sine/12))), 0.2)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.55, 2.0 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(5), math.rad(-20 + 0 * math.sin(sine/12)), math.rad(5 + .1 * math.sin(sine/12))), 0.2)
swait()
end
attacking = false
debounce = false
ws = 32
end
elseif Press=='t' then
if tauntdebounce == true then return end
tauntdebounce = true
if secondform then
rdnm2 = p2[math.random(1,#p2)]
tauntsound = Instance.new("Sound", Head)
tauntsound.Volume = 10
tauntsound.SoundId = "http://www.roblox.com/asset/?id="..rdnm2
tauntsound.Looped = false
tauntsound:Play()
else
rdnm2 = soundtable[math.random(1,#soundtable)]
tauntsound = Instance.new("Sound", Head)
tauntsound.Volume = 10
tauntsound.SoundId = "http://www.roblox.com/asset/?id="..rdnm2
tauntsound.Looped = false
tauntsound:Play()
end
wait(3)
wait(tauntsound.TimeLength)
tauntsound:Remove()
wait(1)
tauntdebounce = false
elseif Press=='y' then
if mouse.Target ~= nil then
if mouse.Target.Parent ~= Character and mouse.Target.Parent.Parent ~= Character and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil and mouse.Target.Parent:FindFirstChildOfClass("Humanoid").Health > 0 then
local enemyhum = mouse.Target.Parent:FindFirstChildOfClass("Humanoid")
if debounce then return end
debounce = true
attacking = true
enemyhum.WalkSpeed = 0
tps = Instance.new("Sound", Torso)
tps.Volume = 10
tps.SoundId = "rbxassetid://2610939724"
tps:Play()
removeuseless:AddItem(tps,4)
ws = 0
local fakemask = Instance.new("Part",Character)
fakemask.Size = Vector3.new(1,1,1)
fakemask.CFrame = mask.CFrame
fakemask.Material = "Neon"
fakemask.CanCollide = false
fakemask.Anchored = true
fakemask.BrickColor = BrickColor.new("Really black")
fakemask.Transparency = .5
local mfMask = Instance.new("SpecialMesh", fakemask)
mfMask.MeshType = "FileMesh"
mfMask.Scale = Vector3.new(1.25,1.25,1.25)
mfMask.MeshId = "rbxassetid://12470186"
local fakefedora = Instance.new("Part",Character)
fakefedora.Size = Vector3.new(2,2,2)
fakefedora.CFrame = fedora.CFrame
fakefedora.CanCollide = false
fakefedora.Transparency = .5
fakefedora.Anchored = true
fakefedora.BrickColor = BrickColor.new("Really black")
local fakefedoram = Instance.new("SpecialMesh", fakefedora)
fakefedoram.MeshType = "FileMesh"
fakefedoram.Scale = Vector3.new(1.1, 1.1, 1.1)
fakefedoram.MeshId = "rbxassetid://11144636"
local fakehead = Instance.new("Part",Character)
fakehead.Size = Vector3.new(1.01,1.01,1.01)
fakehead.Anchored = true
fakehead.CanCollide = false
fakehead.Transparency = .5
fakehead.BrickColor = BrickColor.new("Really black")
fakehead.Material = "Neon"
fakehead.CFrame = Head.CFrame
local fakeheadmesh = Instance.new("SpecialMesh",fakehead)
fakeheadmesh.MeshType = "Head"
fakeheadmesh.Scale = Vector3.new(1.255,1.255,1.255)
local fakelarm = Instance.new("Part",Character)
fakelarm.CFrame = LeftArm.CFrame
fakelarm.Size = Vector3.new(1,2,1)
fakelarm.CanCollide = false
fakelarm.BrickColor = BrickColor.new("Really black")
fakelarm.Transparency = .5
fakelarm.Material = "Neon"
fakelarm.Anchored = true
local fakerarm = Instance.new("Part",Character)
fakerarm.CFrame = RightArm.CFrame
fakerarm.Size = Vector3.new(1,2,1)
fakerarm.Transparency = .5
fakerarm.BrickColor = BrickColor.new("Really black")
fakerarm.CanCollide = false
fakerarm.Material = "Neon"
fakerarm.Anchored = true
local fakelleg = Instance.new("Part",Character)
fakelleg.CFrame = LeftLeg.CFrame
fakelleg.Size = Vector3.new(1,2,1)
fakelleg.BrickColor = BrickColor.new("Really black")
fakelleg.Transparency = .5
fakelleg.CanCollide = false
fakelleg.Material = "Neon"
fakelleg.Anchored = true
local fakerleg = Instance.new("Part",Character)
fakerleg.CFrame = RightLeg.CFrame
fakerleg.Size = Vector3.new(1,2,1)
fakerleg.Transparency = .5
fakerleg.BrickColor = BrickColor.new("Really black")
fakerleg.CanCollide = false
fakerleg.Material = "Neon"
fakerleg.Anchored = true
local fakeTorso = Instance.new("Part",Character)
fakeTorso.CFrame = Torso.CFrame
fakeTorso.Size = Vector3.new(2,2,1)
fakeTorso.Transparency = .5
fakeTorso.CanCollide = false
fakeTorso.BrickColor = BrickColor.new("Really black")
fakeTorso.Material = "Neon"
fakeTorso.Anchored = true
coroutine.wrap(function()
for i = 1, 80 do
fakemask.Transparency = fakemask.Transparency + .0125
fakefedora.Transparency = fakefedora.Transparency + .0125
fakehead.Transparency = fakehead.Transparency + .0125
fakelarm.Transparency = fakelarm.Transparency + .0125
fakerarm.Transparency = fakerarm.Transparency + .0125
fakelleg.Transparency = fakelleg.Transparency + .0125
fakerleg.Transparency = fakerleg.Transparency + .0125
fakeTorso.Transparency = fakeTorso.Transparency + .0125
swait()
end
fakemask:Remove()
fakefedora:Remove()
fakehead:Remove()
fakelarm:Remove()
fakerarm:Remove()
fakelleg:Remove()
fakerleg:Remove()
fakeTorso:Remove()
end)()
Root.CFrame = enemyhum.Parent.Torso.CFrame * CFrame.new(0,0,3.9)
local hitbox = Instance.new("Part",Torso)
hitbox.Size = Vector3.new(1,1,1)
hitbox.Anchored = true
hitbox.Transparency = 1
hitbox.CanCollide = false
hitbox.CFrame = RightLeg.CFrame * CFrame.new(0,-.9,0)
for i = 1, 50 do
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-88 + 2 * math.sin(sine/12)),math.rad(76 - 1 * math.sin(sine/12)),math.rad(0)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.7,-.2,.33) * CFrame.Angles(math.rad(-80 + 2 * math.sin(sine/12)),math.rad(-94 + 1 * math.sin(sine/12)),math.rad(0)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)),.2)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.4, 2 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(-5), math.rad(30 + 0 * math.sin(sine/12)), math.rad(-5 - .1 * math.sin(sine/12))), 0.2)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.55, 2.0 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(5), math.rad(-20 + 0 * math.sin(sine/12)), math.rad(5 + .1 * math.sin(sine/12))), 0.2)
swait()
end
RightLeg.CanCollide = false
LeftLeg.CanCollide = false
for i = 1, 7 do
hitbox.CFrame = RightLeg.CFrame * CFrame.new(0,-.9,0)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.8, 1.7, -.1) * CFrame.Angles(math.rad(-0), math.rad(7), math.rad(72)), 0.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5, .3, -.2) * CFrame.Angles(math.rad(12), math.rad(-0), math.rad(-12)), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1, .5) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.4)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.4, 0) * CFrame.Angles(math.rad(72), math.rad(90), math.rad(0)), 0.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.161, 2.1, 0) * CFrame.Angles(math.rad(0), math.rad(5), math.rad(-18)), 0.4)
swait()
end
Hit = damagealll(3,hitbox.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
slachtoffer = v:FindFirstChildOfClass("Humanoid")
if secondform then
slachtoffer.Parent:BreakJoints()
else
slachtoffer:TakeDamage(math.random(35,42))
end
if secondform then
coroutine.wrap(function()
if tauntdebounce then return end
tauntdebounce = true
rdnm2 = p1[math.random(1,#p1)]
tauntsound = Instance.new("Sound", Head)
tauntsound.Volume = 10
tauntsound.SoundId = "http://www.roblox.com/asset/?id="..rdnm2
tauntsound.Looped = false
tauntsound:Play()
wait(3)
wait(tauntsound.TimeLength)
tauntsound:Remove()
wait(1)
tauntdebounce = false
end)()
end
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
local c = Instance.new("Sound",torso)
c.SoundId = "rbxassetid://2053414752"
c.Volume = 10
c:Play()
removeuseless:AddItem(c,6)
vel.velocity = CFrame.new(hitbox.Position,torso.Position).lookVector*300
removeuseless:AddItem(vel,.1)
end
end
enemyhum.WalkSpeed = 16
for i = 1, 7 do
hitbox.CFrame = RightLeg.CFrame * CFrame.new(0,-.9,0)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.8, 1.7, -.1) * CFrame.Angles(math.rad(-0), math.rad(7), math.rad(72)), 0.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5, .3, -.2) * CFrame.Angles(math.rad(12), math.rad(-0), math.rad(-12)), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1, .5) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.4)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.4, 0) * CFrame.Angles(math.rad(72), math.rad(90), math.rad(0)), 0.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.161, 2.1, 0) * CFrame.Angles(math.rad(0), math.rad(5), math.rad(-18)), 0.4)
swait()
end
for i = 1, 100 do
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.5, 1.76, -.1) * CFrame.Angles(math.rad(-0), math.rad(7), math.rad(90)), 0.02)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5, .3, -.2) * CFrame.Angles(math.rad(12), math.rad(-0), math.rad(-12)), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1, .5) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.4)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.7, -.3) * CFrame.Angles(math.rad(72), math.rad(90), math.rad(0)), 0.02)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.161, 2.1, 0) * CFrame.Angles(math.rad(0), math.rad(5), math.rad(-18)), 0.4)
swait()
end
SOUND(Torso,147722227,10,false,4)
for i = 1, 15 do
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.94 + .02 * math.sin(sine/12),-0) * CFrame.Angles(math.rad(28 + 5 * math.sin(sine/12)),math.rad(0),math.rad(45)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(1.1, 1.7, 0) * CFrame.Angles(math.rad(0), math.rad(-0), math.rad(-160)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.36, 0) * CFrame.Angles(math.rad(180), math.rad(180), math.rad(20)), 0.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.2)
swait()
end
for i = 1, 18 do
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.94 + .02 * math.sin(sine/12),-0) * CFrame.Angles(math.rad(28 + 5 * math.sin(sine/12)),math.rad(0),math.rad(45)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.94 + .02 * math.sin(sine/12),-0) * CFrame.Angles(math.rad(28 + 5 * math.sin(sine/12)),math.rad(0),math.rad(-45)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 2, 0) * CFrame.Angles(math.rad(223), math.rad(96), math.rad(21)), 0.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.2)
swait()
end
for i = 1, 40 do
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4, 1, 0.501) * CFrame.Angles(math.rad(-80), math.rad(-40), math.rad(2)), .2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5, 0, .3) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), .2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-80), math.rad(7), math.rad(0)), .2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.2, .8) * CFrame.Angles(math.rad(-80), math.rad(10), math.rad(0)), .2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 1.9, -.34) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(10)), .2)
swait()
end
attacking = false
debounce = false
ws = 32
end
end
elseif Press=='l' then
if debounce then return end
debounce = true
attacking = true
ws = 0 
coroutine.wrap(function()----lol
local bb = 0
local ua = Instance.new("Sound",Torso)
ua.SoundId = "rbxassetid://3214519794"
ua.Volume = 10
ua:Play()
invisible = true
for i = 1, 20 do
	doomtheme.Volume = doomtheme.Volume - .5
	swait()
end
local en = Instance.new("Part",Torso)
en.Size = Vector3.new(140,140,140)
en.BrickColor = BrickColor.new("White")
en.Material = "Neon"
en.Shape = "Ball"
en.Anchored = true
en.Transparency = 1
en.CanCollide = false
en.CFrame = Torso.CFrame
for i = 1, 100 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,4,0) * CFrame.Angles(math.rad(-30),math.rad(0),math.rad(0)),.05)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.2,1,.5) * CFrame.Angles(math.rad(-125),math.rad(25),math.rad(0)), 0.05)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.2,1,.5) * CFrame.Angles(math.rad(-125),math.rad(-25),math.rad(0)), 0.05)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1., .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.05)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.05)
swait()
end
for i = 1, 100 do
en.CFrame = Torso.CFrame
en.Size = en.Size - Vector3.new(1.3,1.3,1.3)
en.Transparency = en.Transparency - .025
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,4,0) * CFrame.Angles(math.rad(-30),math.rad(0),math.rad(0)),.25)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.2,1,.5) * CFrame.Angles(math.rad(-125),math.rad(25),math.rad(0)), 0.25)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.2,1,.5) * CFrame.Angles(math.rad(-125),math.rad(-25),math.rad(0)), 0.25)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1., .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.25)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.25)
swait()
end
en.Transparency = 0
wait(2)
coroutine.wrap(function()
local m = Instance.new("Part",Torso)
m.Size = Vector3.new(10,10,10)
m.Material = "Neon"
m.BrickColor = BrickColor.new("White")
m.Anchored = true
m.Transparency = 1
m.Name = "mo"
m.CanCollide = false
m.CFrame = Torso.CFrame
local m2 = m:Clone()
m2.Parent = Torso
m2.Size = Vector3.new(25,25,25)
local m3 = m:Clone()
m3.Parent = Torso
m3.Size = Vector3.new(50,50,50)
local m4 = m:Clone()
m4.Parent = Torso
m4.Size = Vector3.new(75,75,75)
local m5 = m:Clone()
m5.Parent = Torso
m5.Size = Vector3.new(100,100,100)
local m6 = m:Clone()
m6.Parent = Torso
m6.Size = Vector3.new(150,150,150)
local m7 = m:Clone()
m7.Parent = Torso
m7.Size = Vector3.new(200,200,200)
local m8 = m:Clone()
m8.Size = Vector3.new(300,300,300)
m8.Parent = Torso
local m9 = m:Clone()
m9.Size = Vector3.new(425,425,425)
m9.Parent = Torso
local m10 = m:Clone()
m10.Size = Vector3.new(725,725,725)
m10.Parent = Torso
local m11 = m:Clone()
m11.Size = Vector3.new(1025,1025,1025)
m11.Parent = Torso
coroutine.wrap(function()
for i = 1, 100 do
m11.Transparency = m.Transparency - .002
swait()
end
end)()
coroutine.wrap(function()
for i = 1, 100 do
m10.Transparency = m.Transparency - .002
swait()
end
end)()
coroutine.wrap(function()
for i = 1, 100 do
m.Transparency = m.Transparency - .005
swait()
end
end)()
wait(.1)
coroutine.wrap(function()
for i = 1, 100 do
m2.Transparency = m2.Transparency - .0045
swait()
end
end)()
wait(.1)
coroutine.wrap(function()
for i = 1, 100 do
m3.Transparency = m3.Transparency - .004
swait()
end
end)()
wait(.1)
coroutine.wrap(function()
for i = 1, 100 do
m4.Transparency = m4.Transparency - .0035
swait()
end
end)()
wait(.1)
coroutine.wrap(function()
for i = 1, 100 do
m5.Transparency = m5.Transparency - .003
swait()
end
end)()
wait(.1)
coroutine.wrap(function()
for i = 1, 100 do
m6.Transparency = m6.Transparency - .0025
swait()
end
end)()
wait(.1)
coroutine.wrap(function()
for i = 1, 100 do
m7.Transparency = m7.Transparency - .002
swait()
end
end)()
wait(.1)
coroutine.wrap(function()
for i = 1, 100 do
m8.Transparency = m8.Transparency - .002
swait()
end
end)()
wait(.1)
coroutine.wrap(function()
for i = 1, 100 do
m9.Transparency = m9.Transparency - .002
swait()
end
end)()
wait(.1)
end)()
coroutine.wrap(function()
for i = 1, 50 do
en.CFrame = Torso.CFrame
en.Size = en.Size + Vector3.new(8,8,8)
en.Transparency = en.Transparency + .025
swait()
end
en:Remove()
end)()
for i = 1, 30 do
coroutine.wrap(function()
local sk = Instance.new("Part",Torso)
sk.CanCollide = false
sk.Anchored = true
sk.BrickColor = BrickColor.new("White")
sk.Name = "sk"
sk.Transparency = 1
sk.CFrame = Root.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
local skmesh = Instance.new("SpecialMesh",sk)
skmesh.MeshId = "rbxassetid://662586858"
skmesh.Name = "wave"
skmesh.Scale = Vector3.new(math.random(.7,3),.005,math.random(.7,3))
for i = 1, 30 do
sk.Transparency = sk.Transparency - .0125
swait()
end
sk:Remove()
end)()
end
for i = 1, 400 do
	coroutine.wrap(function()
Hit = damagealll(1000,Root.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
slachtoffer = v:FindFirstChildOfClass("Humanoid")
if secondform then
slachtoffer.Parent:BreakJoints()
else
slachtoffer:TakeDamage(math.random(5,10))
end
end
end
local shockwave = Instance.new("Part", Torso)
shockwave.Size = Vector3.new(1,1,1)
shockwave.CanCollide = false
shockwave.Anchored = true
shockwave.Transparency = 0
shockwave.BrickColor = BrickColor.new("White")
shockwave.CFrame = CFrame.new(Root.Position) * CFrame.new(0,-1.75,0)
local shockwavemesh = Instance.new("SpecialMesh", shockwave)
shockwavemesh.Scale = Vector3.new(4,.7,4)
shockwavemesh.MeshId = "rbxassetid://20329976"
local shockwave2 = Instance.new("Part", Torso)
shockwave2.Size = Vector3.new(1,1,1)
shockwave2.CanCollide = false
shockwave2.Anchored = true
shockwave2.Transparency = 0
shockwave2.BrickColor = BrickColor.new("White")
shockwave2.CFrame = CFrame.new(Root.Position) * CFrame.new(0,-1.6,0)
local shockwavemesh2 = Instance.new("SpecialMesh", shockwave2)
shockwavemesh2.Scale = Vector3.new(4,.7,4)
shockwavemesh2.MeshId = "rbxassetid://20329976"
for i = 1, 30 do
shockwave.CFrame = shockwave.CFrame * CFrame.Angles(math.rad(0),math.rad(0+math.random(8,15)),0)
shockwave2.CFrame = shockwave2.CFrame * CFrame.Angles(math.rad(0),math.rad(0-math.random(4,8)),0)
shockwave.Transparency = shockwave.Transparency + 0.035
shockwave2.Transparency = shockwave2.Transparency + 0.035
shockwavemesh2.Scale = shockwavemesh2.Scale + Vector3.new(15,5,15)
shockwavemesh.Scale = shockwavemesh.Scale + Vector3.new(10,6,10)
swait()
end
shockwave:Remove()
shockwave2:Remove()
end)()
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.305,2.035,.4) * CFrame.Angles(math.rad(17),math.rad(9),math.rad(-12)),.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(.305, 2.035, .4) * CFrame.Angles(math.rad(17),math.rad(-9),math.rad(12)),.2)
ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,2,0) * CFrame.Angles(math.rad(30),0,0),.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:Lerp(CFrame.new(-1.65,1,0) * CFrame.Angles(math.rad(10),math.rad(8),math.rad(-45)),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:Lerp(CFrame.new(1.65,1,0)* CFrame.Angles(math.rad(10),math.rad(-8),math.rad(45)),.2)
coroutine.wrap(function()
local deadlyring = Instance.new("Part", Torso)
deadlyring.Size = Vector3.new(5, 5, 5)
deadlyring.Transparency = .5
deadlyring.BrickColor = BrickColor.new("White")
deadlyring.Anchored = true
deadlyring.CanCollide = false
deadlyring.CFrame = Torso.CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(math.random(-180,180)), math.rad(math.random(-180,180)), math.rad(math.random(-180,180)))
local deadlyringh = Instance.new("SpecialMesh", deadlyring) 
deadlyringh.MeshId = "http://www.roblox.com/asset/?id=3270017" 
deadlyringh.Scale = Vector3.new(1, 1, .1)
for i = 1, 60 do
deadlyringh.Scale = deadlyringh.Scale + Vector3.new(20.25,20.25,0)
deadlyring.Transparency = deadlyring.Transparency + .025
swait()
end
deadlyring:Remove()
end)()
coroutine.wrap(function()
local deadlyring = Instance.new("Part", Torso)
deadlyring.Size = Vector3.new(5, 5, 5)
deadlyring.Transparency = .5
deadlyring.BrickColor = BrickColor.new("White")
deadlyring.Anchored = true
deadlyring.CanCollide = false
deadlyring.CFrame = Torso.CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(math.random(-180,180)), math.rad(math.random(-180,180)), math.rad(math.random(-180,180)))
local deadlyringh = Instance.new("SpecialMesh", deadlyring) 
deadlyringh.MeshId = "http://www.roblox.com/asset/?id=3270017" 
deadlyringh.Scale = Vector3.new(1, 1, .1)
for i = 1, 60 do
deadlyringh.Scale = deadlyringh.Scale + Vector3.new(40.25,40.25,0)
deadlyring.Transparency = deadlyring.Transparency + .025
swait()
end
deadlyring:Remove()
end)()
coroutine.wrap(function()
local deadlyring = Instance.new("Part", Torso)
deadlyring.Size = Vector3.new(5, 5, 5)
deadlyring.Transparency = .5
deadlyring.BrickColor = BrickColor.new("White")
deadlyring.Anchored = true
deadlyring.CanCollide = false
deadlyring.CFrame = Torso.CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(math.random(-180,180)), math.rad(math.random(-180,180)), math.rad(math.random(-180,180)))
local deadlyringh = Instance.new("SpecialMesh", deadlyring) 
deadlyringh.MeshId = "http://www.roblox.com/asset/?id=3270017" 
deadlyringh.Scale = Vector3.new(1, 1, .1)
for i = 1, 60 do
deadlyringh.Scale = deadlyringh.Scale + Vector3.new(80.25,80.25,0)
deadlyring.Transparency = deadlyring.Transparency + .025
swait()
end
deadlyring:Remove()
end)()
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "sk" then
v.CFrame = v.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
end
end
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "mo" then
v.CFrame = v.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
end
end
swait()
end
debounce = false
attacking = false
invisible = false
for i = 1, 50 do
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "sk" then
v.Transparency = v.Transparency + .05
end
end
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "mo" then
v.Transparency = v.Transparency + .05
end
end
swait()
end
end)()
elseif Press=='k' then
if mouse.Target ~= nil and mouse.Target.Parent ~= Character and mouse.Target.Parent.Parent ~= Character and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
local enemyhum = mouse.Target.Parent:FindFirstChildOfClass("Humanoid")
if enemyhum.Health < 1 then return end
local ETorso = enemyhum.Parent:FindFirstChild("Torso") or enemyhum.Parent:FindFirstChild("LowerTorso")
if debounce then return end
debounce = true
attacking = true
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
for i = 1, 20 do
g1.CFrame = CFrame.new(Root.Position,ETorso.Position)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)),.2)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.4, 2 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(-5), math.rad(30 + 0 * math.sin(sine/12)), math.rad(-5 - .1 * math.sin(sine/12))), 0.2)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.55, 2.0 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(5), math.rad(-20 + 0 * math.sin(sine/12)), math.rad(5 + .1 * math.sin(sine/12))), 0.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-88 + 2 * math.sin(sine/12)),math.rad(76 - 1 * math.sin(sine/12)),math.rad(0)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(0)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3,0,.2) * CFrame.Angles(math.rad(30),math.rad(30),0),.2)
swait()
end
local dice = Instance.new("Part",Torso)
dice.CanCollide = false
dice.CFrame = Root.CFrame * CFrame.new(2,0,-3.6) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
dice.Anchored = true
dice.Transparency = 0
dice.Size = Vector3.new(.8,.8,.8)
dicemesh = Instance.new("SpecialMesh",dice)
dicemesh.MeshId = "rbxassetid://95358536"
dicemesh.TextureId = "rbxassetid://100025876"
dicemesh.Scale = Vector3.new(.42,.42,.42)
local sh = Instance.new("Part",Torso)
sh.Size = Vector3.new(1.1,1.1,1.1)
sh.Anchored = true
sh.Transparency = 1
sh.CanCollide = false
sh.BrickColor = BrickColor.new("Really white")
sh.Material = "Neon"
sh.CFrame = dice.CFrame
local a = math.random(1,3)
local b = math.random(3,5)
local c = math.random(-180,180)
for i = 1, 20 do
dice.CFrame = dice.CFrame:lerp(Root.CFrame * CFrame.new(a,b,-5) * CFrame.Angles(math.rad(c),math.rad(c),math.rad(c)),.2)
sh.CFrame = dice.CFrame
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3,1,.35) * CFrame.Angles(math.rad(-110),math.rad(22),math.rad(-1)),.2)
swait()
end
coroutine.wrap(function()
local sof = Instance.new("Sound",dice)
sof.SoundId = "rbxassetid://149649902"
sof.Volume = 8
sof:Play()
for i = 1, 40 do
dice.CFrame = dice.CFrame:lerp(Root.CFrame * CFrame.new(a,b,-5) * CFrame.Angles(math.rad(c),math.rad(c),math.rad(c)),.2)
sh.Transparency = sh.Transparency - .025
swait()
end
local sof2 = Instance.new("Sound",dice)
sof2.SoundId = "rbxassetid://224339201"
sof2.Volume = 8
sof2:Play()
local sof3 = Instance.new("Sound",dice)
sof3.SoundId = "rbxassetid://165796875"
sof3.Volume = 6
sof3:Play()
sof3.Looped = true
MAKETRAIL(dice,Vector3.new(.2,.2,0),Vector3.new(-.2,-.2,0),.7,ColorSequence.new(BrickColor.new("White").Color,BrickColor.new("Really black").Color))
local zb = Instance.new("Part",Torso)
zb.Size = Vector3.new(.5,.5,.5)
zb.Anchored = false
zb.CanCollide = false
zb.CFrame = dice.CFrame
local bov = Instance.new("RocketPropulsion",zb)
bov.MaxThrust = 4000
bov.MaxSpeed = 1000
bov.MaxTorque = Vector3.new(99999999,99999999,99999999)
bov.Target = ETorso
bov.TargetRadius = math.huge
bov:fire()
coroutine.wrap(function()
for i = 1, 200 do
Hit = damagealll(12,dice.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
slachtoffer = v:FindFirstChildOfClass("Humanoid")
if slachtoffer == enemyhum then
if secondform then
slachtoffer.Parent:BreakJoints()
else
slachtoffer:TakeDamage(math.random(1,2))
end
end
if secondform then
coroutine.wrap(function()
if tauntdebounce then return end
tauntdebounce = true
rdnm2 = p1[math.random(1,#p1)]
tauntsound = Instance.new("Sound", Head)
tauntsound.Volume = 10
tauntsound.SoundId = "http://www.roblox.com/asset/?id="..rdnm2
tauntsound.Looped = false
tauntsound:Play()
wait(3)
wait(tauntsound.TimeLength)
tauntsound:Remove()
wait(1)
tauntdebounce = false
end)()
end
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(dice.Position,torso.Position).lookVector*15
removeuseless:AddItem(vel,.1)
end
end
local pi = Instance.new("Part",Torso)
pi.Anchored = true
pi.CanCollide = false
pi.Size = Vector3.new(1,1,1)
pi.CFrame = zb.CFrame * CFrame.new(math.random(-7,7),math.random(-7,7),math.random(-7,7))
dice.CFrame = pi.CFrame
pi:Remove()
swait()
end
sof3:Remove()
bov:Remove()
zb:Remove()
dice.Anchored = false
dice.CanCollide = true
coroutine.wrap(function()
wait(6)
for i = 1, 20 do
dice.Transparency = dice.Transparency + .05
swait()
end
dice:Remove()
end)()
end)()
for i = 1, 20 do
sh.Size = sh.Size + Vector3.new(.5,.5,.5)
sh.Transparency = sh.Transparency + .05
swait()
end
sh:Remove()
end)()
removeuseless:AddItem(g1,.001)
attacking = false
debounce = false
end
elseif Press=='e' then
if debounce then return end
debounce = true
attacking = true
ws = 10
local g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 4000
g1.MaxTorque = Vector3.new(0,9000000,0)
local bwoo = Instance.new("Sound",Torso)
bwoo.SoundId = "rbxassetid://134012322"
bwoo.Volume = 10
bwoo.Pitch = .85
bwoo:Play()
removeuseless:AddItem(bwoo,8)
for i = 1, 22 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.94 + .02 * math.sin(sine/12),-0) * CFrame.Angles(math.rad(28 + 5 * math.sin(sine/12)),math.rad(0),math.rad(45)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.94 + .02 * math.sin(sine/12),-0) * CFrame.Angles(math.rad(28 + 5 * math.sin(sine/12)),math.rad(0),math.rad(-45)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 1.2 + .0 * math.sin(sine/12), .7) * CFrame.Angles(math.rad(9 + 0 * math.cos(sine/12)), math.rad(0), math.rad(0)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2 + 0 * math.sin(sine/12), 0.2 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 0 * math.sin(sine/12)), math.rad(20), math.rad(0)), 0.2)
swait()
end
local rocksm = Instance.new("Sound",Torso)
rocksm.SoundId = "rbxassetid://168514932"
rocksm.Volume = 10
rocksm.Pitch = .94
rocksm:Play()
removeuseless:AddItem(rocksm,8)
coroutine.wrap(function()
ws = 0
for i = 1, 22 do
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5, .15, 0) * CFrame.Angles(math.rad(-10), math.rad(2), math.rad(10)), 0.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5, .15, 0) * CFrame.Angles(math.rad(-10), math.rad(-2), math.rad(-10)), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2 + 0 * math.sin(sine/12), 0.2 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 0 * math.sin(sine/12)), math.rad(0), math.rad(0)), 0.4)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.7, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), 0.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 1.4 + 0 * math.sin(sine/12), .5) * CFrame.Angles(math.rad(-9 + 0 * math.cos(sine/12)), math.rad(0), math.rad(0)), 0.4)
swait()
end
end)()
local p = Instance.new("Part",Torso)
p.Size = Vector3.new(1,1,1)
p.Anchored = true
p.CanCollide = false
p.Transparency = 1
p.CFrame = Root.CFrame * CFrame.new(0,0,-4)
local so = Instance.new("Sound",p)
so.Volume = 10
so.SoundId = "rbxassetid://2017948224"
so:Play()
local x = 0
local z = 0
local c = 0
for i = 1, 30 do
x = x + 2
c = c - 1.2
z = z + 10
Hit = damagealll(5 + x,p.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
slachtoffer = v:FindFirstChildOfClass("Humanoid")
if secondform then
slachtoffer.Parent:BreakJoints()
else
slachtoffer:TakeDamage(math.random(39,62))
end
if secondform then
coroutine.wrap(function()
if tauntdebounce then return end
tauntdebounce = true
rdnm2 = p1[math.random(1,#p1)]
tauntsound = Instance.new("Sound", Head)
tauntsound.Volume = 10
tauntsound.SoundId = "http://www.roblox.com/asset/?id="..rdnm2
tauntsound.Looped = false
tauntsound:Play()
wait(3)
wait(tauntsound.TimeLength)
tauntsound:Remove()
wait(1)
tauntdebounce = false
end)()
end
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(p.Position,torso.Position).lookVector*125
removeuseless:AddItem(vel,.1)
end
end
local gr = Instance.new("Part",Torso)
gr.CFrame = p.CFrame * CFrame.Angles(math.rad(math.random(-15,15)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15)))
gr.Anchored = true
gr.Material = "Grass"
gr.BrickColor = BrickColor.new("Bright green")
gr.Size = Vector3.new(x,z,x)
gr.CanCollide = true
p.CFrame = p.CFrame * CFrame.new(0,0,-2 + c)
local gr2 = Instance.new("Part",Torso)
gr2.CFrame = p.CFrame * CFrame.Angles(math.rad(math.random(-76,76)),math.rad(math.random(-76,76)),math.rad(math.random(-76,76)))
gr2.Anchored = true
gr2.Material = "Grass"
gr2.BrickColor = BrickColor.new("Bright green")
gr2.Size = Vector3.new(x/1,z,x/1)
gr2.CanCollide = true
coroutine.wrap(function()
wait(.5)
gr2.CanCollide = false
gr2.Anchored = false
for i = 1, 40 do
gr2.Transparency = gr2.Transparency + .025
swait()
end
gr2:Remove()
end)()
coroutine.wrap(function()
wait(.5)
for i = 1, 40 do
swait()
gr.CFrame = gr.CFrame * CFrame.new(0,-5,0)
gr.Transparency = gr.Transparency + .025
end
gr:Remove()
end)()
swait()
end
coroutine.wrap(function()
wait(.5)
for i = 1, 40 do
so.Volume = so.Volume - .025
swait()
end
p:Remove()
so:Remove()
end)()
ws = 32
removeuseless:AddItem(g1,.0001)
attacking = false
debounce = false
end
end)

function ray(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function ray2(StartPos, EndPos, Distance, Ignore)
local DIRECTION = CFrame.new(StartPos,EndPos).lookVector
return ray(StartPos, DIRECTION, Distance, Ignore)
end

checks1 = coroutine.wrap(function() -------Checks
while true do
hf = ray(Root.Position,(CFrame.new(Root.Position,Root.Position+Vector3.new(0,-1,0))).lookVector,4 * 1,Character)
if Root.Velocity.y > 1 and hf == nil then
position = "Jump"
elseif Root.Velocity.y < -1 and hf == nil then
position = "Falling"
elseif Root.Velocity.Magnitude < 5 and hf ~= nil then
position = "Idle"
elseif Root.Velocity.Magnitude > 5 and hf ~= nil then
position = "Walking"
else
end
wait()
end
end)
checks1()

OrgnC0 = Neck.C0
local movelimbs = coroutine.wrap(function()
while RunSrv.RenderStepped:wait() do
TrsoLV = Torso.CFrame.lookVector
Dist = nil
Diff = nil
if not MseGuide then
print("Failed to recognize")
else
local _, Point = Workspace:FindPartOnRay(Ray.new(Head.CFrame.p, mouse.Hit.lookVector), Workspace, false, true)
Dist = (Head.CFrame.p-Point).magnitude
Diff = Head.CFrame.Y-Point.Y
local _, Point2 = Workspace:FindPartOnRay(Ray.new(LeftArm.CFrame.p, mouse.Hit.lookVector), Workspace, false, true)
Dist2 = (LeftArm.CFrame.p-Point).magnitude
Diff2 = LeftArm.CFrame.Y-Point.Y
HEADLERP.C0 = CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
Neck.C0 = Neck.C0:lerp(OrgnC0*CFrame.Angles((math.tan(Diff/Dist)*1), 0, (((Head.CFrame.p-Point).Unit):Cross(Torso.CFrame.lookVector)).Y*1), .1)
end
end
end)
movelimbs()
immortal = {}
for i,v in pairs(Character:GetDescendants()) do
	if v:IsA("BasePart") and v.Name ~= "lmagic" and v.Name ~= "rmagic" then
		if v ~= Root and v ~= Torso and v ~= Head and v ~= RightArm and v ~= LeftArm and v ~= RightLeg and v.Name ~= "lmagic" and v.Name ~= "rmagic" and v ~= LeftLeg then
			v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
		end
		table.insert(immortal,{v,v.Parent,v.Material,v.Color,v.Transparency})
	elseif v:IsA("JointInstance") then
		table.insert(immortal,{v,v.Parent,nil,nil,nil})
	end
end
for e = 1, #immortal do
	if immortal[e] ~= nil then
		local STUFF = immortal[e]
		local PART = STUFF[1]
		local PARENT = STUFF[2]
		local MATERIAL = STUFF[3]
		local COLOR = STUFF[4]
		local TRANSPARENCY = STUFF[5]
if levitate then
		if PART.ClassName == "Part" and PART ~= Root and PART.Name ~= eyo1 and PART.Name ~= eyo2 and PART.Name ~= "lmagic" and PART.Name ~= "rmagic" then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		PART.AncestryChanged:connect(function()
			PART.Parent = PARENT
		end)
else
		if PART.ClassName == "Part" and PART ~= Root and PART.Name ~= "lmagic" and PART.Name ~= "rmagic" then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		PART.AncestryChanged:connect(function()
			PART.Parent = PARENT
		end)
end
	end
end
function immortality()
	for e = 1, #immortal do
		if immortal[e] ~= nil then
			local STUFF = immortal[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			if PART.ClassName == "Part" and PART == Root then
				PART.Material = MATERIAL
				PART.Color = COLOR
				PART.Transparency = TRANSPARENCY
			end
			if PART.Parent ~= PARENT then
				hum:Remove()
				PART.Parent = PARENT
				hum = Instance.new("Humanoid",Character)
if levitate then
eyo1:Remove()
eyo2:Remove()
end
                                hum.Name = "noneofurbusiness"
			end
		end
	end
end
coroutine.wrap(function()
while true do
hum:SetStateEnabled("Dead",false) hum:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
if hum.Health < .1 then
immortality()
end
wait()
end
end)()

local anims = coroutine.wrap(function()
while true do
settime = 0.05
sine = sine + change
if position == "Jump" and not attacking then
change = 1
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5, .15, 0) * CFrame.Angles(math.rad(10), math.rad(2), math.rad(10)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5, .15, 0) * CFrame.Angles(math.rad(-10), math.rad(-2), math.rad(-10)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.09)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.2)
elseif position == "Falling" and not attacking then
change = 1
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.09)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.94 + .02 * math.sin(sine/12),-0) * CFrame.Angles(math.rad(28 + 5 * math.sin(sine/12)),math.rad(0),math.rad(45)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.94 + .02 * math.sin(sine/12),-0) * CFrame.Angles(math.rad(28 + 5 * math.sin(sine/12)),math.rad(0),math.rad(-45)), 0.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 1.4 + .1 * math.sin(sine/12), .4) * CFrame.Angles(math.rad(9 + 2 * math.cos(sine/12)), math.rad(0), math.rad(0)), 0.25)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(20), math.rad(0)), 0.25)
elseif position == "Walking" and not attacking then
change = 1.4
walking = true
ws = 32
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3 - .3 * math.sin(sine/8),.45 +.45 * math.sin(sine/8),-.3 - .26*math.sin(sine/8)) * CFrame.Angles(math.rad(75*math.sin(sine/8)),math.rad(-30 + 40*math.sin(sine/8)),math.rad(-10, math.sin(-20 * math.sin(sine/4)))),.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3 - .3 * math.sin(sine/8),.45 -.45 * math.sin(sine/8),-.3 + .26*math.sin(sine/8)) * CFrame.Angles(math.rad(75*-math.sin(sine/8)),math.rad(30 + 40*math.sin(sine/8)),math.rad(10, math.sin(-20 * math.sin(sine/4)))),.3)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + 0.29*math.sin(sine/4), 0) * CFrame.Angles(math.rad(-15), math.rad(12 * -math.cos(sine/8)), math.rad(0) + Root.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/8))), 0.1)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.52, 1.62 - .54 * math.cos(sine/8)/2.8,.2 - .5 * math.sin(sine/8)) * CFrame.Angles(math.rad(20 - 60* math.sin(sine/8)), math.rad(9-16)*math.cos(sine/8), math.rad(0), math.cos(65 * math.cos(sine/8))), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.52, 1.62 + .54 * math.cos(sine/8)/2.8,.2 + .5 * math.sin(sine/8)) * CFrame.Angles(math.rad(20 + 60* math.sin(sine/8)), math.rad(-9+16)*math.cos(sine/8), math.rad(0), math.cos(65 * math.cos(sine/8))), 0.3)
elseif position == "Idle" and not attacking then
change = .5
spin = true
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-88 + 2 * math.sin(sine/12)),math.rad(76 - 1 * math.sin(sine/12)),math.rad(0)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.7,-.2,.33) * CFrame.Angles(math.rad(-80 + 2 * math.sin(sine/12)),math.rad(-94 + 1 * math.sin(sine/12)),math.rad(0)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)),.2)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.4, 2 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(-5), math.rad(30 + 0 * math.sin(sine/12)), math.rad(-5 - .1 * math.sin(sine/12))), 0.2)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.55, 2.0 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(5), math.rad(-20 + 0 * math.sin(sine/12)), math.rad(5 + .1 * math.sin(sine/12))), 0.2)
end
swait()
end
end)
anims()
warn("You rolled, death! Made by Supr14")