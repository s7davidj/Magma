function LoadLibrary(a)
    return loadstring(game:HttpGet("https://pastebin.com/raw/UfzKgS6T", true))()
end

loadstring(game:GetObjects("rbxassetid://4480871791")[1].Source)()

-----------------------------------------------
--DANCE TO THE BEAT, WAVE YOUR HANDS TOGETHER--
------------------------------------------------
--I wanted to make something like Heavy Dance.--
-- ~Sugarie									  --
------------------------------------------------

wait(1/60)
Effects = { }
local Player = game:service'Players'.localPlayer
local chara = workspace.CloneCharacter
local Humanoid = chara:FindFirstChildOfClass("Humanoid")
local Mouse = Player:GetMouse()
local LeftArm = chara["Left Arm"]
local RightArm = chara["Right Arm"]
local LeftLeg = chara["Left Leg"]
local RightLeg = chara["Right Leg"]
local Head = chara.Head
local Torso = chara.Torso
local Camera = game.Workspace.CurrentCamera
local RootPart = chara.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local attack = false
local Anim = 'Idle'
local attacktype = 1
local delays = false
local play = true
local targetted = nil
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local doe = 0
local Create = LoadLibrary("RbxUtility").Create
Humanoid.WalkSpeed = 2

Humanoid.Animator.Parent = nil
chara.Animate.Parent = nil

local newMotor = function(part0, part1, c0, c1)
	local w = Create('Motor'){
		Parent = part0,
		Part0 = part0,
		Part1 = part1,
		C0 = c0,
		C1 = c1,
	}
	return w
end

function clerp(a, b, t)
	return a:lerp(b, t)
end

RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
NeckCF = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)

local RW = newMotor(Torso, RightArm, CFrame.new(1.5, 0, 0), CFrame.new(0, 0, 0)) 
local LW = newMotor(Torso, LeftArm, CFrame.new(-1.5, 0, 0), CFrame.new(0, 0, 0))
local RH = newMotor(Torso, RightLeg, CFrame.new(.5, -2, 0), CFrame.new(0, 0, 0))
local LH = newMotor(Torso, LeftLeg, CFrame.new(-.5, -2, 0), CFrame.new(0, 0, 0))
RootJoint.C1 = CFrame.new(0, 0, 0)
RootJoint.C0 = CFrame.new(0, 0, 0)
Torso.Neck.C1 = CFrame.new(0, 0, 0)
Torso.Neck.C0 = CFrame.new(0, 1.5, 0)

local rarmc1 = RW.C1
local larmc1 = LW.C1
local rlegc1 = RH.C1
local llegc1 = LH.C1

local resetc1 = false

function PlayAnimationFromTable(table, speed, bool)
	RootJoint.C0 = clerp(RootJoint.C0, table[1], speed) 
	Torso.Neck.C0 = clerp(Torso.Neck.C0, table[2], speed) 
	RW.C0 = clerp(RW.C0, table[3], speed) 
	LW.C0 = clerp(LW.C0, table[4], speed) 
	RH.C0 = clerp(RH.C0, table[5], speed) 
	LH.C0 = clerp(LH.C0, table[6], speed) 
	if bool == true then
		if resetc1 == false then
			resetc1 = true
			RootJoint.C1 = RootJoint.C1
			Torso.Neck.C1 = Torso.Neck.C1
			RW.C1 = rarmc1
			LW.C1 = larmc1
			RH.C1 = rlegc1
			LH.C1 = llegc1
		end
	end
end

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.03333333333333
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
    ArtificialHB.Event:wait()
  else
    for i = 0, num do
      ArtificialHB.Event:wait()
    end
  end
end

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end

sndid = "rbxassetid://176322684"
sndpi = .7
saun = Instance.new("Sound",Head)
saun.Volume = 1
saun.Pitch = sndpi
saun.SoundId = sndid
saun.Name = "a"
saun.Looped = true
saun:Play()

dant = 0

Mouse.KeyDown:connect(function(key)
key=key:lower()
if key=="e" then
if dant == 0 then
dant = 1
sndid = "rbxassetid://448668887"
sndpi = 1
elseif dant == 1 then
dant = 0
sndid = "rbxassetid://176322684"
sndpi = .7
end
saun.Pitch = sndpi
saun.SoundId = sndid
saun:Play()
end
end)

while true do
if Head:FindFirstChild("a")==nil then
saun = Instance.new("Sound",Head)
saun.Volume = 1
saun.Pitch = sndpi
saun.SoundId = sndid
saun.Name = "a"
saun.Looped = true
saun:Play()
end
if dant == 0 then
for i = 0, 1, 0.25 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(0, 1.4999938, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(0.833580494, 1.12330246, 6.2584877e-07, -0.342020094, -1.63087847e-07, 0.939692676, 0.321394086, -0.939692557, 0.116977669, 0.883022249, 0.342020333, 0.321393758),
CFrame.new(-0.833579302, 1.12330115, -1.49011612e-07, -0.342019886, 4.07719511e-08, -0.939692736, -0.321392894, -0.939693034, 0.116977319, -0.883022726, 0.342019141, 0.321393728),
CFrame.new(0.5, -2, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(-0.5, -2, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
}, .5, false)
end
for i = 0, 1, 0.25 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.268402338, -0.187939167, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736, 0, 0, 0, 1),
CFrame.new(-0.409892142, 1.36144388, 0, 0.766044796, -0.642787218, 0, 0.642787218, 0.766044855, 0, 0, 0, 1),
CFrame.new(0.535924554, 1.16478181, 3.87430191e-07, -0.431316972, 0.32139343, 0.843013644, 0.185034022, -0.883022308, 0.431316644, 0.883022249, 0.342020333, 0.321393758),
CFrame.new(-1.03069234, 0.594579875, -2.38418579e-07, -0.211470842, 0.321393758, -0.923030972, -0.418988168, -0.883022726, -0.211470872, -0.883022726, 0.342019141, 0.321393728),
CFrame.new(0.951213062, -1.54518354, 0, 0.866025686, -0.499999642, 0, 0.499999642, 0.866025686, 0, 0, 0, 1),
CFrame.new(0.214191973, -1.8503952, 0, 0.766044796, -0.642787218, 0, 0.642787218, 0.766044855, 0, 0, 0, 1),
}, .5, false)
end
for i = 0, 1, 0.25 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(0, 1.4999938, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(0.833580494, 1.12330246, 6.2584877e-07, -0.342020094, -1.63087847e-07, 0.939692676, 0.321394086, -0.939692557, 0.116977669, 0.883022249, 0.342020333, 0.321393758),
CFrame.new(-0.833579302, 1.12330115, -1.49011612e-07, -0.342019886, 4.07719511e-08, -0.939692736, -0.321392894, -0.939693034, 0.116977319, -0.883022726, 0.342019141, 0.321393728),
CFrame.new(0.5, -2, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(-0.5, -2, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
}, .5, false)
end
for i = 0, 1, 0.25 do
swait()
PlayAnimationFromTable({
CFrame.new(0.268400908, -0.187940732, 0, 0.939692855, -0.342019945, 0, 0.342019975, 0.939692795, 0, 0, 0, 1),
CFrame.new(0.409947664, 1.36144304, 0, 0.766039729, 0.642798781, 0, -0.642787337, 0.766043961, 0, 0, 0, 1),
CFrame.new(1.03070939, 0.594575524, -2.2649765e-06, -0.21146287, -0.321413547, 0.923025966, 0.418989599, -0.883016884, -0.21149224, 0.883023918, 0.342015505, 0.321394145),
CFrame.new(-0.535904408, 1.16477537, -3.27825546e-07, -0.431322306, -0.321409196, -0.843005002, -0.185032129, -0.883013964, 0.431334615, -0.883019984, 0.342027217, 0.321392536),
CFrame.new(-0.214235365, -1.8503921, 0, 0.766041398, 0.64279145, 0, -0.64279151, 0.766041279, 0, 0, 0, 1),
CFrame.new(-0.965987146, -1.57677674, 0, 0.866024733, 0.500001609, 0, -0.500001609, 0.866024613, 0, 0, 0, 1),
}, .5, false)
end
elseif dant == 1 then
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(0, 1.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(1.09999847, 1.1920929e-07, -0.600001514, 0, 0, 1, 0.173647985, 0.984807849, 0, -0.984807849, 0.173647985, 0),
CFrame.new(-1.09999847, 1.1920929e-07, -0.600001514, 0, 0, -1, -0.173647985, 0.984807849, 0, 0.984807849, 0.173647985, 0),
CFrame.new(0.5, -1.99999881, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(-0.5, -1.99999881, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
}, .2, false)
end
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.0436433926, 0, -0.113613628, 0.64278698, 0, -0.766044974, 0, 1, 0, 0.766044974, 0, 0.64278698),
CFrame.new(0, 1.49999809, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(1.09998989, 1, -0.599998474, 0, 0, 1, 1, 0, 0, 0, 1, 0),
CFrame.new(-1.10000229, 1, -0.599998474, 0, 0, -1, -1, 0, 0, 0, 1, 0),
CFrame.new(0.499988556, -1.99999797, -3.81469727e-06, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(-0.500012398, -1.78038144, -0.819608092, 1, 0, 1.49011612e-08, 0, 0.499999046, -0.866025984, 0, 0.866026044, 0.499999046),
}, .2, false)
end
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(0, 1.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(1.09999847, 1.1920929e-07, -0.600001514, 0, 0, 1, 0.173647985, 0.984807849, 0, -0.984807849, 0.173647985, 0),
CFrame.new(-1.09999847, 1.1920929e-07, -0.600001514, 0, 0, -1, -0.173647985, 0.984807849, 0, 0.984807849, 0.173647985, 0),
CFrame.new(0.5, -1.99999881, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(-0.5, -1.99999881, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
}, .2, false)
end
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0.261404335, 0, -0.167939946, 0.76604414, 0, 0.642788053, 0, 1, 0, -0.642788053, 0, 0.76604414),
CFrame.new(0, 1.49999285, 0, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012),
CFrame.new(1.10000622, 0.999999046, -0.599996626, 0, 0, 1.00000012, 1, 0, 0, 0, 1.00000012, 0),
CFrame.new(-1.09999859, 0.999999046, -0.59999758, 0, 0, -1.00000012, -1, 0, 0, 0, 1.00000012, 0),
CFrame.new(0.500000179, -1.78038287, -0.81961149, 1.00000012, -2.98023224e-08, 2.98023224e-08, 0, 0.499999046, -0.866025925, 0, 0.866025984, 0.499999106),
CFrame.new(-0.500003874, -1.99999893, 3.81469772e-06, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012),
}, .2, false)
end
end
end