function LoadLibrary(a)
    return loadstring(game:HttpGet("https://pastebin.com/raw/UfzKgS6T", true))()
end

loadstring(game:GetObjects("rbxassetid://4480871791")[1].Source)()
-----------------------
--[[ Name : WAOV2 ]]--
-------------------------------------------------------
--A script By makhail07, 2003boobear and XXUNORIBOASXX.

--Discord Creterisk#2958 <- makhail07's discord

--NOTE THIS SCRIPT WAS PURELY MADE FROM MY FUCKING IMAGINATION
--IF IT HAPPENS TO LOOK LIKE ANOTHER SCRIPT
--DONT CALL IT A FUCKING BOOTLEG THANK YOU AND ENJOY THE SCRIPT
--YOU FUCKING SKIDS,
--For Those who log/decompile this, If you sell or trade this,
--and I find out who you are, i will take massive action.
--:b:
-------------------------------------------------------

local FavIDs = {
	340106355, --Nefl Crystals
	927529620, --Dimension
	876981900, --Fantasy
	398987889, --Ordinary Days
	1117396305, --Oh wait, it's you.
	885996042, --Action Winter Journey
	919231299, --Sprawling Idiot Effigy
	743466274, --Good Day Sunshine
	727411183, --Knife Fight
	1402748531, --The Earth Is Counting On You!
	595230126 --Robot Language
	}



--The reality of my life isn't real but a Universe -Creterisk
--All people can be nice, Even if you don't think so. -2003boobear
--The past can be horrible, but the future will be better, so forget the past and move-onward. -XXUNORIBOASXX
wait()
local plr = game:service'Players'.LocalPlayer
local char = workspace.CloneCharacter
local hum = char:FindFirstChildOfClass("Humanoid")
local hed = char.Head
local root = char.HumanoidRootPart
local rootj = root.RootJoint
local tors = char.Torso
local ra = char["Right Arm"]
local la = char["Left Arm"]
local rl = char["Right Leg"]
local ll = char["Left Leg"]
local neck = tors["Neck"]
local mouse = plr:GetMouse()
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)
local maincolor = BrickColor.new("Dark green")
exploitable = true
-------------------------------------------------------
--Start Whitelist and Invincibility--
-------------------------------------------------------	
ff = Instance.new("ForceField",char)
ff.Visible = false
hum.Name = "Humanoid"
hum.MaxHealth = 1.0E298
hum.Health = 1.0E298
game:GetService("RunService"):BindToRenderStep("Bbae", 0, function()
  if hum.Health > 0.1 and hum.Health < 1.0E298 then
    hum.MaxHealth = 1.0E298
    hum.Health = 1.0E298
  end
end)
-------------------------------------------------------
--End Whitelist and Invincibility--
-------------------------------------------------------	

warn("WhAT ANOTHER ONE V2 IS FINALLY HERE!")

warn("I hope you enjoy.")

warn("Credit to makhail07, 2003boobear and XXUNORIBOASXX!")

-------------------------------------------------------
--Start Good Stuff--
-------------------------------------------------------
cam = game.Workspace.CurrentCamera
CF = CFrame.new
VT = Vector3.new
angles = CFrame.Angles
attack = false
Euler = CFrame.fromEulerAnglesXYZ
Rad = math.rad
IT = Instance.new
BrickC = BrickColor.new
Cos = math.cos
Acos = math.acos
Sin = math.sin
Asin = math.asin
Abs = math.abs
Mrandom = math.random
Floor = math.floor
-------------------------------------------------------
--End Good Stuff--
-------------------------------------------------------
necko = CF(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
RSH, LSH = nil, nil 
RW = Instance.new("Weld") 
LW = Instance.new("Weld")
RH = tors["Right Hip"]
LH = tors["Left Hip"]
RSH = tors["Right Shoulder"] 
LSH = tors["Left Shoulder"] 
RSH.Parent = nil 
LSH.Parent = nil 
RW.Name = "RW"
RW.Part0 = tors 
RW.C0 = CF(1.5, 0.5, 0)
RW.C1 = CF(0, 0.5, 0) 
RW.Part1 = ra
RW.Parent = tors 
LW.Name = "LW"
LW.Part0 = tors 
LW.C0 = CF(-1.5, 0.5, 0)
LW.C1 = CF(0, 0.5, 0) 
LW.Part1 = la
LW.Parent = tors
Effects = {}
-------------------------------------------------------
--Start HeartBeat--
-------------------------------------------------------
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
-------------------------------------------------------
--End HeartBeat--
-------------------------------------------------------

TAUNT = Instance.new("Sound", tors)
TAUNT.SoundId = "http://www.roblox.com/asset/?id=1535994137"
TAUNT.Volume = 10
TAUNT.Pitch = 1
TAUNT.Looped = false
TAUNT.TimePosition = 0.12

BTAUNT = Instance.new("Sound", tors)
BTAUNT.SoundId = "http://www.roblox.com/asset/?id=1535995263"
BTAUNT.Volume = 10
BTAUNT.Pitch = 1
BTAUNT.Looped = false
BTAUNT.TimePosition = 0.2

ITAUNT = Instance.new("Sound", tors)
ITAUNT.SoundId = "http://www.roblox.com/asset/?id=1535994669"
ITAUNT.Volume = 10
ITAUNT.Pitch = 1
ITAUNT.Looped = false
ITAUNT.TimePosition = 0

BATAUNT = Instance.new("Sound", tors)
BATAUNT.SoundId = "http://www.roblox.com/asset/?id=132514715"
BATAUNT.Volume = 10
BATAUNT.Pitch = 1
BATAUNT.Looped = false
BATAUNT.TimePosition = 0

STAUNT = Instance.new("Sound", tors)
STAUNT.SoundId = "http://www.roblox.com/asset/?id=1535994940"
STAUNT.Volume = 10
STAUNT.Pitch = 1
STAUNT.Looped = false
STAUNT.TimePosition = 0.05

DTAUNT = Instance.new("Sound", tors)
DTAUNT.SoundId = "http://www.roblox.com/asset/?id=907333294"
DTAUNT.Volume = 10
DTAUNT.Pitch = 1
DTAUNT.Looped = false
DTAUNT.TimePosition = 0

LAZOR = Instance.new("Sound", ra)
LAZOR.SoundId = "http://www.roblox.com/asset/?id=201858045"
LAZOR.Volume = 10
LAZOR.Pitch = 0.7
LAZOR.Looped = false
LAZOR.TimePosition = 0

-------------------------------------------------------
--Start Important Functions--
-------------------------------------------------------
function swait(num)
	if num == 0 or num == nil then
		game:service("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:service("RunService").Stepped:wait(0)
		end
	end
end
function thread(f)
	coroutine.resume(coroutine.create(f))
end
function clerp(a, b, t)
	local qa = {
		QuaternionFromCFrame(a)
	}
	local qb = {
		QuaternionFromCFrame(b)
	}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end
function ShockWave(Part, cframe1, cframe2, Damage, Size)
	coroutine.resume(coroutine.create(function() 
		local wave = CreatePart(workspace, "Neon", 0, 0, Neoncolor, "Effect", Vector3.new(1, 1, 5))
		wave.Anchored = true 
		wave.CFrame = Part.CFrame * cframe1
		local Msh = Create("SpecialMesh"){
			Parent = wave,
			MeshType = "Sphere"
		}
		Cso("http://roblox.com/asset/?id=300916105", wave, 1, 1.3)
		for i = 0, 1, 0.2 do
			wait()
			local dir = wave.CFrame.lookVector * -1
			local pos = rayCast(wave.Position, dir, 5, Character)
			wave.CFrame = wave.CFrame * cframe2
                        table.insert(Effects, {
                                wave,
                                "Sphere",
                                0.01,
                                .03,
                                .03,
                                .03,
                        })
		end
	end))
end

function PixelBlock(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos) --Thanks, Star Glitcher!
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Brick"
rngm.Scale = VT(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 1
local speeder = FastSpeed/10
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
speeder = speeder - 0.01*FastSpeed*bonuspeed/10
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
rng.Transparency = rng.Transparency + 0.01*bonuspeed
end
rng:Destroy()
end))
end
New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m00 < m11 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s
			return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end
function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp
	if cosTheta >= 1.0E-4 then
		if 1 - cosTheta > 1.0E-4 then
			local theta = math.acos(cosTheta)
			local invSinTheta = 1 / Sin(theta)
			startInterp = Sin((1 - t) * theta) * invSinTheta
			finishInterp = Sin(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	elseif 1 + cosTheta > 1.0E-4 then
		local theta = math.acos(-cosTheta)
		local invSinTheta = 1 / Sin(theta)
		startInterp = Sin((t - 1) * theta) * invSinTheta
		finishInterp = Sin(t * theta) * invSinTheta
	else
		startInterp = t - 1
		finishInterp = t
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end
function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

-------------------------------------------------------
--Start Damage Function--
-------------------------------------------------------
function Damage(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
	if hit.Parent == nil then
		return
	end
	local h = hit.Parent:FindFirstChildOfClass("Humanoid")
	for _, v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
         if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("UpperTorso") ~= nil then
	
         hit.Parent:FindFirstChild("Head"):BreakJoints()
         end

	if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil then
			if hit.Parent.DebounceHit.Value == true then
				return
			end
		end
         if insta == true then
         hit.Parent:FindFirstChild("Head"):BreakJoints()
         end
		local c = Create("ObjectValue"){
			Name = "creator",
			Value = game:service("Players").LocalPlayer,
			Parent = h,
		}
		game:GetService("Debris"):AddItem(c, .5)
		if HitSound ~= nil and HitPitch ~= nil then
			CFuncs.Sound.Create(HitSound, hit, 1, HitPitch) 
		end
		local Damage = math.random(minim, maxim)
		local blocked = false
		local block = hit.Parent:findFirstChild("Block")
		if block ~= nil then
			if block.className == "IntValue" then
				if block.Value > 0 then
					blocked = true
					block.Value = block.Value - 1
					print(block.Value)
				end
			end
		end
		if blocked == false then
			h.Health = h.Health - Damage
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, tors.BrickColor.Color)
		else
			h.Health = h.Health - (Damage / 2)
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, tors.BrickColor.Color)
		end
		if Type == "Knockdown" then
			local hum = hit.Parent.Humanoid
			hum.PlatformStand = true
			coroutine.resume(coroutine.create(function(HHumanoid)
				swait(1)
				HHumanoid.PlatformStand = false
			end), hum)
			local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
			local bodvol = Create("BodyVelocity"){
				velocity = angle * knockback,
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			local rl = Create("BodyAngularVelocity"){
				P = 3000,
				maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
				angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodvol, .5)
			game:GetService("Debris"):AddItem(rl, .5)
		elseif Type == "Normal" then
			local vp = Create("BodyVelocity"){
				P = 500,
				maxForce = Vector3.new(math.huge, 0, math.huge),
				velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05,
			}
			if knockback > 0 then
				vp.Parent = hit.Parent.Torso
			end
			game:GetService("Debris"):AddItem(vp, .5)
		elseif Type == "Up" then
			local bodyVelocity = Create("BodyVelocity"){
				velocity = Vector3.new(0, 20, 0),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodyVelocity, .5)
		elseif Type == "DarkUp" then
			coroutine.resume(coroutine.create(function()
				for i = 0, 1, 0.1 do
					swait()
					Effects.Block.Create(BrickColor.new("Black"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, .08, 1)
				end
			end))
			local bodyVelocity = Create("BodyVelocity"){
				velocity = Vector3.new(0, 20, 0),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodyVelocity, 1)
		elseif Type == "Snare" then
			local bp = Create("BodyPosition"){
				P = 2000,
				D = 100,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			game:GetService("Debris"):AddItem(bp, 1)
		elseif Type == "Freeze" then
			local BodPos = Create("BodyPosition"){
				P = 50000,
				D = 1000,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			local BodGy = Create("BodyGyro") {
				maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge ,
				P = 20e+003,
				Parent = hit.Parent.Torso,
				cframe = hit.Parent.Torso.CFrame,
			}
			hit.Parent.Torso.Anchored = true
			coroutine.resume(coroutine.create(function(Part) 
				swait(1.5)
				Part.Anchored = false
			end), hit.Parent.Torso)
			game:GetService("Debris"):AddItem(BodPos, 3)
			game:GetService("Debris"):AddItem(BodGy, 3)
		end
		local debounce = Create("BoolValue"){
			Name = "DebounceHit",
			Parent = hit.Parent,
			Value = true,
		}
		game:GetService("Debris"):AddItem(debounce, Delay)
		c = Create("ObjectValue"){
			Name = "creator",
			Value = Player,
			Parent = h,
		}
		game:GetService("Debris"):AddItem(c, .5)
	end
end
-------------------------------------------------------
--End Damage Function--
-------------------------------------------------------

-------------------------------------------------------
--Start Damage Function Customization--
-------------------------------------------------------
function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 1))
	local EffectPart = CFuncs.Part.Create(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
	EffectPart.Anchored = true
	local BillboardGui = Create("BillboardGui"){
		Size = UDim2.new(3, 0, 3, 0),
		Adornee = EffectPart,
		Parent = EffectPart,
	}
	local TextLabel = Create("TextLabel"){
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = Text,
		Font = "Bodoni",
		TextColor3 = Color,
		TextScaled = true,
		TextStrokeColor3 = Color3.fromRGB(0,0,0),
		Parent = BillboardGui,
	}
	game.Debris:AddItem(EffectPart, (Time))
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end
-------------------------------------------------------
--End Damage Function Customization--
-------------------------------------------------------

function MagniDamage(Part, magni, mindam, maxdam, knock, Type)
  for _, c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Head")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if magni >= mag and c.Name ~= plr.Name then
          Damage(head, head, mindam, maxdam, knock, Type, root, 0.1, "http://www.roblox.com/asset/?id=0", 1.2)
        end
      end
    end
  end
end


CFuncs = {
	Part = {
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
			local Part = Create("Part")({
				Parent = Parent,
				Reflectance = Reflectance,
				Transparency = Transparency,
				CanCollide = false,
				Locked = true,
				BrickColor = BrickColor.new(tostring(BColor)),
				Name = Name,
				Size = Size,
				Material = Material
			})
			RemoveOutlines(Part)
			return Part
		end
	},
	Mesh = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh)({
				Parent = Part,
				Offset = OffSet,
				Scale = Scale
			})
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end
	},
	Mesh = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh)({
				Parent = Part,
				Offset = OffSet,
				Scale = Scale
			})
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end
	},
	Weld = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld")({
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1
			})
			return Weld
		end
	},
	Sound = {
		Create = function(id, par, vol, pit)
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound")({
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace
				})
				wait()
				S:play()
				game:GetService("Debris"):AddItem(S, 6)
			end))
		end
	},
	ParticleEmitter = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local fp = Create("ParticleEmitter")({
				Parent = Parent,
				Color = ColorSequence.new(Color1, Color2),
				LightEmission = LightEmission,
				Size = Size,
				Texture = Texture,
				Transparency = Transparency,
				ZOffset = ZOffset,
				Acceleration = Accel,
				Drag = Drag,
				LockedToPart = LockedToPart,
				VelocityInheritance = VelocityInheritance,
				EmissionDirection = EmissionDirection,
				Enabled = Enabled,
				Lifetime = LifeTime,
				Rate = Rate,
				Rotation = Rotation,
				RotSpeed = RotSpeed,
				Speed = Speed,
				VelocitySpread = VelocitySpread
			})
			return fp
		end
	}
}
function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreatePart1(FormFactor, Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part")({
		formFactor = FormFactor,
		Parent = Parent,
		Reflectance = Reflectance,
		Transparency = Transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BColor)),
		Name = Name,
		Size = Size,
		Material = Material
	})
	RemoveOutlines(Part)
	return Part
end
function CreateMesh1(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	local Msh = Create(Mesh)({
		Parent = Part,
		Offset = OffSet,
		Scale = Scale
	})
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end
function CreateWeld(Parent, Part0, Part1, C0, C1)
	local Weld = Create("Weld")({
		Parent = Parent,
		Part0 = Part0,
		Part1 = Part1,
		C0 = C0,
		C1 = C1
	})
	return Weld
end


-------------------------------------------------------
--Start Effect Function--
-------------------------------------------------------
EffectModel = Instance.new("Model", char)
Effects = {
  Block = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      if Type == 1 or Type == nil then
        table.insert(Effects, {
          prt,
          "Block1",
          delay,
          x3,
          y3,
          z3,
          msh
        })
      elseif Type == 2 then
        table.insert(Effects, {
          prt,
          "Block2",
          delay,
          x3,
          y3,
          z3,
          msh
        })
      else
        table.insert(Effects, {
          prt,
          "Block3",
          delay,
          x3,
          y3,
          z3,
          msh
        })
      end
    end
  },
  Sphere = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    end
  },
  Cylinder = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    end
  },
  Wave = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1 / 60, y1 / 60, z1 / 60))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3 / 60,
        y3 / 60,
        z3 / 60,
        msh
      })
    end
  },
  Ring = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    end
  },
  Break = {
    Create = function(brickcolor, cframe, x1, y1, z1)
      local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
      prt.Anchored = true
      prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      local num = math.random(10, 50) / 1000
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Shatter",
        num,
        prt.CFrame,
        math.random() - math.random(),
        0,
        math.random(50, 100) / 100
      })
    end
  },
Spiral = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://1051557", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    end
  },
Push = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://437347603", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    end
  }
}
function part(formfactor ,parent, reflectance, transparency, brickcolor, name, size)
	local fp = IT("Part")
	fp.formFactor = formfactor 
	fp.Parent = parent
	fp.Reflectance = reflectance
	fp.Transparency = transparency
	fp.CanCollide = false 
	fp.Locked = true
	fp.BrickColor = brickcolor
	fp.Name = name
	fp.Size = size
	fp.Position = tors.Position 
	RemoveOutlines(fp)
	fp.Material = "SmoothPlastic"
	fp:BreakJoints()
	return fp 
end 
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
	local mesh = IT(Mesh) 
	mesh.Parent = part
	if Mesh == "SpecialMesh" then
		mesh.MeshType = meshtype
	if meshid ~= "nil" then
		mesh.MeshId = "http://www.roblox.com/asset/?id="..meshid
		end
	end
	mesh.Offset = offset
	mesh.Scale = scale
	return mesh
end

function MagicCharge(bonuspeed, FastSpeed, type, pos, x1, y1, z1, value, color, outerpos, MType)
	local type = type
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 1
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	rng.CFrame = rng.CFrame + rng.CFrame.lookVector * outerpos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = MType
	rngm.Scale = Vector3.new(x1, y1, z1)
	local scaler2 = 1
	local speeder = FastSpeed
	if type == "Add" then
		scaler2 = 1 * value
	elseif type == "Divide" then
		scaler2 = 1 / value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0, 10 / bonuspeed, 0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01 * value / bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01 / value * bonuspeed
			end
			speeder = speeder - 0.01 * FastSpeed * bonuspeed
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector * speeder * bonuspeed
			rng.Transparency = rng.Transparency - 0.01 * bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, 0)
		end
		rng:Destroy()
	end))
end

function Magic(bonuspeed, type, pos, scale, value, color, MType)
	local type = type
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = MType
	rngm.Scale = scale
	local scaler2 = 1
	if type == "Add" then
		scaler2 = 1 * value
	elseif type == "Divide" then
		scaler2 = 1 / value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0, 10 / bonuspeed, 0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01 * value / bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01 / value * bonuspeed
			end
			rng.Transparency = rng.Transparency + 0.01 * bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, scaler2 * bonuspeed)
		end
		rng:Destroy()
	end))
end

function Eviscerate(dude)
	if dude.Name ~= char then
		local bgf = IT("BodyGyro", dude.Head)
		bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(Rad(-90), 0, 0)
		local val = IT("BoolValue", dude)
		val.Name = "IsHit"
		local ds = coroutine.wrap(function()
			dude:WaitForChild("Head"):BreakJoints()
			wait(0.5)
			target = nil
			coroutine.resume(coroutine.create(function()
				for i, v in pairs(dude:GetChildren()) do
					if v:IsA("Accessory") then
						v:Destroy()
					end
					if v:IsA("Humanoid") then
						v:Destroy()
					end
					if v:IsA("CharacterMesh") then
						v:Destroy()
					end
					if v:IsA("Model") then
						v:Destroy()
					end
					if v:IsA("Part") or v:IsA("MeshPart") then
						for x, o in pairs(v:GetChildren()) do
							if o:IsA("Decal") then
								o:Destroy()
							end
						end
						coroutine.resume(coroutine.create(function()
							v.Material = "Neon"
							v.CanCollide = false
							local PartEmmit1 = IT("ParticleEmitter", v)
							PartEmmit1.LightEmission = 1
							PartEmmit1.Texture = "rbxassetid://284205403"
							PartEmmit1.Color = ColorSequence.new(maincolor.Color)
							PartEmmit1.Rate = 150
							PartEmmit1.Lifetime = NumberRange.new(1)
							PartEmmit1.Size = NumberSequence.new({
								NumberSequenceKeypoint.new(0, 0.75, 0),
								NumberSequenceKeypoint.new(1, 0, 0)
							})
							PartEmmit1.Transparency = NumberSequence.new({
								NumberSequenceKeypoint.new(0, 0, 0),
								NumberSequenceKeypoint.new(1, 1, 0)
							})
							PartEmmit1.Speed = NumberRange.new(0, 0)
							PartEmmit1.VelocitySpread = 30000
							PartEmmit1.Rotation = NumberRange.new(-500, 500)
							PartEmmit1.RotSpeed = NumberRange.new(-500, 500)
							local BodPoss = IT("BodyPosition", v)
							BodPoss.P = 3000
							BodPoss.D = 1000
							BodPoss.maxForce = Vector3.new(50000000000, 50000000000, 50000000000)
							BodPoss.position = v.Position + Vector3.new(Mrandom(-15, 15), Mrandom(-15, 15), Mrandom(-15, 15))
							v.Color = maincolor.Color
							coroutine.resume(coroutine.create(function()
								for i = 0, 49 do
									swait(1)
									v.Transparency = v.Transparency + 0.08
								end
								wait(0.5)
								PartEmmit1.Enabled = false
								wait(3)
								v:Destroy()
								dude:Destroy()
							end))
						end))
					end
				end
			end))
		end)
		ds()
	end
end

function FindNearestHead(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return Distance > (SinglePlayer.Torso.CFrame.p - Position).magnitude
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") and v:findFirstChild("Head") and v ~= char and Distance >= (v.Head.Position - Position).magnitude then
			table.insert(List, v)
		end
	end
	return List
end

function Aura(bonuspeed, FastSpeed, type, pos, x1, y1, z1, value, color, outerpos, MType)
	local type = type
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	rng.CFrame = rng.CFrame + rng.CFrame.lookVector * outerpos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = MType
	rngm.Scale = Vector3.new(x1, y1, z1)
	local scaler2 = 1
	local speeder = FastSpeed
	if type == "Add" then
		scaler2 = 1 * value
	elseif type == "Divide" then
		scaler2 = 1 / value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0, 10 / bonuspeed, 0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01 * value / bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01 / value * bonuspeed
			end
			speeder = speeder - 0.01 * FastSpeed * bonuspeed
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector * speeder * bonuspeed
			rng.Transparency = rng.Transparency + 0.01 * bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, 0)
		end
		rng:Destroy()
	end))
end

function SoulSteal(dude)
if dude.Name ~= char then
local bgf = IT("BodyGyro", dude.Head)
bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(Rad(-90), 0, 0)
local val = IT("BoolValue", dude)
val.Name = "IsHit"
local torso = (dude:FindFirstChild'Head' or dude:FindFirstChild'Torso' or dude:FindFirstChild'UpperTorso' or dude:FindFirstChild'LowerTorso' or dude:FindFirstChild'HumanoidRootPart')
local soulst = coroutine.wrap(function()
local soul = Instance.new("Part",dude)
soul.Size = Vector3.new(1,1,1)
soul.CanCollide = false
soul.Anchored = false
soul.Position = torso.Position
soul.Transparency = 1
local PartEmmit1 = IT("ParticleEmitter", soul)
PartEmmit1.LightEmission = 1
PartEmmit1.Texture = "rbxassetid://569507414"
PartEmmit1.Color = ColorSequence.new(maincolor.Color)
PartEmmit1.Rate = 250
PartEmmit1.Lifetime = NumberRange.new(1.6)
PartEmmit1.Size = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 1, 0),
	NumberSequenceKeypoint.new(1, 0, 0)
})
PartEmmit1.Transparency = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 0, 0),
	NumberSequenceKeypoint.new(1, 1, 0)
})
PartEmmit1.Speed = NumberRange.new(0, 0)
PartEmmit1.VelocitySpread = 30000
PartEmmit1.Rotation = NumberRange.new(-360, 360)
PartEmmit1.RotSpeed = NumberRange.new(-360, 360)
local BodPoss = IT("BodyPosition", soul)
BodPoss.P = 3000
BodPoss.D = 1000
BodPoss.maxForce = Vector3.new(50000000000, 50000000000, 50000000000)
BodPoss.position = torso.Position + Vector3.new(Mrandom(-15, 15), Mrandom(-15, 15), Mrandom(-15, 15))
wait(1.6)
soul.Touched:connect(function(hit)
	if hit.Parent == char then
	soul:Destroy()
	end
end)
wait(1.2)
while soul do
	swait()
	PartEmmit1.Color = ColorSequence.new(maincolor.Color)
	BodPoss.Position = tors.Position
end
end)
	soulst()
	end
end
function FaceMouse()
local	Cam = workspace.CurrentCamera
	return {
		CFrame.new(char.Torso.Position, Vector3.new(mouse.Hit.p.x, char.Torso.Position.y, mouse.Hit.p.z)),
		Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)
	}
end
-------------------------------------------------------
--End Effect Function--
-------------------------------------------------------
function Cso(ID, PARENT, VOLUME, PITCH)
	local NSound = nil
	coroutine.resume(coroutine.create(function()
		NSound = IT("Sound", PARENT)
		NSound.Volume = VOLUME
		NSound.Pitch = PITCH
		NSound.SoundId = "http://www.roblox.com/asset/?id="..ID
		swait()
		NSound:play()
		game:GetService("Debris"):AddItem(NSound, 10)
	end))
	return NSound
end
function CameraEnshaking(Length, Intensity)
	coroutine.resume(coroutine.create(function()
		local intensity = 1 * Intensity
		local rotM = 0.01 * Intensity
		for i = 0, Length, 0.1 do
			swait()
			intensity = intensity - 0.05 * Intensity / Length
			rotM = rotM - 5.0E-4 * Intensity / Length
			hum.CameraOffset = Vector3.new(Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity)))
			cam.CFrame = cam.CFrame * CF(Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity))) * Euler(Rad(Mrandom(-intensity, intensity)) * rotM, Rad(Mrandom(-intensity, intensity)) * rotM, Rad(Mrandom(-intensity, intensity)) * rotM)
		end
		hum.CameraOffset = Vector3.new(0, 0, 0)
	end))
end
function HitboxFunction(Pose, lifetime, siz1, siz2, siz3, Radie, Min, Max, kb, atype)
local Hitboxpart = Instance.new("Part", EffectModel)
  RemoveOutlines(Hitboxpart)
  Hitboxpart.Size = Vector3.new(siz1, siz2, siz3)
  Hitboxpart.CanCollide = false
  Hitboxpart.Transparency = 1
  Hitboxpart.Anchored = true
  Hitboxpart.CFrame = Pose
  game:GetService("Debris"):AddItem(Hitboxpart, lifetime)
  MagniDamage(Hitboxpart, Radie, Min, Max, kb, atype)
end
function BlockEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  local prt = CreatePart1(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh1("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
    table.insert(Effects, {
      prt,
      "Block1",
      delay,
      x3,
      y3,
      z3,
      msh
    })
  elseif Type == 2 then
    table.insert(Effects, {
      prt,
      "Block2",
      delay,
      x3,
      y3,
      z3,
      msh
    })
  elseif Type == 3 then
    table.insert(Effects, {
      prt,
      "Block3",
      delay,
      x3,
      y3,
      z3,
      msh
    })
  end
end

function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part"){
		Parent = Parent,
		Reflectance = Reflectance,
		Transparency = Transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BColor)),
		Name = Name,
		Size = Size,
		Material = Material,
	}
	RemoveOutlines(Part)
	return Part
end
	
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	local Msh = Create(Mesh){
		Parent = Part,
		Offset = OffSet,
		Scale = Scale,
	}
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end

function RingEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
local prt = CreatePart(workspace,"Neon",0,0,brickcolor,"Effect", Vector3.new(.5,.5,.5))--part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored = true
prt.CFrame = cframe
local msh = CreateMesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",Vector3.new(0,0,0),Vector3.new(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh,num) 
for i=0,1,delay do
swait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale + Vector3.new(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,(math.random(0,1)+math.random())/5)
end
-------------------------------------------------------
--End Important Functions--
-------------------------------------------------------



--[[
		Thanks for using Build-To-Lua by jarredbcv.
]]--

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
	
Gunty = New("Model",char,"Gunty",{})
Handle = New("Part",Gunty,"Handle",{Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 1.7700001, 1),CFrame = CFrame.new(31.0716114, 2.79670954, -174.846329, 0.999894261, 0.010924357, 0.00963267777, -0.0110270018, 0.999882579, 0.0106679145, -0.00951499958, -0.0107729975, 0.999897003),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Handle,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Dark green"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.03999996, 0.290000111, 0.189999968),CFrame = CFrame.new(31.058609, 2.34723592, -175.197876, 0.999896646, 0.0109243831, 0.00963271596, -0.0110270279, 0.999884963, 0.0106679602, -0.00951500423, -0.0107730059, 0.999899387),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.156863, 0.498039, 0.278431),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999896049, -0.0110270213, -0.0095150033, 0.0109243765, 0.999884367, -0.0107730031, 0.00963270571, 0.010667949, 0.999898791),C1 = CFrame.new(-0.00469970703, -0.445775509, -0.356430054, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.01999998, 0.330000103, 0.229999959),CFrame = CFrame.new(31.058609, 2.34723592, -175.197876, 0.999896646, 0.0109243831, 0.00963271596, -0.0110270279, 0.999884963, 0.0106679602, -0.00951500423, -0.0107730059, 0.999899387),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999896049, -0.0110270213, -0.0095150033, 0.0109243765, 0.999884367, -0.0107730031, 0.00963270571, 0.010667949, 0.999898791),C1 = CFrame.new(-0.00469970703, -0.445775509, -0.356430054, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.04999995, 0.0500001162, 0.0599999726),CFrame = CFrame.new(31.0147629, 1.60638475, -174.821182, -0.00951508526, -0.010773032, 0.999899387, -0.0110270474, 0.999884665, 0.0106679332, -0.999896705, -0.0109243607, -0.00963272899),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.203922, 0.203922, 0.203922),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.00951507501, -0.0110270362, -0.999896109, -0.0107730227, 0.999884129, -0.0109243607, 0.999898791, 0.0106679285, -0.00963272713),C1 = CFrame.new(-0.0439567566, -1.19107628, 0.0119018555, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.059999954, 0.180000111, 0.0599999726),CFrame = CFrame.new(30.6584473, 2.04683352, -174.327209, -0.00951508433, -0.0107730264, 0.999899626, 0.248140842, 0.968642294, 0.0127975615, -0.968680143, 0.248236969, -0.00654343609),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.203922, 0.203922, 0.203922),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.00951507408, 0.248140693, -0.968679547, -0.010773018, 0.968641758, 0.24823682, 0.99989897, 0.0127975577, -0.00654343609),C1 = CFrame.new(-0.409790039, -0.759893417, 0.507080078, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.059999954, 0.180000111, 0.0599999726),CFrame = CFrame.new(30.9084473, 2.04683304, -174.327209, -0.00951508433, -0.0107730264, 0.999899626, 0.248140842, 0.968642294, 0.0127975615, -0.968680143, 0.248236969, -0.00654343609),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.203922, 0.203922, 0.203922),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.00951507408, 0.248140693, -0.968679547, -0.010773018, 0.968641758, 0.24823682, 0.99989897, 0.0127975577, -0.00654343609),C1 = CFrame.new(-0.159816742, -0.757163048, 0.509490967, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.059999954, 0.180000111, 0.0599999726),CFrame = CFrame.new(31.228447, 2.04683328, -174.327209, -0.00951508433, -0.0107730264, 0.999899626, 0.248140842, 0.968642294, 0.0127975615, -0.968680143, 0.248236969, -0.00654343609),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.203922, 0.203922, 0.203922),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.00951507408, 0.248140693, -0.968679547, -0.010773018, 0.968641758, 0.24823682, 0.99989897, 0.0127975577, -0.00654343609),C1 = CFrame.new(0.160148621, -0.753666878, 0.512573242, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.059999954, 0.180000111, 0.0599999726),CFrame = CFrame.new(30.8784504, 1.99683285, -175.357208, -0.00951508339, -0.010773031, 0.999899387, -0.269443661, 0.962987244, 0.00781129859, -0.962972045, -0.269341499, -0.0120655689),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.203922, 0.203922, 0.203922),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.00951507408, -0.269443542, -0.962971449, -0.0107730236, 0.962986648, -0.269341379, 0.999898791, 0.00781129394, -0.0120655652),C1 = CFrame.new(-0.179458618, -0.796388626, -0.521224976, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.059999954, 0.180000111, 0.0599999726),CFrame = CFrame.new(31.4684505, 2.71683574, -175.357208, -0.00951508619, -0.0107730282, 0.999899626, 0.248140991, 0.968642175, 0.0127975615, -0.968680024, 0.248237148, -0.00654343236),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.203922, 0.203922, 0.203922),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.00951507501, 0.248140842, -0.968679428, -0.0107730199, 0.968641579, 0.248236999, 0.99989897, 0.0127975577, -0.00654343236),C1 = CFrame.new(0.4025383, -0.070025444, -0.507858276, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.239999995, 0.330000132, 1.07000005),CFrame = CFrame.new(30.7338467, 2.35736775, -174.842926, 0.999896646, 0.0109243831, 0.00963271596, -0.0110270279, 0.999884963, 0.0106679602, -0.00951500423, -0.0107730059, 0.999899387),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999896049, -0.0110270213, -0.0095150033, 0.0109243765, 0.999884367, -0.0107730031, 0.00963270571, 0.010667949, 0.999898791),C1 = CFrame.new(-0.33291626, -0.443016529, -0.00453186035, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.239999995, 0.330000132, 1.07000005),CFrame = CFrame.new(31.3738499, 2.35736799, -174.842926, 0.999896646, 0.0109243831, 0.00963271596, -0.0110270279, 0.999884963, 0.0106679602, -0.00951500423, -0.0107730059, 0.999899387),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999896049, -0.0110270213, -0.0095150033, 0.0109243765, 0.999884367, -0.0107730031, 0.00963270571, 0.010667949, 0.999898791),C1 = CFrame.new(0.30701828, -0.436024666, 0.00163269043, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.059999954, 0.180000111, 0.0599999726),CFrame = CFrame.new(31.2084579, 1.99683356, -175.357178, -0.00951508339, -0.010773031, 0.999899387, -0.269443661, 0.962987244, 0.00781129859, -0.962972045, -0.269341499, -0.0120655689),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.203922, 0.203922, 0.203922),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.00951507408, -0.269443542, -0.962971449, -0.0107730236, 0.962986648, -0.269341379, 0.999898791, 0.00781129394, -0.0120655652),C1 = CFrame.new(0.150512695, -0.79278326, -0.518005371, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.01999998, 0.330000132, 0.229999959),CFrame = CFrame.new(31.0686169, 2.35712481, -174.467972, 0.999896646, 0.0109243831, 0.00963271596, -0.0110270279, 0.999884963, 0.0106679602, -0.00951500423, -0.0107730059, 0.999899387),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999896049, -0.0110270213, -0.0095150033, 0.0109243765, 0.999884367, -0.0107730031, 0.00963270571, 0.010667949, 0.999898791),C1 = CFrame.new(-0.00174713135, -0.443641663, 0.373596191, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Wedge = New("WedgePart",Gunty,"Wedge",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.13999975, 0.230000034, 0.560000122),CFrame = CFrame.new(31.0786934, 3.13681054, -175.132095, -1.00000238, -2.20054062e-07, 3.09199095e-07, 2.12065061e-07, -1.00000215, 3.20374966e-07, 2.75671482e-07, 3.09199095e-07, 1.00000226),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.203922, 0.203922, 0.203922),})
mot = New("Motor",Wedge,"mot",{Part0 = Wedge,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1.00000179, 2.11242877e-07, 2.80328095e-07, -2.20876245e-07, -1.00000155, 3.13855708e-07, 3.05473804e-07, 3.1478703e-07, 1.00000167),C1 = CFrame.new(0.00605010986, 0.343216896, -0.282043457, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.059999954, 0.180000111, 0.0599999726),CFrame = CFrame.new(30.6284485, 2.71683502, -175.357208, -0.00951508619, -0.0107730282, 0.999899626, 0.248140991, 0.968642175, 0.0127975615, -0.968680024, 0.248237148, -0.00654343236),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.203922, 0.203922, 0.203922),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.00951507501, 0.248140842, -0.968679428, -0.0107730199, 0.968641579, 0.248236999, 0.99989897, 0.0127975577, -0.00654343236),C1 = CFrame.new(-0.437374115, -0.079202652, -0.515945435, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.059999954, 0.180000111, 0.0599999726),CFrame = CFrame.new(30.8884487, 2.71683598, -174.327209, -0.00951508339, -0.010773031, 0.999899387, -0.269443661, 0.962987244, 0.00781129859, -0.962972045, -0.269341499, -0.0120655689),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.203922, 0.203922, 0.203922),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.00951507408, -0.269443542, -0.962971449, -0.0107730236, 0.962986648, -0.269341379, 0.999898791, 0.00781129394, -0.0120655652),C1 = CFrame.new(-0.187202454, -0.0874576569, 0.516448975, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Dark green"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.290000111, 1.08999991),CFrame = CFrame.new(30.7338486, 2.3574791, -174.84285, 0.999896646, 0.0109243831, 0.00963271596, -0.0110270279, 0.999884963, 0.0106679602, -0.00951500423, -0.0107730059, 0.999899387),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.156863, 0.498039, 0.278431),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999896049, -0.0110270213, -0.0095150033, 0.0109243765, 0.999884367, -0.0107730031, 0.00963270571, 0.010667949, 0.999898791),C1 = CFrame.new(-0.33291626, -0.442905903, -0.00445556641, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Dark green"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.0700000003, 0.759999931, 0.0500000007),CFrame = CFrame.new(31.6297836, 3.38593745, -174.84967, 0.999896646, 0.0109243831, 0.00963271596, -0.0110270279, 0.999884963, 0.0106679602, -0.00951500423, -0.0107730059, 0.999899387),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.156863, 0.498039, 0.278431),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999896049, -0.0110270213, -0.0095150033, 0.0109243765, 0.999884367, -0.0107730031, 0.00963270571, 0.010667949, 0.999898791),C1 = CFrame.new(0.551647186, 0.595292091, 0.00831604004, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Dark green"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.0600000024, 1.90999997, 0.0500000007),CFrame = CFrame.new(31.5712833, 2.60158253, -174.845505, 0.999896646, 0.0109243831, 0.00963271596, -0.0110270279, 0.999884963, 0.0106679602, -0.00951500423, -0.0107730059, 0.999899387),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.156863, 0.498039, 0.278431),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999896049, -0.0110270213, -0.0095150033, 0.0109243765, 0.999884367, -0.0107730031, 0.00963270571, 0.010667949, 0.999898791),C1 = CFrame.new(0.50176239, -0.18965435, 0.00355529785, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.239999995, 0.330000132, 1.07000005),CFrame = CFrame.new(31.0538464, 2.35736966, -174.842926, 0.999896646, 0.0109243831, 0.00963271596, -0.0110270279, 0.999884963, 0.0106679602, -0.00951500423, -0.0107730059, 0.999899387),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999896049, -0.0110270213, -0.0095150033, 0.0109243765, 0.999884367, -0.0107730031, 0.00963270571, 0.010667949, 0.999898791),C1 = CFrame.new(-0.0129508972, -0.439518929, -0.00144958496, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Dark green"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.0600000024, 0.290000111, 0.409999996),CFrame = CFrame.new(31.568552, 2.3516109, -174.842773, 0.999896646, 0.0109243831, 0.00963271596, -0.0110270279, 0.999884963, 0.0106679602, -0.00951500423, -0.0107730059, 0.999899387),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.156863, 0.498039, 0.278431),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999896049, -0.0110270213, -0.0095150033, 0.0109243765, 0.999884367, -0.0107730031, 0.00963270571, 0.010667949, 0.999898791),C1 = CFrame.new(0.50176239, -0.439655781, 0.00360107422, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Wedge = New("WedgePart",Gunty,"Wedge",{Material = Enum.Material.Metal,Size = Vector3.new(1.04999983, 0.280000031, 0.600000083),CFrame = CFrame.new(30.8336945, 1.78095484, -174.838608, 1.77882612e-07, 8.97198333e-08, 1.00000238, 1.86264515e-08, -1.00000238, 8.64238245e-08, 1.00000238, -1.86264515e-08, -1.48080289e-07),BottomSurface = Enum.SurfaceType.Smooth,})
mot = New("Motor",Wedge,"mot",{Part0 = Wedge,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1.74157321e-07, 1.39698386e-08, 1.00000179, 8.98216967e-08, -1.00000179, -1.39698386e-08, 1.00000179, 8.63292371e-08, -1.5180558e-07),C1 = CFrame.new(-0.226764679, -1.01831722, -0.00540161133, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Dark green"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.290000111, 1.09000003),CFrame = CFrame.new(31.0538521, 2.35747933, -174.842865, 0.999896646, 0.0109243831, 0.00963271596, -0.0110270279, 0.999884963, 0.0106679602, -0.00951500423, -0.0107730059, 0.999899387),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.156863, 0.498039, 0.278431),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999896049, -0.0110270213, -0.0095150033, 0.0109243765, 0.999884367, -0.0107730031, 0.00963270571, 0.010667949, 0.999898791),C1 = CFrame.new(-0.0129470825, -0.439409733, -0.0013885498, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.0700000003, 0.330000103, 0.229999959),CFrame = CFrame.new(30.5736599, 2.35258269, -174.833267, 0.999896646, 0.0109243831, 0.00963271596, -0.0110270279, 0.999884963, 0.0106679602, -0.00951500423, -0.0107730059, 0.999899387),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999896049, -0.0110270213, -0.0095150033, 0.0109243765, 0.999884367, -0.0107730031, 0.00963270571, 0.010667949, 0.999898791),C1 = CFrame.new(-0.493125916, -0.449655056, 0.00352478027, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.059999954, 0.180000111, 0.0599999726),CFrame = CFrame.new(31.2184467, 2.71683574, -174.327209, -0.00951508339, -0.010773031, 0.999899387, -0.269443661, 0.962987244, 0.00781129859, -0.962972045, -0.269341499, -0.0120655689),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.203922, 0.203922, 0.203922),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.00951507408, -0.269443542, -0.962971449, -0.0107730236, 0.962986648, -0.269341379, 0.999898791, 0.00781129394, -0.0120655652),C1 = CFrame.new(0.14276123, -0.0838527679, 0.519622803, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.059999954, 0.180000111, 0.0599999726),CFrame = CFrame.new(30.8884506, 2.71683574, -175.357208, -0.00951508619, -0.0107730282, 0.999899626, 0.248140991, 0.968642175, 0.0127975615, -0.968680024, 0.248237148, -0.00654343236),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.203922, 0.203922, 0.203922),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.00951507501, 0.248140842, -0.968679428, -0.0107730199, 0.968641579, 0.248236999, 0.99989897, 0.0127975577, -0.00654343236),C1 = CFrame.new(-0.177398682, -0.0763616562, -0.513442993, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.0900000036, 0.330000103, 0.449999958),CFrame = CFrame.new(31.5435581, 2.35188746, -174.842529, 0.999896646, 0.0109243831, 0.00963271596, -0.0110270279, 0.999884963, 0.0106679602, -0.00951500423, -0.0107730059, 0.999899387),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999896049, -0.0110270213, -0.0095150033, 0.0109243765, 0.999884367, -0.0107730031, 0.00963270571, 0.010667949, 0.999898791),C1 = CFrame.new(0.476764679, -0.439654827, 0.00360107422, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.00999999, 0.570000112, 1.05999994),CFrame = CFrame.new(31.0635662, 2.35679555, -174.843231, 0.999896646, 0.0109243831, 0.00963271596, -0.0110270279, 0.999884963, 0.0106679602, -0.00951500423, -0.0107730059, 0.999899387),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.203922, 0.203922, 0.203922),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999896049, -0.0110270213, -0.0095150033, 0.0109243765, 0.999884367, -0.0107730031, 0.00963270571, 0.010667949, 0.999898791),C1 = CFrame.new(-0.00322341919, -0.439983368, -0.0016784668, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.0900000036, 1.41000009, 0.0799999684),CFrame = CFrame.new(31.5487957, 2.34199333, -174.842697, 0.999896646, 0.0109243831, 0.00963271596, -0.0110270279, 0.999884963, 0.0106679602, -0.00951500423, -0.0107730059, 0.999899387),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999896049, -0.0110270213, -0.0095150033, 0.0109243765, 0.999884367, -0.0107730031, 0.00963270571, 0.010667949, 0.999898791),C1 = CFrame.new(0.482112885, -0.44948864, 0.00337219238, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.429999948, 0.300000042, 1),CFrame = CFrame.new(31.3557091, 1.79857111, -174.838364, 0.999896646, 0.0109243831, 0.00963271596, -0.0110270279, 0.999884963, 0.0106679602, -0.00951500423, -0.0107730059, 0.999899387),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999896049, -0.0110270213, -0.0095150033, 0.0109243765, 0.999884367, -0.0107730031, 0.00963270571, 0.010667949, 0.999898791),C1 = CFrame.new(0.294998169, -0.995002747, 4.57763672e-05, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.059999954, 0.180000111, 0.0599999726),CFrame = CFrame.new(30.6384506, 1.99683368, -175.357208, -0.00951508339, -0.010773031, 0.999899387, -0.269443661, 0.962987244, 0.00781129859, -0.962972045, -0.269341499, -0.0120655689),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.203922, 0.203922, 0.203922),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.00951507408, -0.269443542, -0.962971449, -0.0107730236, 0.962986648, -0.269341379, 0.999898791, 0.00781129394, -0.0120655652),C1 = CFrame.new(-0.419433594, -0.7990098, -0.523529053, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.059999954, 0.26000011, 0.0599999726),CFrame = CFrame.new(31.0184479, 1.71683359, -174.307205, -0.00951508526, -0.010773032, 0.999899387, -0.0110270474, 0.999884665, 0.0106679332, -0.999896705, -0.0109243607, -0.00963272899),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.203922, 0.203922, 0.203922),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.00951507501, -0.0110270362, -0.999896109, -0.0107730227, 0.999884129, -0.0109243607, 0.999898791, 0.0106679285, -0.00963272713),C1 = CFrame.new(-0.0463790894, -1.08613729, 0.527038574, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.059999954, 0.180000111, 0.0599999726),CFrame = CFrame.new(30.6384487, 2.7168355, -174.327209, -0.00951508339, -0.010773031, 0.999899387, -0.269443661, 0.962987244, 0.00781129859, -0.962972045, -0.269341499, -0.0120655689),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.203922, 0.203922, 0.203922),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.00951507408, -0.269443542, -0.962971449, -0.0107730236, 0.962986648, -0.269341379, 0.999898791, 0.00781129394, -0.0120655652),C1 = CFrame.new(-0.437175751, -0.0901889801, 0.514038086, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.059999954, 0.180000111, 0.0599999726),CFrame = CFrame.new(31.2084503, 2.7168355, -175.357208, -0.00951508619, -0.0107730282, 0.999899626, 0.248140991, 0.968642175, 0.0127975615, -0.968680024, 0.248237148, -0.00654343236),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.203922, 0.203922, 0.203922),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.00951507501, 0.248140842, -0.968679428, -0.0107730199, 0.968641579, 0.248236999, 0.99989897, 0.0127975577, -0.00654343236),C1 = CFrame.new(0.142566681, -0.072865963, -0.510360718, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.100000001, 0.790000141, 0.0799999684),CFrame = CFrame.new(31.6096954, 3.40187716, -174.848618, 0.999896646, 0.0109243831, 0.00963271596, -0.0110270279, 0.999884963, 0.0106679602, -0.00951500423, -0.0107730059, 0.999899387),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999896049, -0.0110270213, -0.0095150033, 0.0109243765, 0.999884367, -0.0107730031, 0.00963270571, 0.010667949, 0.999898791),C1 = CFrame.new(0.531375885, 0.610999107, 0.0093536377, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Wedge = New("WedgePart",Gunty,"Wedge",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.13999975, 0.230000034, 0.560000122),CFrame = CFrame.new(31.0786934, 3.13681054, -174.572098, 1.00000238, 2.2349559e-07, -2.21654773e-07, 2.05182005e-07, -1.00000215, 2.75671482e-07, -1.9185245e-07, -3.4738332e-07, -1.00000238),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.203922, 0.203922, 0.203922),})
mot = New("Motor",Wedge,"mot",{Part0 = Wedge,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1.00000179, 2.06011464e-07, -1.95577741e-07, 2.23604729e-07, -1.00000155, -3.41795385e-07, -2.17929482e-07, 2.81259418e-07, -1.00000179),C1 = CFrame.new(0.000720977783, 0.337183952, 0.277893066, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.059999954, 0.180000111, 0.0599999726),CFrame = CFrame.new(31.5084496, 2.04683304, -174.327209, -0.00951508433, -0.0107730264, 0.999899626, 0.248140842, 0.968642294, 0.0127975615, -0.968680143, 0.248236969, -0.00654343609),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.203922, 0.203922, 0.203922),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.00951507408, 0.248140693, -0.968679547, -0.010773018, 0.968641758, 0.24823682, 0.99989897, 0.0127975577, -0.00654343609),C1 = CFrame.new(0.440120697, -0.750608444, 0.515274048, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.07999992, 0.560000122, 1.07999992),CFrame = CFrame.new(31.0814381, 3.53226137, -174.855682, 0.999896646, 0.0109243831, 0.00963271596, -0.0110270279, 0.999884963, 0.0106679602, -0.00951500423, -0.0107730059, 0.999899387),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.203922, 0.203922, 0.203922),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999896049, -0.0110270213, -0.0095150033, 0.0109243765, 0.999884367, -0.0107730031, 0.00963270571, 0.010667949, 0.999898791),C1 = CFrame.new(0.00180435181, 0.735672951, -0.00140380859, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Dark green"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.03999996, 0.290000111, 0.189999968),CFrame = CFrame.new(31.0686169, 2.35712481, -174.467972, 0.999896646, 0.0109243831, 0.00963271596, -0.0110270279, 0.999884963, 0.0106679602, -0.00951500423, -0.0107730059, 0.999899387),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.156863, 0.498039, 0.278431),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999896049, -0.0110270213, -0.0095150033, 0.0109243765, 0.999884367, -0.0107730031, 0.00963270571, 0.010667949, 0.999898791),C1 = CFrame.new(-0.00174713135, -0.443641663, 0.373596191, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Dark green"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.0799999386, 0.290000111, 0.189999968),CFrame = CFrame.new(30.5586605, 2.35274792, -174.833176, 0.999896646, 0.0109243831, 0.00963271596, -0.0110270279, 0.999884963, 0.0106679602, -0.00951500423, -0.0107730059, 0.999899387),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.156863, 0.498039, 0.278431),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999896049, -0.0110270213, -0.0095150033, 0.0109243765, 0.999884367, -0.0107730031, 0.00963270571, 0.010667949, 0.999898791),C1 = CFrame.new(-0.508125305, -0.449654579, 0.00347900391, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.059999954, 0.180000111, 0.0599999726),CFrame = CFrame.new(31.4684525, 1.99683356, -175.357208, -0.00951508339, -0.010773031, 0.999899387, -0.269443661, 0.962987244, 0.00781129859, -0.962972045, -0.269341499, -0.0120655689),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.203922, 0.203922, 0.203922),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.00951507408, -0.269443542, -0.962971449, -0.0107730236, 0.962986648, -0.269341379, 0.999898791, 0.00781129394, -0.0120655652),C1 = CFrame.new(0.410480499, -0.789942741, -0.515533447, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.059999954, 0.26000011, 0.0599999726),CFrame = CFrame.new(31.0184479, 1.70683408, -175.347198, -0.00951508526, -0.010773032, 0.999899387, -0.0110270474, 0.999884665, 0.0106679332, -0.999896705, -0.0109243607, -0.00963272899),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.203922, 0.203922, 0.203922),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.00951507501, -0.0110270362, -0.999896109, -0.0107730227, 0.999884129, -0.0109243607, 0.999898791, 0.0106679285, -0.00963272713),C1 = CFrame.new(-0.0363731384, -1.08493185, -0.512954712, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.059999954, 0.180000111, 0.0599999726),CFrame = CFrame.new(31.5084476, 2.71683526, -174.327209, -0.00951508339, -0.010773031, 0.999899387, -0.269443661, 0.962987244, 0.00781129859, -0.962972045, -0.269341499, -0.0120655689),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.203922, 0.203922, 0.203922),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.00951507408, -0.269443542, -0.962971449, -0.0107730236, 0.962986648, -0.269341379, 0.999898791, 0.00781129394, -0.0120655652),C1 = CFrame.new(0.432731628, -0.0806851387, 0.522415161, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gunty,"Part",{BrickColor = BrickColor.new("Dark green"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.290000111, 1.09000003),CFrame = CFrame.new(31.3738632, 2.35747814, -174.842865, 0.999896646, 0.0109243831, 0.00963271596, -0.0110270279, 0.999884963, 0.0106679602, -0.00951500423, -0.0107730059, 0.999899387),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.156863, 0.498039, 0.278431),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999896049, -0.0110270213, -0.0095150033, 0.0109243765, 0.999884367, -0.0107730031, 0.00963270571, 0.010667949, 0.999898791),C1 = CFrame.new(0.307029724, -0.435914993, 0.00169372559, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})


local NewInstance = function(instance,parent,properties)
	local inst = Instance.new(instance,parent)
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end

local HW = NewInstance('Weld',char,{Part0 = ra, Part1 = Handle, C0 = CF(0, 0, 0) * angles(0,0,0)})

ArmorColorParts = {}
ArmorColorParts2 = {}
NeonColorParts = {}
local all, last = {}, nil
function scan(p)
  for _, v in pairs(p:GetChildren()) do
    if v:IsA("BasePart") then
      if v.BrickColor == BrickColor.new("Black") then
        table.insert(ArmorColorParts, v)
      end
	if v.BrickColor == BrickColor.new("Medium stone grey") then
        table.insert(ArmorColorParts2, v)
      end
      if v.BrickColor == BrickColor.new("Dark green") then
        table.insert(NeonColorParts, v)
      end
      if last then
        local w = Instance.new("Weld")
        w.Part0, w.Part1 = last, v
        w.C0 = v.CFrame:toObjectSpace(last.CFrame):inverse()
        w.Parent = last
      end
      table.insert(all, v)
      last = v
    end
    scan(v)
  end
end
scan(Gunty)
for _, v in pairs(all) do
  v.Anchored = false
  v.CanCollide = false
end
-------------------------------------------------------
--Start Customization--
-------------------------------------------------------
local Player_Size = 1
if Player_Size ~= 1 then
root.Size = root.Size * Player_Size
tors.Size = tors.Size * Player_Size
hed.Size = hed.Size * Player_Size
ra.Size = ra.Size * Player_Size
la.Size = la.Size * Player_Size
rl.Size = rl.Size * Player_Size
ll.Size = ll.Size * Player_Size
----------------------------------------------------------------------------------
rootj.Parent = root
neck.Parent = tors
RW.Parent = tors
LW.Parent = tors
RH.Parent = tors
LH.Parent = tors
----------------------------------------------------------------------------------
rootj.C0 = RootCF * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0))
rootj.C1 = RootCF * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0))
neck.C0 = necko * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0))
neck.C1 = CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * angles(Rad(-90), Rad(0), Rad(180))
RW.C0 = CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0)) --* RIGHTSHOULDERC0
LW.C0 = CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0)) --* LEFTSHOULDERC0
----------------------------------------------------------------------------------
RH.C0 = CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
LH.C0 = CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
RH.C1 = CF(0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
LH.C1 = CF(-0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
--hat.Parent = Character
end
----------------------------------------------------------------------------------
local SONG = 1547042045
local SONG2 = 0
local Music = Instance.new("Sound",tors)
Music.Volume = 2.5
Music.Looped = true
Music.Pitch = 1 --Pitcher
----------------------------------------------------------------------------------
local equipped = false
local idle = 0
local change = 1
local val = 0
local toim = 0
local idleanim = 0.4
local sine = 0
local Mode = 1
----------------------------------------------------------------------------------
hum.WalkSpeed = 8
hum.JumpPower = 57
hum.Animator.Parent = nil
local naeeym2 = IT("BillboardGui",char)
naeeym2.AlwaysOnTop = true
naeeym2.Size = UDim2.new(5,35,2,15)
naeeym2.StudsOffset = Vector3.new(0,2,0)
naeeym2.MaxDistance = 75
naeeym2.Adornee = hed
naeeym2.Name = "Name"
--naeeym2.PlayerToHideFrom = Player
local tecks2 = IT("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.TextScaled = true
tecks2.BorderSizePixel = 0
tecks2.Text = "Normal"
tecks2.Font = "Fantasy"
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.fromRGB(0, 0, 0)
tecks2.TextStrokeColor3 = Color3.fromRGB(40, 127, 71)
tecks2.Size = UDim2.new(1,0,0.5,0)
tecks2.Parent = naeeym2
-------------------------------------------------------
--End Customization--
-------------------------------------------------------


-------------------------------------------------------
--Start Attacks N Stuff--
-------------------------------------------------------
function resetmode()
	tecks2.Text = "Normal"
	tecks2.TextColor3 = Color3.fromRGB(0, 0, 0)
	tecks2.TextStrokeColor3 = Color3.fromRGB(40, 127, 71)
  for i, v in pairs(ArmorColorParts) do
    v.BrickColor = BrickColor.new("Black")
    v.Material = "SmoothPlastic"
    v.Transparency = 0
  end
 for i, v in pairs(ArmorColorParts2) do
    v.BrickColor = BrickColor.new("Medium stone grey")
    v.Material = "Metal"
    v.Transparency = 0
  end
  for i, v in pairs(NeonColorParts) do
    maincolor = BrickColor.new("Dark green")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
	Mode = 1
  SONG = 1547042045
end
function Taunt()
    attack = true
    hum.WalkSpeed = 0
        TAUNT:Play()
	repeat
        swait()
        TAUNT.Parent = tors
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(25)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-3 - 1.5 * Cos(sine / 7)), Rad(0), Rad(-25)), 0.3)
        RH.C0 = clerp(RH.C0, CF(.8* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, .2* Player_Size) * angles(Rad(0), Rad(45), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(0)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-75), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(0)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.08 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(145), Rad(-20), Rad(25)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.08 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(78 + 3.5 * Cos(sine / 20)), Rad(-25), Rad(-20)), 0.1)
	until TAUNT.Playing == false
	attack = false
	hum.WalkSpeed = 8
end
function attackone()
	attack = true
	hum.WalkSpeed = 3.01
	for i = 0, 1.7, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(10), Rad(0), Rad(-40)), 0.3)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-10), Rad(0), Rad(40)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -1 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(0), Rad(75), Rad(0)) * angles(Rad(-7), Rad(0), Rad(-7)), 0.3)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-65), Rad(0)) * angles(Rad(-10), Rad(0), Rad(-25)), 0.3)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, .3* Player_Size) * angles(Rad(90), Rad(-7.5 * Sin(sine / 20)), Rad(45)), 0.3)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25), Rad(7.5 * Sin(sine / 20)), Rad(-25)), 0.3)
	end
	Cso("203426541", ra, 10, 1)
	HitboxFunction(root.CFrame * CF(0, 0, -2), 0.01, 1, 1, 1, 7, 10, 20, 3, "Normal")
	CameraEnshaking(2, 5)
	for i = 0, 1.4, 0.1 do
		swait()
		BlockEffect(maincolor, ra.CFrame, 21, 41, 21, -2, -3, -2, 0.08, 2)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, -.5, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(5), Rad(0), Rad(55)), 0.3)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(20), Rad(0), Rad(-55)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.8 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(0), Rad(87), Rad(0)) * angles(Rad(-30), Rad(0), Rad(15)), 0.3)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -1 - 0.1 * Cos(sine / 20)* Player_Size, -.1* Player_Size) * angles(Rad(0), Rad(-87), Rad(0)) * angles(Rad(-5), Rad(0), Rad(9)), 0.3)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, -.4* Player_Size) * angles(Rad(90), Rad(-7.5 * Sin(sine / 20)), Rad(35)), 0.3)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-25), Rad(7.5 * Sin(sine / 20)), Rad(-25)), 0.3)
	end
	hum.WalkSpeed = 8
	attack = false
end
function attacktwo()
	attack = true
	hum.WalkSpeed = 3.01
	for i = 0, 1.7, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(25), Rad(0), Rad(0)), 0.3)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-5), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -1 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(0), Rad(76), Rad(0)) * angles(Rad(-7), Rad(0), Rad(-45)), 0.3)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(0), Rad(-76), Rad(0)) * angles(Rad(-10), Rad(0), Rad(-25)), 0.3)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(-7.5 * Sin(sine / 20)), Rad(8)), 0.3)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(35), Rad(7.5 * Sin(sine / 20)), Rad(-8)), 0.3)
	end
	Cso("203426541", rl, 10, 1)
	HitboxFunction(root.CFrame * CF(0, 0, -2), 0.01, 1, 1, 1, 7, 10, 20, 3, "Normal")
	CameraEnshaking(2, 3)
	for i = 0, 1.4, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, -.5, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-25), Rad(0), Rad(0)), 0.3)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(5), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -1 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(0), Rad(76), Rad(0)) * angles(Rad(-7), Rad(0), Rad(65)), 0.3)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -1.1 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(0), Rad(-76), Rad(0)) * angles(Rad(-10), Rad(0), Rad(35)), 0.3)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-20), Rad(-7.5 * Sin(sine / 20)), Rad(8)), 0.3)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-25), Rad(7.5 * Sin(sine / 20)), Rad(-8)), 0.3)
	end
	hum.WalkSpeed = 8
	attack = false
end
function attackthree()
	attack = true
	hum.WalkSpeed = 3.01
	for i = 0, 1.4, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-25), Rad(0), Rad(0)), 0.3)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -1 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(0), Rad(76), Rad(0)) * angles(Rad(-15), Rad(0), Rad(-30)), 0.3)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -1 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(0), Rad(-76), Rad(0)) * angles(Rad(-15), Rad(0), Rad(30)), 0.3)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(90), Rad(0), Rad(35)), 0.3)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(90), Rad(0), Rad(-35)), 0.3)
	end
	Cso("203426541", hed, 10, 1)
	for i = 0, 1.7, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(25), Rad(0), Rad(0)), 0.3)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, -.1* Player_Size) * angles(Rad(0), Rad(76), Rad(0)) * angles(Rad(-5), Rad(0), Rad(30)), 0.3)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, -.1* Player_Size) * angles(Rad(0), Rad(-76), Rad(0)) * angles(Rad(-5), Rad(0), Rad(-30)), 0.3)
		RW.C0 = clerp(RW.C0, CF(1.3* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, -.6* Player_Size) * angles(Rad(90), Rad(0), Rad(-35)), 0.3)
		LW.C0 = clerp(LW.C0, CF(-1.3* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, -.6* Player_Size) * angles(Rad(90), Rad(0), Rad(35)), 0.3)
	end
	CameraEnshaking(2, 8)
	Cso("260435136", hed, 10, .9)
	BlockEffect(maincolor, Handle.CFrame * CF(0, -2, 0), 11, 11, 11, 10, 10, 10, 0.04, 1)
	BlockEffect(BrickC("Really black"), Handle.CFrame * CF(0, -2, 0), 6, 6, 6, 5, 5, 5, 0.04, 1)
	HitboxFunction(root.CFrame * CF(0, 0, -2), 0.01, 1, 1, 1, 7, 10, 20, 3, "Normal")
	for i = 0, 1.8, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-25), Rad(0), Rad(0)), 0.2)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.2)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, -.1* Player_Size) * angles(Rad(0), Rad(76), Rad(0)) * angles(Rad(-15), Rad(0), Rad(-30)), 0.2)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, -.1* Player_Size) * angles(Rad(0), Rad(-76), Rad(0)) * angles(Rad(-15), Rad(0), Rad(30)), 0.2)
		RW.C0 = clerp(RW.C0, CF(1.3* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(90), Rad(0), Rad(35)), 0.2)
		LW.C0 = clerp(LW.C0, CF(-1.3* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(90), Rad(0), Rad(-35)), 0.2)
	end
	hum.WalkSpeed = 8
	attack = false
end
function Power_Burst()
	hum.WalkSpeed = 4
	attack = true
	Cso("163619849", Handle, 10, 1.35)
	for i = 0,4.3,0.1 do
		swait()
PixelBlock(3,1,"Add",Handle.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.2,0.2,0.2,0.01,maincolor,0)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-0), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-23 - 2.5 * Sin(sine / 20)), Rad(-0), Rad(-30)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-2)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(2)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(156), Rad(0), Rad(25 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
	end
	CameraEnshaking(2.5, 20)
	Cso("539294959", Handle, 10, .9)
	BlockEffect(maincolor, Handle.CFrame * CF(0, -0, 0), 16, 16, 16, 22, 22, 22, 0.04, 1)
	BlockEffect(BrickC("Really black"), Handle.CFrame * CF(0, -0, 0), 10, 10, 10, 12, 12, 12, 0.04, 1)
	HitboxFunction(root.CFrame * CF(0, 0, -0), 0.01, 1, 1, 1, 19, 30, 75, 35, "Normal")
	for i = 0,3,0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-0), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-4 - 2.5 * Sin(sine / 20)), Rad(-0), Rad(-30)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-2)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(2)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.01 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(156), Rad(0), Rad(25 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
	end
	hum.WalkSpeed = 8
	attack = false
end
function Magic_Bombs()
	attack = true
	hum.WalkSpeed = 0
local GYRO = IT("BodyGyro",root)
GYRO.D = 100
GYRO.P = 2000
GYRO.MaxTorque = VT(0,4000000,0)
GYRO.cframe = CF(root.Position,mouse.Hit.p)
	for i = 0,3.6,0.1 do
			swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.2)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(-90)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-9), Rad(0), Rad(-10)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-8), Rad(0), Rad(10)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.2)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(25), Rad(0), Rad(-15)), 0.2)
	end
	CameraEnshaking(1, 6)
        GYRO:Destroy()
	Cso("588734356", Handle, 10, 1.05)
	BlockEffect(maincolor, Handle.CFrame * CF(0, -16, 0), 7, 7, 7, 9, 9, 9, 0.07, 1)
	BlockEffect(BrickC("Crimson"), Handle.CFrame * CF(0, -16, 0), 2, 2, 2, 4, 4, 4, 0.05, 1)
	HitboxFunction(root.CFrame * CF(0, 0, -20), 0.01, 1, 1, 1, 6.5, 14, 24, 2, "Normal")
	for i = 0,2,0.1 do
			swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.2)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(-90)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-9), Rad(0), Rad(-10)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-8), Rad(0), Rad(10)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(134)), 0.2)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(25), Rad(0), Rad(-15)), 0.2)
	end
local GYRO = IT("BodyGyro",root)
GYRO.D = 100
GYRO.P = 2000
GYRO.MaxTorque = VT(0,4000000,0)
GYRO.cframe = CF(root.Position,mouse.Hit.p)
	for i = 0,2.4,0.1 do
			swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(-90)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-9), Rad(0), Rad(-10)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-8), Rad(0), Rad(10)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.2)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(25), Rad(0), Rad(-15)), 0.2)
	end
        GYRO:Destroy()
	CameraEnshaking(1, 6)
	Cso("588734356", Handle, 10, 1.05)
	BlockEffect(maincolor, Handle.CFrame * CF(0, -16, 0), 7, 7, 7, 9, 9, 9, 0.07, 1)
	BlockEffect(BrickC("Crimson"), Handle.CFrame * CF(0, -16, 0), 2, 2, 2, 4, 4, 4, 0.05, 1)
	HitboxFunction(root.CFrame * CF(0, 0, -20), 0.01, 1, 1, 1, 6,5, 14, 24, 2, "Normal")
	for i = 0,2,0.1 do
			swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(-90)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-9), Rad(0), Rad(-10)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-8), Rad(0), Rad(10)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(134)), 0.2)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(25), Rad(0), Rad(-15)), 0.2)
	end
local GYRO = IT("BodyGyro",root)
GYRO.D = 100
GYRO.P = 2000
GYRO.MaxTorque = VT(0,4000000,0)
GYRO.cframe = CF(root.Position,mouse.Hit.p)
	for i = 0,2.4,0.1 do
			swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(-90)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-9), Rad(0), Rad(-10)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-8), Rad(0), Rad(10)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.2)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(25), Rad(0), Rad(-15)), 0.2)
	end
        GYRO:Destroy()
	CameraEnshaking(1, 6)
	Cso("588734356", Handle, 10, 1.05)
	BlockEffect(maincolor, Handle.CFrame * CF(0, -16, 0), 7, 7, 7, 9, 9, 9, 0.07, 1)
	BlockEffect(BrickC("Crimson"), Handle.CFrame * CF(0, -16, 0), 2, 2, 2, 4, 4, 4, 0.05, 1)
	HitboxFunction(root.CFrame * CF(0, 0, -20), 0.01, 1, 1, 1, 6.5, 14, 24, 2, "Normal")
	for i = 0,2,0.1 do
			swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(-90)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-9), Rad(0), Rad(-10)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-8), Rad(0), Rad(10)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(134)), 0.2)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(25), Rad(0), Rad(-15)), 0.2)
	end
	attack = false
	hum.WalkSpeed = 8
end
function Dangerous_Field()
	attack = true
	hum.WalkSpeed = 0
	for i = 0,10,0.1 do
			swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0-255.45*i)), 0.2)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(-90)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2), Rad(0), Rad(-2.1)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-8), Rad(0), Rad(10)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(2.1), Rad(0), Rad(90)), 0.2)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(2.1), Rad(0), Rad(-90)), 0.2)
	CameraEnshaking(1, 7)
	Cso("588734356", Handle, 10, 1.2)
	BlockEffect(maincolor, Handle.CFrame * CF(0, -8, 0), 9, 9, 9, 11, 11, 11, 0.07, 1)
	BlockEffect(BrickC("Crimson"), Handle.CFrame * CF(0, -8, 0), 3, 3, 3, 5, 5, 5, 0.05, 1)
	HitboxFunction(Handle.CFrame * CF(0, 0, -10.3), 0.05, 1, 1, 1, 7.3, 15, 20, 3, "Normal")
	HitboxFunction(Handle.CFrame * CF(0, 0, -0), 0.05, 1, 1, 1, 5, 2, 3, 10, "Normal")
        end
	attack = false
	hum.WalkSpeed = 8
end
function Shockwave()
	attack = true
	hum.WalkSpeed = 0
	for i = 0,4,0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-20)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(25)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(25 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
	end
	coroutine.resume(coroutine.create(function() 
        BlockEffect(maincolor, rl.CFrame * CF(-1, -0, -5), 4, 4, 4, 5, 5, 5, 0.05, 1)
        BlockEffect(maincolor, rl.CFrame * CF(-3, -0, -5), 4, 4, 4, 5, 5, 5, 0.05, 1)
        BlockEffect(maincolor, rl.CFrame * CF(2, -0, -5), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(rl.CFrame * CF(-1, 0, -7), 0.05, 1, 1, 1, 5, 20, 25, 0, "Snare")
	HitboxFunction(rl.CFrame * CF(-3, 0, -7), 0.05, 1, 1, 1, 5, 20, 25, 0, "Snare")
	HitboxFunction(rl.CFrame * CF(2, 0, -7), 0.05, 1, 1, 1, 5, 20, 25, 0, "Snare")
	CameraEnshaking(1, 7)
        wait(0.05)
        BlockEffect(maincolor, rl.CFrame * CF(-0.8, -0, -10), 4, 4, 4, 5, 5, 5, 0.05, 1)
        BlockEffect(maincolor, rl.CFrame * CF(-2.8, -0, -10), 4, 4, 4, 5, 5, 5, 0.05, 1)
        BlockEffect(maincolor, rl.CFrame * CF(1.8, -0, -10), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(rl.CFrame * CF(-0.8, 0, -12), 0.05, 1, 1, 1, 5, 20, 20, 10, "Snare")
	HitboxFunction(rl.CFrame * CF(-2.8, 0, -12), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	HitboxFunction(rl.CFrame * CF(1.8, 0, -12), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	CameraEnshaking(1, 7)
        wait(0.05)
        BlockEffect(maincolor, rl.CFrame * CF(-0.6, -0, -15), 4, 4, 4, 5, 5, 5, 0.05, 1)
        BlockEffect(maincolor, rl.CFrame * CF(-2.6, -0, -15), 4, 4, 4, 5, 5, 5, 0.05, 1)
        BlockEffect(maincolor, rl.CFrame * CF(1.6, -0, -15), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(rl.CFrame * CF(-0.6, 0, -17), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	HitboxFunction(rl.CFrame * CF(-2.6, 0, -17), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	HitboxFunction(rl.CFrame * CF(1.6, 0, -17), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	CameraEnshaking(1, 7)
        wait(0.05)
        BlockEffect(maincolor, rl.CFrame * CF(-0.4, -0, -20), 4, 4, 4, 5, 5, 5, 0.05, 1)
        BlockEffect(maincolor, rl.CFrame * CF(-2.4, -0, -20), 4, 4, 4, 5, 5, 5, 0.05, 1)
        BlockEffect(maincolor, rl.CFrame * CF(1.4, -0, -20), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(rl.CFrame * CF(-0.4, 0, -22), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	HitboxFunction(rl.CFrame * CF(-2.4, 0, -22), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	HitboxFunction(rl.CFrame * CF(1.4, 0, -22), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	CameraEnshaking(1, 7)
        wait(0.05)
        BlockEffect(maincolor, rl.CFrame * CF(-0.2, -0, -25), 4, 4, 4, 5, 5, 5, 0.05, 1)
        BlockEffect(maincolor, rl.CFrame * CF(-2.2, -0, -25), 4, 4, 4, 5, 5, 5, 0.05, 1)
        BlockEffect(maincolor, rl.CFrame * CF(1.2, -0, -25), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(rl.CFrame * CF(-0.2, 0, -27), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	HitboxFunction(rl.CFrame * CF(-2.2, 0, -27), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	HitboxFunction(rl.CFrame * CF(1.2, 0, -27), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	CameraEnshaking(1, 7)
        wait(0.05)
        BlockEffect(maincolor, rl.CFrame * CF(-0, -0, -30), 4, 4, 4, 5, 5, 5, 0.05, 1)
        BlockEffect(maincolor, rl.CFrame * CF(-2, -0, -30), 4, 4, 4, 5, 5, 5, 0.05, 1)
        BlockEffect(maincolor, rl.CFrame * CF(1, -0, -30), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(rl.CFrame * CF(-0, 0, -32), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	HitboxFunction(rl.CFrame * CF(-2, 0, -32), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	HitboxFunction(rl.CFrame * CF(1, 0, -32), 0.05, 1, 1, 1, 5, 20, 25, 10, "Snare")
	CameraEnshaking(1, 7)
	end))
	Cso("440145223", Handle, 10, 1.05)
	for i = 1,7,0.1 do
	rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -1.4 + 0.1 * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(0)), 0.15)
	tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(35), Rad(0), Rad(0)), 0.3)
	RH.C0 = clerp(RH.C0, CF(1, .4 - 0.1 * Cos(sine / 20), -.6 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(45)), 0.15)
	LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(-0)), 0.15)
	RW.C0 = clerp(RW.C0, CF(1.5, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(25)), 0.1)
	LW.C0 = clerp(LW.C0, CF(-1.5, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(-25)), 0.1)
	end
	wait(.6)
	hum.WalkSpeed = 8
	attack = false
end
function Pulse()
	attack = true
	hum.WalkSpeed = 0
local GYRO = IT("BodyGyro",root)
GYRO.D = 100
GYRO.P = 2000
GYRO.MaxTorque = VT(0,4000000,0)
GYRO.cframe = CF(root.Position,mouse.Hit.p)
	for i = 0,4,0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-0), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0 - 2.5 * Sin(sine / 20)), Rad(-0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-2)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(2)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(0 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
	end
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -5, -0), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(Handle.CFrame * CF(-0, -7, -0), 0.05, 1, 1, 1, 5, 30, 40, 0, "Freeze")
	CameraEnshaking(1, 25)
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -10, -0), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(Handle.CFrame * CF(-0, -12, -0), 0.05, 1, 1, 1, 5, 30, 40, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -15, -0), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(Handle.CFrame * CF(0, -17, -0), 0.05, 1, 1, 1, 5, 30, 40, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -20, -0), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(Handle.CFrame * CF(0, -22, -0), 0.05, 1, 1, 1, 5, 30, 40, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -25, -0), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(Handle.CFrame * CF(0, -27, -0), 0.05, 1, 1, 1, 5, 30, 40, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -30, -0), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(Handle.CFrame * CF(0, -32, -0), 0.05, 1, 1, 1, 5, 30, 40, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -35, -0), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(Handle.CFrame * CF(0, -37, -0), 0.05, 1, 1, 1, 5, 30, 40, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -40, -0), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(Handle.CFrame * CF(0, -42, -0), 0.05, 1, 1, 1, 5, 30, 40, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -45, -0), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(Handle.CFrame * CF(0, -47, -0), 0.05, 1, 1, 1, 5, 30, 40, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -50, -0), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(Handle.CFrame * CF(0, -52, -0), 0.05, 1, 1, 1, 5, 30, 40, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -55, -0), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(Handle.CFrame * CF(0, -57, -0), 0.05, 1, 1, 1, 5, 30, 40, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -60, -0), 4, 4, 4, 5, 5, 5, 0.05, 1)
	HitboxFunction(Handle.CFrame * CF(0, -62, -0), 0.05, 1, 1, 1, 5, 30, 40, 10, "Freeze")
	Cso("440145223", Handle, 10, 1.05)
        GYRO:Destroy()
	for i = 1,2,0.1 do
		swait()
PixelBlock(2,1,"Add",Handle.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.04,0.04,0.04,0.06,maincolor,0)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-0), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0 - 2.5 * Sin(sine / 20)), Rad(-0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-2)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(2)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(140), Rad(0), Rad(0 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
	end
	hum.WalkSpeed = 8
	attack = false
end
function LAZER()
	attack = true
	hum.WalkSpeed = 0.03
	for i = 0,4,0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-0), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0 - 2.5 * Sin(sine / 20)), Rad(-0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-2)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(2)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(0 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
	end
        LAZOR:Play()
local GYRO = IT("BodyGyro",root)
GYRO.D = 100
GYRO.P = 2000
GYRO.MaxTorque = VT(0,4000000,0)
GYRO.cframe = CF(root.Position,mouse.Hit.p)
        repeat
        swait(2)
PixelBlock(2,1,"Add",Handle.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.3,0.3,0.3,0.4,maincolor,0)
PixelBlock(4,3,"Add",Handle.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,0.5,0.5,maincolor,0)
        GYRO.cframe = CF(root.Position,mouse.Hit.p)
        LAZOR.Parent = ra
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -5, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(-0, -7, -0), 0.05, 1, 1, 1, 5, 1, 5, 0, "Freeze")
	CameraEnshaking(1, 7)
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -10, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(-0, -12, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -15, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -17, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -20, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -22, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -25, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -27, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -30, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -32, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -35, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -37, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -40, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -42, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -45, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -47, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -50, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -52, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -55, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -57, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -60, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -62, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -65, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -67, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -70, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -72, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
        BlockEffect(maincolor, Handle.CFrame * CF(-0, -75, -0), 4, 4, 4, 5, 5, 5, 0.08, 1)
	HitboxFunction(Handle.CFrame * CF(0, -77, -0), 0.05, 1, 1, 1, 5, 3, 5, 10, "Freeze")
	until LAZOR.Playing == false
        GYRO:Destroy()
	hum.WalkSpeed = 8
	attack = false
end
function Spirit_Beam()
        attack = true
	hum.WalkSpeed = 0
local GYRO = IT("BodyGyro",root)
GYRO.D = 100
GYRO.P = 2000
GYRO.MaxTorque = VT(0,4000000,0)
GYRO.cframe = CF(root.Position,mouse.Hit.p)
	for i = 0,5,0.1 do
		swait()
                GYRO.cframe = CF(root.Position,mouse.Hit.p)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1.3 + 0.6 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(8 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.7 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5 + 3 * Sin(sine / 20)), Rad(0), Rad(10 + 3 * Sin(sine / 20))), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5 + 3 * Sin(sine / 20)), Rad(0), Rad(-10 + 3 * Sin(sine / 20))), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(-10 * Cos(sine / 20)), Rad(0 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(10 * Cos(sine / 20)), Rad(-0 + 2.5 * Sin(sine / 20))), 0.1)
        end
        ref = New("Part",m,"ref",{Anchored = true, CanCollide = false,Transparency = 1,Size = Vector3.new(0.200000018, 0.299999923, 0.2),Position = mouse.Hit.p,Color = Color3.new(1, 0, 0),})
	HitboxFunction(ref.CFrame * CF(0, -0, -0), 0.01, 1, 1, 1, 4, 25, 50, 1, "Normal")
        BlockEffect(maincolor, ref.CFrame * CF(-0, -0, -0), 4, 4, 4, 5, 5, 5, 0.07, 1)
	local beam = Instance.new("Part", workspace)
	beam.BrickColor = BrickColor.new("Fog")
	beam.FormFactor = "Custom"
	beam.Material = "Glass"
	beam.Transparency = 0.5
	beam.Anchored = true
	beam.Locked = true
	beam.CanCollide = false
	local distance = (Handle.CFrame.p - mouse.Hit.p).magnitude
	beam.Size = Vector3.new(1.05, 1.05, distance)
	beam.CFrame = CFrame.new(Handle.CFrame.p, mouse.Hit.p) * CFrame.new(0, 0, -distance / 2)
	game:GetService("Debris"):AddItem(beam, 0.14)
	local sound = Instance.new('Sound',Handle)
	sound.SoundId = 'rbxassetid://588697948'
	sound.Volume = 7
	sound.EmitterSize = 40
	sound.MaxDistance = 450
	sound:Play()
	game:GetService("Debris"):AddItem(beam, sound.TimeLength)
        GYRO:Destroy()
PixelBlock(3,1.5,"Add",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,0.5,0.6,maincolor,0)
PixelBlock(3,1.5,"Add",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,0.5,0.6,maincolor,0)
PixelBlock(3,1.5,"Add",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,0.5,0.6,maincolor,0)
PixelBlock(3,1.5,"Add",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,0.5,0.6,maincolor,0)
PixelBlock(3,1.5,"Add",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,0.5,0.6,maincolor,0)
PixelBlock(3,1.5,"Add",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,0.5,0.6,maincolor,0)
PixelBlock(3,1.5,"Add",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,0.5,0.6,maincolor,0)
PixelBlock(3,1.5,"Add",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,0.5,0.6,maincolor,0)
PixelBlock(3,1.5,"Add",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,0.5,0.6,maincolor,0)
PixelBlock(3,1.5,"Add",ref.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,0.5,0.6,maincolor,0)
        wait(0.3)
        attack = false
	hum.WalkSpeed = 8
        ref:Destroy()
end
function Distort()
	attack = true
	hum.WalkSpeed = 0
		local pos = root.Position
		root.CFrame = CF(mouse.Hit.p+Vector3.new(0,3,0),pos)
	Cso("261227592", tors, 10, 0.85)
	for i = 1,2.5,0.1 do
        swait()
        rootj.C0 = char.Torso.Neck.C0 * CFrame.Angles(math.random(-10,10),math.random(-10,10),math.random(-10,10))
        end
	attack = false
	hum.WalkSpeed = 8
end
function Ancient_Rage()
	attack = true
	hum.WalkSpeed = 4
	Cso("907329532", tors, 10, 1.05)
	for i = 1,14,0.1 do
        swait()
                rootj.C0 = char.Torso.Neck.C0 * CFrame.Angles(math.random(-10,10),math.random(-10,10),math.random(-10,10))
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-0 - 2.5 * Sin(sine / 20)), Rad(-0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-2)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(2)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(140), Rad(0), Rad(0 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
	for i, v in pairs(FindNearestHead(tors.CFrame.p, 7)) do
		if v:FindFirstChild("Head") then
                        Eviscerate(v)
		end
	end
        end
	attack = false
	hum.WalkSpeed = 8
end
function TTTTTTTTTTTaunt()
	attack = true
	hum.WalkSpeed = 0
        DTAUNT:Play()
        repeat
        swait()
        DTAUNT.Parent = tors
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 , 0.001 * Cos(sine / 20)) * RHCF * angles (math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 , 0.001 * Cos(sine / 20)) * LHCF * angles(math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.2, 0.5 + 0.05 * Sin(sine / 30), 0.001 * Cos(sine / 20)) * angles (math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.2, 0.5 + 0.05 * Sin(sine / 30), 0.001 * Cos(sine / 20)) * angles(math.random(-25,25),math.random(-25,25),math.random(-25,25)), 0.1)
	until DTAUNT.Playing == false
	attack = false
	hum.WalkSpeed = 8
end
function HAAH()
	attack = true
	hum.WalkSpeed = 0
	Cso("300208779", hed, 10, 1)
	for i = 0,9,0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 2)) * angles(Rad(-30), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-30 - 2.5 * Sin(sine / 2)), Rad(0), Rad(0)), 0.3)
		if Mrandom(1,15) == 1 then
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * CF(0, 0, 0 + ((1) - 1)) * angles(Rad(Mrandom(-15,15)), Rad(Mrandom(-15,15)), Rad(Mrandom(-15,15))), 1)
		end
		RH.C0 = clerp(RH.C0, CF(1, -1 - 0.1 * Cos(sine / 2), 0.025 * Cos(sine / 2)) * RHCF * angles(Rad(-4.5 - 7.5 * Sin(sine / 2)), Rad(0), Rad(-30)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -1 - 0.1 * Cos(sine / 2), 0.025 * Cos(sine / 2)) * LHCF * angles(Rad(-6.5 - 7.5 * Sin(sine / 2)), Rad(0), Rad(30)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 2), 0.025 * Cos(sine / 2)) * angles(Rad(-35 - 7.5 * Sin(sine / 2)), Rad(0), Rad(15 - 7.5 * Sin(sine / 2))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 2), 0.025 * Cos(sine / 2)) * angles(Rad(-35 - 7.5 * Sin(sine / 2)), Rad(0), Rad(-15 - 7.5 * Sin(sine / 2))), 0.1)
	end
	attack = false
	hum.WalkSpeed = 10
end
function again()
        attack = true
	hum.WalkSpeed = 0
        ITAUNT:Play()
        repeat
        swait()
        ITAUNT.Parent = tors
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.08)
	tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(15 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.08)
	RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-10.5), Rad(0), Rad(-25)), 0.08)
	LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-10.5), Rad(0), Rad(20)), 0.08)
	RW.C0 = clerp(RW.C0, CF(1.5, 0.8 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(-10 * Cos(sine / 20)), Rad(120 - 2.5 * Sin(sine / 20))), 0.1)
	LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(75), Rad(10 * Cos(sine / 20)), Rad(-0 + 2.5 * Sin(sine / 20))), 0.1)
	until ITAUNT.Playing == false
        attack = false
	hum.WalkSpeed = 8
end
function LunarSpin()
	attack = true
	hum.WalkSpeed = 0
	for i = 0,17,0.05 do
		CameraEnshaking(1, 5)
	        MagniDamage(tors, 47, 2, 5, 0, "Normal")
	        Effects.Spiral.Create(BrickC("Teal"), tors.CFrame * CF(0, 0, 0), 3, 3, 3, 4, 4, 4, 0.03)
		Effects.Block.Create(BrickC("Cyan"), ra.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
		swait()
		PixelBlock(1.5,14,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-360,360)),math.rad(math.random(-50,50))),3,3,3,0.3,maincolor,0)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0-255.45*i)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(110)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-110)), 0.1)
	end
	hum.WalkSpeed = 8
	attack = false
end
function Decapitate()
	local target = nil
	local targettorso = nil
	if mouse.Target.Parent ~= char and mouse.Target.Parent.Parent ~= char and mouse.Target.Parent:FindFirstChild("Humanoid") ~= nil then
		if mouse.Target.Parent.Humanoid.PlatformStand == false then
			target = mouse.Target.Parent.Humanoid
			targettorso = mouse.Target.Parent:FindFirstChild("Torso") or mouse.Target.Parent:FindFirstChild("UpperTorso")
			targethead = mouse.Target.Parent:FindFirstChild("Head")
		end
	end
	if target ~= nil then
		targettorso.Anchored = true
		attack = true
		hum.WalkSpeed = 0
		root.CFrame = targettorso.CFrame * CF(0,0,2.6)
		for i = 0,4.2,0.1 do
			swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-40)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(40)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-9), Rad(0), Rad(-10)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-8), Rad(0), Rad(10)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(115), Rad(0), Rad(35)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(25), Rad(0), Rad(-15)), 0.1)
		end
		local ModelHead01 = New("Model", char, "", {})
        local Humanoid01 = New("Humanoid", ModelHead01, "Humanoid", {})
        local Head01 = targethead:Clone()
        targethead.Transparency = 1
        Head01.Parent = ModelHead01
        local weldHead01 = Instance.new("Weld")
        weldHead01.Parent = Head01
        weldHead01.Part0 = targethead
        weldHead01.Part1 = Head01
        weldHead01.C1 = CFrame.new(0, 0, 0)
		targethead.face:Remove()
		weldHead01.Part0 = ra
        weldHead01.C1 = CFrame.new(0, 0, 1.2) * angles(math.rad(90), math.rad(0), math.rad(0))
		targettorso:BreakJoints()
		CreateSound("314390675", targettorso, 5, .7)
		for i = 0,3.2,0.1 do
			swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(-90)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(0)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(50)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(115), Rad(20), Rad(90)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(25), Rad(0), Rad(-15)), 0.1)
		end
		for i = 0,4.2,0.1 do
			swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-40)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(40)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(0)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(-0)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.4, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(185), Rad(0), Rad(15)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(-15)), 0.1)
		end
		CreateSound("541909763", targettorso, 5, .8)
		weldHead01:Destroy()
        Head01.CanCollide = true
        local bodyVelocity2 = Create("BodyVelocity")({
          velocity = Vector3.new(0, 10, 0) + root.CFrame.lookVector * 50,
          P = 5000,
          maxForce = Vector3.new(8000, 8000, 8000),
          Parent = Head01
        })
        game:GetService("Debris"):AddItem(bodyVelocity2, 0.05)
		for i = 0,6.2,0.1 do
			swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(40)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(-40)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(0)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(-0)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.4, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(-15)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(-15)), 0.1)
		end
		targettorso.Anchored = false
		attack = false
		hum.WalkSpeed = 8
		root.CFrame = targettorso.CFrame * CF(0,0,3.4)
	end
end
function BalanceSpin()
    attack = true
    hum.WalkSpeed = 2
    for i = 0,17,0.07 do
        CameraEnshaking(1, 5)
        MagniDamage(tors, 30, 7, 11, 0, "Normal")
        swait()
	Aura(5, 0.15, "Add", root.CFrame * CFrame.new(math.random(-25, 25), -6, math.random(-25, 25)) * CFrame.Angles(math.rad(90), 0, 0), 1.5, 1.5, 15, -0.015, maincolor, 0, "Brick")
	Aura(5, 0.15, "Add", root.CFrame * CFrame.new(math.random(-25, 25), -6, math.random(-25, 25)) * CFrame.Angles(math.rad(90), 0, 0), 1.5, 1.5, 15, -0.015, BrickColor.new("Black"), 0, "Brick")
	Aura(5, 0.15, "Add", root.CFrame * CFrame.new(math.random(-25, 25), -6, math.random(-25, 25)) * CFrame.Angles(math.rad(90), 0, 0), 1.5, 1.5, 15, -0.015, maincolor, 0, "Brick")
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0-255.45*i)), 0.15)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(110)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-110)), 0.1)
    end
    hum.WalkSpeed = 8
    attack = false
end

function BARK()
	attack = true
	hum.WalkSpeed = 0
	BATAUNT:Play()
	repeat
	BATAUNT.Parent = tors
	swait()
	rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.5 + 0.02 * Cos(sine / 2)) * angles(Rad(-2), Rad(1), Rad(15)), 0.1)
	tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(19 + 1 * Cos(sine / 25)), Rad(0), Rad(-15)), 0.1)
	RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.35) * angles(Rad(90 - 2 * Cos(sine / 1)), Rad(0), Rad(-50)), 0.1)
	LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.15) * angles(Rad(70 + 2 * Cos(sine / 1)), Rad(-7), Rad(70)), 0.1)
	RH.C0 = clerp(RH.C0, CF(1, -0.5 - 0.02 * Cos(sine / 2), -0.2) * RHCF * angles(Rad(-4), Rad(0), Rad(-10 + 0.05 * math.cos(sine / 25))), 0.1)
	LH.C0 = clerp(LH.C0, CF(-1, -0.5 - 0.02 * Cos(sine / 2), -0.2) * LHCF * angles(Rad(-4), Rad(0), Rad(10 + 0.05 * Cos(sine / 25))), 0.1)
	until BATAUNT.Playing == false
	attack = false
	hum.WalkSpeed = 8
end
function CreateSound(ID, PARENT, VOLUME, PITCH)
	local NSound = nil
	coroutine.resume(coroutine.create(function()
		NSound = Instance.new("Sound", PARENT)
		NSound.Volume = VOLUME
		NSound.Pitch = PITCH
		NSound.SoundId = "http://www.roblox.com/asset/?id="..ID
		swait()
		NSound:play()
		game:GetService("Debris"):AddItem(NSound, 10)
	end))
	return NSound
end
function Bark_Splosion()
	attack = true
	for i = 0,2,0.05 do
		swait()
		Effects.Block.Create(BrickC("Cool yellow"), ra.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
		Effects.Block.Create(BrickC("Medium stone grey"), la.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-20)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(25)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(25 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
	end
	CreateSound("331666100", tors, 10, 1)
	Effects.Ring.Create(BrickC("Cool yellow"), root.CFrame * CF(0, -2.3, 0) * angles(Rad(90),Rad(-1),Rad(0)), 2.5, 2.5, 40, 3, 3, 45, 0.01)
	MagniDamage(tors, 34, 25, 50, 15, "DarkUp")
	CameraEnshaking(1.5, 10)  
	for i = 1,2,0.1 do
        swait()
	PixelBlock(2,7,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.3,maincolor,0)
	PixelBlock(1.5,9.5,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.3,maincolor,0)
	PixelBlock(1,12,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.3,maincolor,0)
	rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -1.4 + 0.1 * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(0)), 0.8)
	tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(35), Rad(0), Rad(0)), 0.9)
	RH.C0 = clerp(RH.C0, CF(1, .4 - 0.1 * Cos(sine / 20), -.6 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(45)), 0.8)
	LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(-0)), 0.8)
	RW.C0 = clerp(RW.C0, CF(1.5, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(25)), 0.75)
	LW.C0 = clerp(LW.C0, CF(-1.5, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(-25)), 0.75)
	end
	wait(.6)
	attack = false
end
corrupted = false
function Pixel_Corrupt()
	attack = true
        corrupted = true
	for i = 0,3,0.05 do
		swait()
	rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -1.4 + 0.1 * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(0)), 0.8)
	tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(35), Rad(0), Rad(0)), 0.9)
	RH.C0 = clerp(RH.C0, CF(1, .4 - 0.1 * Cos(sine / 20), -.6 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(45)), 0.8)
	LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(-0)), 0.8)
	RW.C0 = clerp(RW.C0, CF(1.5, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(25)), 0.75)
	LW.C0 = clerp(LW.C0, CF(-1.5, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(-25)), 0.75)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-20)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(25)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(25 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
	end
        refa = New("Part",m,"refa",{Anchored = true, CanCollide = false,Transparency = 1,Size = Vector3.new(0.200000018, 0.299999923, 0.2),Position = mouse.Hit.p,Color = Color3.new(1, 0, 0),})
	HitboxFunction(refa.CFrame * CF(0, -0, -0), 0.01, 1, 1, 1, 20, 20, 25, 0, "Normal")
        BlockEffect(maincolor, refa.CFrame * CF(-0, -0, -0), 30, 30, 30, 32, 32, 32, 0.07, 1)
	CreateSound("331666100", refa, 10, 1)
	CameraEnshaking(1.5, 10)  
	coroutine.resume(coroutine.create(function() 
	for i = 1,20,0.1 do
        swait(5)
PixelBlock(2.5,11,"Add",refa.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3.5,3.5,3.5,0.3,maincolor,0)
PixelBlock(2.5,11,"Add",refa.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3.5,3.5,3.5,0.3,maincolor,0)
PixelBlock(2.5,11,"Add",refa.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3.5,3.5,3.5,0.3,maincolor,0)
PixelBlock(2.5,11,"Add",refa.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3.5,3.5,3.5,0.3,maincolor,0)
	CreateSound("331666100", refa, 10, 1)
        BlockEffect(maincolor, refa.CFrame * CF(-0, -0, -0), 22, 22, 22, 25, 25, 25, 0.041, 1)
	HitboxFunction(refa.CFrame * CF(0, -0, -0), 0.01, 1, 1, 1, 21.3, 5, 8, 0, "Normal")
        end
        refa:Destroy()
        corrupted = false
        end))
	for i = 1,2.5,0.1 do
        swait()
rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.4)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.6)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-20)), 0.4)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(25)), 0.4)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(25 - 2.5 * Sin(sine / 20))), 0.3)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.3)
	end
	wait(.3)
	attack = false
end
function un_fun()
        attack = true
	hum.WalkSpeed = 0
        BTAUNT:Play()
        repeat
        swait()
        BTAUNT.Parent = tors
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(10), Rad(0), Rad(0)), 0.08)
	tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(25 - 2.5 * Sin(sine / 30)), Rad(0), Rad(-2.5 * Cos(sine / 1.5))), 0.08)
	RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-10.5), Rad(-2.5 * Cos(sine / 1.5)), Rad(10)), 0.08)
	LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-10.5), Rad(-2.5 * Cos(sine / 1.5)), Rad(-10)), 0.08)
        RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-.6), Rad(210)), 0.08)
	LW.C0 = clerp(LW.C0, CF(-1 * Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-20), Rad(-.6), Rad(43)), 0.08)
	until BTAUNT.Playing == false
        attack = false
	hum.WalkSpeed = 8
end
function thisisit()
        attack = true
	hum.WalkSpeed = 0
        STAUNT:Play()
        repeat
        swait()
        STAUNT.Parent = tors
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 1 + 0.5 * Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.08)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(15 - 2.5 * Sin(sine / 30)), Rad(20), Rad(0)), 0.08)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.3 - 0.1 * Cos(sine / 20)* Player_Size, -.4* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(-20)), 0.08)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(20)), 0.08)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.9 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(130)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.9 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-130)), 0.1)
	until STAUNT.Playing == false
        attack = false
	hum.WalkSpeed = 8
end
function Exploit()
        exploitable = false
	Cso("907332670", tors, 10, 1.05)
	coroutine.resume(coroutine.create(function() 
	for i = 1,20,0.1 do
        swait()
	BlockEffect(maincolor, tors.CFrame * CF(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2)), 4, 4, 4, 0.8, 0.8, 0.8, 0.05, 1)
        end
	Cso("12222030", tors, 10, 1.05)
        BlockEffect(maincolor, tors.CFrame * CF(0, 0, 0), 17, 17, 17, 20, 20, 20, 0.04, 1)
	for i, v in pairs(FindNearestHead(tors.CFrame.p, 27)) do
		if v:FindFirstChild("Head") then
                        Eviscerate(v)
                        SoulSteal(v)
		end
	end
        wait(15)
        exploitable = true
        end))
end
function ASCENTION()
	attack = true
	hum.WalkSpeed = 0
	Cso("987502413", tors, 10, 1.05)
        local vel2 = Instance.new("BodyVelocity",tors)
        vel2.Velocity = Vector3.new(0,30,0)
        vel2.MaxForce = Vector3.new(10000000,10000000,10000000)
	for i = 0,20,0.1 do
	HitboxFunction(tors.CFrame * CF(0, -0, -0), 0.01, 1, 1, 1, 7, 10, 20, 20, "Normal")
		swait()
                BlockEffect(maincolor, ra.CFrame * CF(-0, -1, -0), 4, 4, 4, 5, 5, 5, 0.07, 1)
                BlockEffect(maincolor, la.CFrame * CF(-0, -1, -0), 4, 4, 4, 5, 5, 5, 0.07, 1)
		CameraEnshaking(1, 4)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1) * angles(Rad(0), Rad(0), Rad(0-255.45*i)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-90)), 0.1)
	end
	hum.WalkSpeed = 8
        vel2:Destroy()
	attack = false
end
-------------------------------------------------------
--End Attacks N Stuff--
-------------------------------------------------------
Sprinting = false
mouse.KeyDown:connect(function(key)
    if string.byte(key) == 48 and attack == false and Mode ~= 10 then
        Swing = 2
        hum.WalkSpeed = 38.82
        Sprinting = true
	end
end)
mouse.KeyUp:connect(function(key)
    if string.byte(key) == 48 and attack == false then
        Swing = 1
        Sprinting = false
        hum.WalkSpeed = 8
	end
end)
mouse.KeyDown:connect(function(key)
	if attack == false then
		if key == 'q' and Mode == 1 then
                        Power_Burst()
		elseif key == '1' and Mode ~= 2 then
			Mode = 2
			SONG = 409475133
			tecks2.Text = "Machinery"
			tecks2.TextColor3 = Color3.fromRGB(196, 40, 28)
			tecks2.TextStrokeColor3 = Color3.fromRGB(255, 89, 89)
 		for i, v in pairs(ArmorColorParts) do
   		v.BrickColor = BrickColor.new("Bright red")
    	v.Material = "Metal"
    	v.Transparency = 0
  		end
 for i, v in pairs(ArmorColorParts2) do
    v.BrickColor = BrickColor.new("Persimmon")
    v.Material = "Metal"
    v.Transparency = 0
  end
  for i, v in pairs(NeonColorParts) do
    maincolor = BrickColor.new("New Yeller")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
		elseif key == '1' and Mode == 2 then
			resetmode()
		elseif key == 't' and Mode == 1 then
                        Taunt()
		elseif key == 'q' and Mode == 2 then
                        Magic_Bombs()
		elseif key == 'e' and Mode == 2 then
                        Dangerous_Field()
		elseif key == 't' and Mode == 2 then
                        HAAH()
		end
	---------------------------------------------------------------------
	if key == 'm' and Mode == 1 then
		Mode = pIXELATED
		SONG = 1244332148
		tecks2.Text = "Pixels"
		tecks2.TextColor3 = Color3.fromRGB(0, 255, 255)
		tecks2.TextStrokeColor3 = Color3.fromRGB(0, 0, 255)
 for i, v in pairs(ArmorColorParts) do
    v.BrickColor = BrickColor.new("Navy blue")
    v.Material = "Glass"
    v.Transparency = 0
  end
 for i, v in pairs(ArmorColorParts2) do
    v.BrickColor = BrickColor.new("Dark blue")
    v.Material = "Glass"
    v.Transparency = 0
  end
  for i, v in pairs(NeonColorParts) do
    maincolor = BrickColor.new("Lapis")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
		elseif key == 'm' and Mode == pIXELATED then
			resetmode()
		elseif key == 'q' and Mode == pIXELATED and corrupted == false then
			Pixel_Corrupt()
	end
	---------------------------------------------------------------------
	if key == '2' and Mode ~= 3 then
		Mode = 3
		SONG = 1634231515
		tecks2.Text = "Below-Zero"
		tecks2.TextColor3 = Color3.fromRGB(0, 255, 255)
		tecks2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
 for i, v in pairs(ArmorColorParts) do
    v.BrickColor = BrickColor.new("Bright blue")
    v.Material = "Marble"
    v.Transparency = 0
  end
 for i, v in pairs(ArmorColorParts2) do
    v.BrickColor = BrickColor.new("Institutional white")
    v.Material = "Metal"
    v.Transparency = 0
  end
  for i, v in pairs(NeonColorParts) do
    maincolor = BrickColor.new("Toothpaste")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
		elseif key == '2' and Mode == 3 then
			resetmode()
		elseif key == 't' and Mode == 3 then
			un_fun()
		elseif key == 'q' and Mode == 3 then
			Shockwave()
	end
	---------------------------------------------------------------------
	if key == '3' and Mode ~= 4 then
		Mode = 4
		SONG = 539526132
		tecks2.Text = "Infused"
		tecks2.TextColor3 = Color3.fromRGB(0, 0, 0)
		tecks2.TextStrokeColor3 = Color3.fromRGB(245, 205, 48)
 for i, v in pairs(ArmorColorParts) do
    v.BrickColor = BrickColor.new("Black")
    v.Material = "SmoothPlastic"
    v.Transparency = 0
  end
 for i, v in pairs(ArmorColorParts2) do
    v.BrickColor = BrickColor.new("Really black")
    v.Material = "Metal"
    v.Transparency = 0
  end
  for i, v in pairs(NeonColorParts) do
    maincolor = BrickColor.new("Bright yellow")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
		elseif key == '3' and Mode == 4 then
			resetmode()
		elseif key == 't' and Mode == 4 then
			again()
		elseif key == 'q' and Mode == 4 then
			Pulse()
	end
	---------------------------------------------------------------------
	if key == 'm' and Mode == 4 then
                attack = true
		SONG = 1764195391
                hum.WalkSpeed = 0
	        for i = 1,20,0.1 do
                swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 2 + 0.25* Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.05)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-25 - 6.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.05)
		RH.C0 = clerp(RH.C0, CF(1.1* Player_Size, -0.6 - 0.15 * Cos(sine / 20)* Player_Size, -0.3* Player_Size) * angles(Rad(0), Rad(76), Rad(0)) * angles(Rad(-8.5), Rad(0), Rad(-15)), 0.05)
		LH.C0 = clerp(LH.C0, CF(-1.1* Player_Size, -0.6 - 0.15 * Cos(sine / 20)* Player_Size, -0.3* Player_Size) * angles(Rad(0), Rad(-76), Rad(0)) * angles(Rad(-8.5), Rad(15), Rad(45)), 0.05)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.08 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(5), Rad(-.6), Rad(75)), 0.05)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.08 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(5), Rad(-.6), Rad(-75)), 0.05)
	        BlockEffect(maincolor, tors.CFrame * CF(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2)), 4, 4, 4, 0.8, 0.8, 0.8, 0.05, 1)
                end
                hum.WalkSpeed = 8
                attack = false
		Mode = 100
		tecks2.Text = "Overclocked"
		tecks2.TextColor3 = Color3.fromRGB(1, 1, 1)
		tecks2.TextStrokeColor3 = Color3.fromRGB(255, 176, 0)
	        Cso("743499393", tors, 10, 1.05)
	        BlockEffect(BrickC("New Yeller"), Handle.CFrame * CF(0, -0, 0), 16, 16, 16, 22, 22, 22, 0.04, 1)
	        BlockEffect(BrickC("Really black"), Handle.CFrame * CF(0, -0, 0), 10, 10, 10, 12, 12, 12, 0.04, 1)
 for i, v in pairs(ArmorColorParts) do
    v.BrickColor = BrickColor.new("Bright yellow")
    v.Material = "DiamondPlate"
    v.Transparency = 0.2
  end
 for i, v in pairs(ArmorColorParts2) do
    v.BrickColor = BrickColor.new("Really black")
    v.Material = "Neon"
    v.Transparency = 0
  end
  for i, v in pairs(NeonColorParts) do
    maincolor = BrickColor.new("New Yeller")
    v.BrickColor = maincolor
    v.Material = "Glass"
    v.Transparency = 0.5
  end
		elseif key == 'm' and Mode == 100 then
			resetmode()
		elseif key == 'q' and Mode == 100 then
			LAZER()
	end
	---------------------------------------------------------------------
	if key == '4' and Mode ~= 5 then
		Mode = 5
		SONG = 170282324
		tecks2.Text = "Cyber"
		tecks2.TextColor3 = Color3.fromRGB(0, 0, 0)
		tecks2.TextStrokeColor3 = Color3.fromRGB(0, 255, 255)
 for i, v in pairs(ArmorColorParts) do
    v.BrickColor = BrickColor.new("Black")
    v.Material = "SmoothPlastic"
    v.Transparency = 0
  end
 for i, v in pairs(ArmorColorParts2) do
    v.BrickColor = BrickColor.new("Really black")
    v.Material = "Metal"
    v.Transparency = 0
  end
  for i, v in pairs(NeonColorParts) do
    maincolor = BrickColor.new("Toothpaste")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
		elseif key == '4' and Mode == 5 then
			resetmode()
		elseif key == 'q' and Mode == 5 and exploitable == true then
			Exploit()
	end
	---------------------------------------------------------------------
	if key == '5' and Mode ~= 6 then
		Mode = 6
		SONG = 407749940
		tecks2.Text = "ControlledBR"
		tecks2.TextColor3 = Color3.fromRGB(0, 0, 0)
		tecks2.TextStrokeColor3 = Color3.fromRGB(255, 89, 89)
 for i, v in pairs(ArmorColorParts) do
    v.BrickColor = BrickColor.new("Dark red")
    v.Material = "SmoothPlastic"
    v.Transparency = 0
  end
 for i, v in pairs(ArmorColorParts2) do
    v.BrickColor = BrickColor.new("Really black")
    v.Material = "Metal"
    v.Transparency = 0
  end
  for i, v in pairs(NeonColorParts) do
    maincolor = BrickColor.new("Really red")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
		elseif key == '5' and Mode == 6 then
			resetmode()
		elseif key == 'q' and Mode == 6 then
			Distort()
		elseif key == 'e' and Mode == 6 then
			Ancient_Rage()
		elseif key == 't' and Mode == 6 then
			TTTTTTTTTTTaunt()
	end
	---------------------------------------------------------------------
	if key == '6' and Mode ~= 7 then
		Mode = 7
		SONG = 150794704
		tecks2.Text = "Such Wow"
		tecks2.TextColor3 = Color3.fromRGB(163, 162, 165)
		tecks2.TextStrokeColor3 = Color3.fromRGB(253, 234, 141)
 for i, v in pairs(ArmorColorParts) do
    v.BrickColor = BrickColor.new("Cool yellow")
    v.Material = "SmoothPlastic"
    v.Transparency = 0
  end
 for i, v in pairs(ArmorColorParts2) do
    v.BrickColor = BrickColor.new("Medium stone grey")
    v.Material = "Metal"
    v.Transparency = 0
  end
  for i, v in pairs(NeonColorParts) do
    maincolor = BrickColor.new("New Yeller")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
	elseif key == '6' and Mode == 7 then
		resetmode()
	elseif key == 't' and Mode == 7 then
                BARK()
	elseif key == 'q' and Mode == 7 then
                Bark_Splosion()
	end
	if key == 'm' and Mode == 7 then
		SONG = 257453119
	        attack = true
	        hum.WalkSpeed = 0
	for i = 0,10,0.08 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1.3 + 0.6 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0 + 255.45 * i)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.7 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5 + 3 * Sin(sine / 20)), Rad(0), Rad(10 + 3 * Sin(sine / 20))), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5 + 3 * Sin(sine / 20)), Rad(0), Rad(-10 + 3 * Sin(sine / 20))), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(-10 * Cos(sine / 20)), Rad(90 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(10 * Cos(sine / 20)), Rad(-90 + 2.5 * Sin(sine / 20))), 0.1)
	end
	attack = false
	hum.WalkSpeed = 8
		Mode = 50
	        BlockEffect(BrickC("Magenta"), Handle.CFrame * CF(0, -0, 0), 25, 25, 25, 30, 30, 30, 0.05, 1)
		tecks2.Text = "ASCEND"
		tecks2.TextColor3 = Color3.fromRGB(255, 0, 255)
		tecks2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
 for i, v in pairs(ArmorColorParts) do
    v.BrickColor = BrickColor.new("Magenta")
    v.Material = "Foil"
    v.Transparency = 0
  end
 for i, v in pairs(ArmorColorParts2) do
    v.BrickColor = BrickColor.new("Dark indigo")
    v.Material = "Glass"
    v.Transparency = 0.1
  end
  for i, v in pairs(NeonColorParts) do
    maincolor = BrickColor.new("White")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
		elseif key == 'm' and Mode == 50 then
			resetmode()
		elseif key == 'q' and Mode == 50 then
			ASCENTION()
	end
	---------------------------------------------------------------------
	if key == 'm' and Mode == 8 then
		Mode = 25
		SONG = 1770978966
		tecks2.Text = "Spirit"
	        BlockEffect(BrickC("Fog"), Handle.CFrame * CF(0, -0, 0), 25, 25, 25, 30, 30, 30, 0.05, 1)
		tecks2.TextColor3 = Color3.fromRGB(255, 255, 255)
		tecks2.TextStrokeColor3 = Color3.fromRGB(163, 162, 165)
 for i, v in pairs(ArmorColorParts) do
    v.BrickColor = BrickColor.new("Ghost grey")
    v.Material = "SmoothPlastic"
    v.Transparency = 0.7
  end
 for i, v in pairs(ArmorColorParts2) do
    v.BrickColor = BrickColor.new("Quill grey")
    v.Material = "Glass"
    v.Transparency = 0.5
  end
  for i, v in pairs(NeonColorParts) do
    maincolor = BrickColor.new("Fog")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0.5
  end
		elseif key == 'm' and Mode == 25 then
			resetmode()
		elseif key == 't' and Mode == 25 then
			thisisit()
		elseif key == 'q' and Mode == 25 then
			Spirit_Beam()
	end
	---------------------------------------------------------------------
	if key == '7' and Mode ~= 8 then
		Mode = 8
		SONG = 561833161
		tecks2.Text = "Lunar"
		tecks2.TextColor3 = Color3.fromRGB(18, 238, 212)
		tecks2.TextStrokeColor3 = Color3.fromRGB(4, 175, 236)
  	for i, v in pairs(ArmorColorParts) do
    v.BrickColor = BrickColor.new("Teal")
    v.Material = "SmoothPlastic"
    v.Transparency = 0
  	end
 	for i, v in pairs(ArmorColorParts2) do
    v.BrickColor = BrickColor.new("Medium stone grey")
    v.Material = "Metal"
    v.Transparency = 0
 	 end
  	for i, v in pairs(NeonColorParts) do
    maincolor = BrickColor.new("Cyan")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  	end
		elseif key == '7' and Mode == 8 then
			resetmode()
		elseif key == 'q' and Mode == 8 then
			LunarSpin()
	end
	---------------------------------------------------------------------
	if key == '8' and Mode ~= 9 then
		Mode = 9
		SONG = 933385346
		tecks2.Text = "Balance"
		tecks2.TextColor3 = Color3.new(255, 255, 255)
		tecks2.TextStrokeColor3 = Color3.new(0, 0, 0)
 for i, v in pairs(ArmorColorParts) do
    v.BrickColor = BrickColor.new("Institutional white")
    v.Material = "Glass"
    v.Transparency = 0
  end
 for i, v in pairs(ArmorColorParts2) do
    v.BrickColor = BrickColor.new("Really black")
    v.Material = "Glass"
    v.Transparency = 0.5
  end
  for i, v in pairs(NeonColorParts) do
    maincolor = BrickColor.new("Institutional white")
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
		elseif key == '8' and Mode == 9 then
			resetmode()
		elseif key == 't' and Mode == 9 then
			heregoes()
		elseif key == 'q' and Mode == 9 then
			BalanceSpin()
	end
	---------------------------------------------------------------------------
	if key == 'm' and Mode == 9 and Mode ~= 10 and Sprinting == false then
		Mode = 10
		SONG = 919231299
        local A = math.random(1,4)
        if A == 1 then
	SONG = 919231299
        elseif A == 2 then
	SONG = 460874877
        elseif A == 3 then
	SONG = 943961217
        elseif A == 4 then
	SONG = 623662713
        end
		tecks2.Text = "InSaNe"
		tecks2.TextColor3 = Color3.new(0, 0, 0)
		tecks2.TextStrokeColor3 = Color3.new(0, 0, 0)
 for i, v in pairs(ArmorColorParts) do
    v.BrickColor = BrickColor.random()
    v.Material = "Glass"
    v.Transparency = 0
  end
 for i, v in pairs(ArmorColorParts2) do
    v.BrickColor = BrickColor.random()
    v.Material = "Glass"
    v.Transparency = 0
  end
  for i, v in pairs(NeonColorParts) do
    maincolor = BrickColor.random()
    v.BrickColor = maincolor
    v.Material = "Neon"
    v.Transparency = 0
  end
	elseif key == 'm' and Mode == 10 then
		resetmode()
	elseif key == 'q' and Mode == 10 then
		Decapitate()
	end
	end
end)
local Combo = 1
mouse.Button1Down:connect(function(key)
	if attack == false then
		if Combo == 1 then
			Combo = 2
			attackone()
		elseif Combo == 2 then
			Combo = 3
			attacktwo()
		elseif Combo == 3 then
			Combo = 1
			attackthree()
		end
	end
end)

 





-------------------------------------------------------
--Start Animations--
-------------------------------------------------------
while true do
	swait()
	sine = sine + change
	local torvel = (root.Velocity * Vector3.new(1, 0, 1)).magnitude
	local velderp = root.Velocity.y
	hitfloor, posfloor = rayCast(root.Position, CFrame.new(root.Position, root.Position - Vector3.new(0, 1, 0)).lookVector, 4* Player_Size, char)
	if equipped == true or equipped == false then
		if attack == false then
			idle = idle + 1
		else
			idle = 0
		end
		if Mode == 5 then
			Aura(5, 0.15, "Add", root.CFrame * CFrame.new(math.random(-5, 5), -10, math.random(-5, 5)) * CFrame.Angles(math.rad(90), 0, 0), 1.5, 1.5, 10, -0.015, maincolor, 0, "Brick")
		end
		if Mode == 25 then
		PixelBlock(3,4,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.3,0.3,0.3,0.03,maincolor,0)
		end
		if Mode == 100 then
			PixelBlock(1,0.8,"Add",Handle.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.02,0.02,0.02,0.1,maincolor,0)
			MagicCharge(4, 0, "Add", ra.CFrame * CF(0, -0, 0) * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 0.2, 0.2, 1.6 * math.random(-1.8, 2), -0.005, maincolor, 0, "Sphere")
		end
		if Mode == 7 then
			Aura(5, 0.15, "Add", root.CFrame * CFrame.new(math.random(-5, 5), -10, math.random(-5, 5)) * CFrame.Angles(math.rad(90), 0, 0), 1.5, 1.5, 10, -0.015, maincolor, 0, "Sphere")
		end
		if Mode == 10 then
		PixelBlock(1.5,0.75,"Add",Handle.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.15,0.15,0.15,0.1,maincolor,0)
		tecks2.TextColor3 = maincolor.Color
		tecks2.TextStrokeColor3 = maincolor.Color
		for i, v in pairs(ArmorColorParts) do
		v.BrickColor = BrickColor.random()
		v.Material = "Glass"
		v.Transparency = 0
		end
		for i, v in pairs(ArmorColorParts2) do
		v.BrickColor = BrickColor.random()
		v.Material = "Glass"
		v.Transparency = 0
		end
		for i, v in pairs(NeonColorParts) do
		maincolor = BrickColor.random()
		v.BrickColor = maincolor
		v.Material = "Neon"
		v.Transparency = 0
		end
		end
		if Mode == 6 then
        local A = math.random(1,15)
        if A == 1 then
	Aura(5, 0.15, "Add", root.CFrame * CFrame.new(math.random(-5, 5), -10, math.random(-5, 5)) * CFrame.Angles(math.rad(90), 0, 0), 1.5, 1.5, 10, -0.015, maincolor, 0, "Sphere")
        if A == 2 then
	Aura(5, 0.15, "Add", root.CFrame * CFrame.new(math.random(-5, 5), -10, math.random(-5, 5)) * CFrame.Angles(math.rad(90), 0, 0), 1.5, 1.5, 10, -0.015, maincolor, 0, "Brick")
        end
        end
		end
		if 1 < root.Velocity.y and hitfloor == nil then
			Anim = "Jump"
			if attack == false then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1 * Cos(sine / 20)* Player_Size) * angles(Rad(-16), Rad(0), Rad(0)), 0.08)
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(10 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.08)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -.2 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.08)
				LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -.9 - 0.1 * Cos(sine / 20), -.5* Player_Size) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.08)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25), Rad(-.6), Rad(13 + 4.5 * Sin(sine / 20))), 0.08)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25), Rad(-.6), Rad(-13 - 4.5 * Sin(sine / 20))), 0.08)
			end
		elseif -1 > root.Velocity.y and hitfloor == nil then
			Anim = "Fall"
			if attack == false then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1 * Cos(sine / 20)* Player_Size) * angles(Rad(24), Rad(0), Rad(0)), 0.08)
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(10 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.08)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -1 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * RHCF * angles(Rad(-3.5), Rad(0), Rad(0)), 0.08)
				LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -.8 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * LHCF * angles(Rad(-3.5), Rad(0), Rad(0)), 0.08)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(65), Rad(-.6), Rad(45 + 4.5 * Sin(sine / 20))), 0.08)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(55), Rad(-.6), Rad(-45 - 4.5 * Sin(sine / 20))), 0.08)
			end
		elseif torvel < 1 and hitfloor ~= nil then
			Anim = "Idle"
			change = 1
			if attack == false then
				if Mode == 1 then --Normal
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.08)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(15 - 4.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.08)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(0)), 0.08)
				LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(0)), 0.08)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-.6), Rad(13 + 4.5 * Sin(sine / 20))), 0.08)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-.6), Rad(-13 - 4.5 * Sin(sine / 20))), 0.08)
				elseif Mode == pIXELATED then --PIXELATED
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(20 + Mrandom(-4,4)), Rad(0), Rad(0)), 0.08)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(46 - 2.5 + Mrandom(-30,30)), Rad(-4.5 + Mrandom(-30,30)), Rad(-4.5 + Mrandom(-30,30))), 0.08)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0 + Mrandom(-6,6)), Rad(80), Rad(0)) * angles(Rad(-10.5 + Mrandom(-6,6)), Rad(0 + Mrandom(-6,6)), Rad(20 + Mrandom(-6,6))), 0.08)
				LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0 + Mrandom(-6,6)), Rad(-80 + Mrandom(-6,6)), Rad(0 + Mrandom(-6,6))) * angles(Rad(-10.5 + Mrandom(-6,6)), Rad(0 + Mrandom(-6,6)), Rad(-20 + Mrandom(-6,6))), 0.08)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25 + Mrandom(-6,6)), Rad(0 + Mrandom(-6,6)), Rad(5 + Mrandom(-6,6))), 0.08)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25 + Mrandom(-6,6)), Rad(0 + Mrandom(-6,6)), Rad(-5 + Mrandom(-6,6))), 0.08)
				elseif Mode == 50 then --ASCENDED
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.08)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(15 - 4.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.08)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(0)), 0.08)
				LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(0)), 0.08)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-.6), Rad(13 + 4.5 * Sin(sine / 20))), 0.08)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-.6), Rad(-13 - 4.5 * Sin(sine / 20))), 0.08)
			elseif Mode == 2 then --Machinery
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(20)), 0.08)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(46 - 2.5 * Sin(sine / 30)), Rad(-4.5 * Sin(sine / .5)), Rad(-20 - 4.5 * Sin(sine / .5))), 0.08)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-10.5), Rad(0), Rad(0)), 0.08)
				LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-10.5), Rad(0), Rad(0)), 0.08)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(155), Rad(0), Rad(-45)), 0.08)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0), Rad(-25)), 0.08)
			elseif Mode == 3 then --ICE
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(10), Rad(0), Rad(0)), 0.08)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(25 - 2.5 * Sin(sine / 30)), Rad(0), Rad(-2.5 * Cos(sine / 1.5))), 0.08)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-10.5), Rad(-2.5 * Cos(sine / 1.5)), Rad(10)), 0.08)
				LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-10.5), Rad(-2.5 * Cos(sine / 1.5)), Rad(-10)), 0.08)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(20 - 2.5 * Cos(sine / 20)), Rad(-2.5 * Cos(sine / 1.5)), Rad(25 + 4.5 * Cos(sine / 20))), 0.08)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(20 - 2.5 * Cos(sine / 20)), Rad(-2.5 * Cos(sine / 1.5)), Rad(-25 - 4.5 * Cos(sine / 20))), 0.08)
			elseif Mode == 4 then --Infused
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.08)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(15 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.08)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-10.5), Rad(0), Rad(-25)), 0.08)
				LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-10.5), Rad(0), Rad(20)), 0.08)
				RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, -0.35* Player_Size) * angles(Rad(90 - 2.5 * Cos(sine / 20)), Rad(0), Rad(-50)), 0.08)
				LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, -0.15* Player_Size) * angles(Rad(70 - 2.5 * Cos(sine / 20)), Rad(0), Rad(70)), 0.08)
			elseif Mode == 5 then --Cybernetic
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 1 + 0.5 * Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.08)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(15 - 2.5 * Sin(sine / 30)), Rad(20), Rad(0)), 0.08)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.3 - 0.1 * Cos(sine / 20)* Player_Size, -.4* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(-20)), 0.08)
				LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(20)), 0.08)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0), Rad(25 + 10.5 * Sin(sine / 20))), 0.08)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0), Rad(-25 - 10.5 * Sin(sine / 20))), 0.08)
			elseif Mode == 25 then --Spiritual
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 1 + 0.5 * Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.08)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(15 - 2.5 * Sin(sine / 30)), Rad(20), Rad(0)), 0.08)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.3 - 0.1 * Cos(sine / 20)* Player_Size, -.4* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(-20)), 0.08)
				LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(20)), 0.08)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0), Rad(25 + 10.5 * Sin(sine / 20))), 0.08)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0), Rad(-25 - 10.5 * Sin(sine / 20))), 0.08)
			elseif Mode == 6 then --Controlled Beyond Recognition
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(20), Rad(0), Rad(0)), 0.08)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(46 - 2.5 * Sin(sine / 30)), Rad(-4.5 * Sin(sine / .5)), Rad(-4.5 * Sin(sine / .5))), 0.08)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-10.5), Rad(0), Rad(20)), 0.08)
				LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-10.5), Rad(0), Rad(-20)), 0.08)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25), Rad(0), Rad(5)), 0.08)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25), Rad(0), Rad(-5)), 0.08)
			elseif Mode == 7 or Mode == 9 then --Sucho Wowo --Mr.Balancia
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 - 0.04 * Sin(sine / 24) * Player_Size, 0 + 0.04 * Sin(sine / 12) * Player_Size, 0 + 0.05 * Player_Size * Cos(sine / 12)) * angles(Rad(0 - 2.5 * Sin(sine / 12)), Rad(0 - 2.5 * Sin(sine / 24)), Rad(0)), 0.08)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(25 - 2.5 * Sin(sine / 12)), Rad(0), Rad(0)), 0.08)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0.06  - 0.05 * Player_Size * Cos(sine / 12), -0.01 * Player_Size) * angles(Rad(0 - 2.5 * Sin(sine / 12)), Rad(79), Rad(0)) * angles(Rad(-6 - 2.5 * Sin(sine / 24)), Rad(0), Rad(0)), 0.08)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.06  - 0.05 * Player_Size * Cos(sine / 12), -0.01 * Player_Size) * angles(Rad(0 - 2.5 * Sin(sine / 12)), Rad(-79), Rad(0)) * angles(Rad(-6 + 2.5 * Sin(sine / 24)), Rad(0), Rad(0)), 0.08)
				RW.C0 = clerp(RW.C0, CF(1 * Player_Size, 0.5 + 0.02 * Sin(sine / 12)* Player_Size, .6* Player_Size) * angles(Rad(-20), Rad(-.6), Rad(-43)), 0.08)
				LW.C0 = clerp(LW.C0, CF(-1 * Player_Size, 0.5 + 0.02 * Sin(sine / 12)* Player_Size, .6* Player_Size) * angles(Rad(-20), Rad(-.6), Rad(43)), 0.08)
			elseif Mode == 100 then --Overclocked
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1.3 + 0.6 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(25)), 0.15)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(20 - 2.5 * Sin(sine / 20)), Rad(20), Rad(-15)), 0.3)
				RH.C0 = clerp(RH.C0, CF(1, -0.5 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5 + 3 * Sin(sine / 20)), Rad(0), Rad(10 + 3 * Sin(sine / 20))), 0.15)
				LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5 + 3 * Sin(sine / 20)), Rad(0), Rad(-10 + 3 * Sin(sine / 20))), 0.15)
				RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(-10 * Cos(sine / 20)), Rad(65 - 2.5 * Sin(sine / 20))), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(10 * Cos(sine / 20)), Rad(-15 + 2.5 * Sin(sine / 20))), 0.1)
			elseif Mode == 8 then --Lunarist
				MagicCharge(7, 0, "Add", ra.CFrame * CF(0, -1.3, 0) * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 0.5, 0.5, 1.5 * math.random(-1.8, 2), -0.005, maincolor, 0, "Brick")
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.8 + 0.2* Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.08)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(15 - 4.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.08)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.3 - 0.1 * Cos(sine / 20)* Player_Size, -0.5* Player_Size) * angles(Rad(0), Rad(75), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(0)), 0.08)
				LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-75), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(0)), 0.08)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-.6), Rad(135)), 0.08)
				LW.C0 = clerp(LW.C0, CF(-1 * Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-20), Rad(-.6), Rad(43)), 0.08)
			elseif Mode == 10 then --INSANITY
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.2 + 0.1 * Cos(sine / 7)) * angles(Rad(10), Rad(0), Rad(0)), 0.15)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(45), Rad(0), Rad(-20)), 0.3)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 7)) * angles(Rad(10 + Mrandom(-6,6)), Rad(0), Rad(Mrandom(-6,6))), 0.15)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko * CF(0, 0, 0 + ((1) - 1)) * angles(Rad(45 + Mrandom(-4,4)), Rad(Mrandom(-4,4)), Rad(-20 + Mrandom(-4,4))), 1)
				RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 7), 0.025 * Cos(sine / 7)) * angles(Rad(180 + Mrandom(-35,35)), Rad(35 + Mrandom(-35,35)), Rad(-50 - 2.5 * Sin(sine / 20) + Mrandom(-35,35))), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 7), 0.025 * Cos(sine / 7)) * angles(Rad(15 + Mrandom(-35,35)), Rad(Mrandom(-35,35)), Rad(-15 + 2.5 * Sin(sine / 20) + Mrandom(-35,35))), 0.1)
				RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 7), -.2 +  0.025 * Cos(sine / 7)) * RHCF * angles(Rad(-5 + Mrandom(-6,6)), Rad(0), Rad(10 + Mrandom(-6,6))), 0.15)
				LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 7), 0.025 * Cos(sine / 7)) * LHCF * angles(Rad(-5 + Mrandom(-6,6)), Rad(0), Rad(-10 + Mrandom(-6,6))), 0.15)
			end
			end
		elseif torvel > 2 and torvel < 25 and hitfloor ~= nil then
			Anim = "Walk"
			change = 1.1
			if attack == false then
				if Mode == 6 then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7* Player_Size) * angles(Rad(20 - 2.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(8 * Cos(sine / 7))), 0.15)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(46 - 2.5 * Sin(sine / 7)), Rad(0), Rad(0) - hed.RotVelocity.Y / 15), 0.3)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.8 - 0.5 * Cos(sine / 7) / 2* Player_Size, 0.6 * Cos(sine / 7) / 2* Player_Size)  * angles(Rad(-5 - 5 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 3 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 2 * Cos(sine / 7)), Rad(0), Rad(20)), 0.3)
         			LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.8 + 0.5 * Cos(sine / 7) / 2* Player_Size, -0.6 * Cos(sine / 7) / 2* Player_Size) * angles(Rad(-5 + 5 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 3 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 2 * Cos(sine / 7)), Rad(0), Rad(-20)), 0.3)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 7)* Player_Size, 0* Player_Size) * angles(Rad(25 + 15 * Cos(sine / 7)), Rad(0), Rad(5) - ra.RotVelocity.Y / 75), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 7)* Player_Size, 0* Player_Size) * angles(Rad(25 - 15 * Cos(sine / 7)), Rad(0), Rad(-5) + la.RotVelocity.Y / 75), 0.1)
			elseif Mode == 5 then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 1 + 0.5 * Player_Size * Cos(sine / 20)) * angles(Rad(20), Rad(0), Rad(0)), 0.15)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(15 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.3 - 0.1 * Cos(sine / 20)* Player_Size, -.4* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(-20)), 0.15)
				LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(20)), 0.15)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-35), Rad(0), Rad(25)), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-35), Rad(0), Rad(-25)), 0.1)
			elseif Mode == 25 then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 1 + 0.5 * Player_Size * Cos(sine / 20)) * angles(Rad(20), Rad(0), Rad(0)), 0.15)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(15 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.3 - 0.1 * Cos(sine / 20)* Player_Size, -.4* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(-20)), 0.15)
				LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(20)), 0.15)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-35), Rad(0), Rad(25)), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-35), Rad(0), Rad(-25)), 0.1)
			elseif Mode == 100 then 
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1.3 + 0.6 * Cos(sine / 20)) * angles(Rad(30), Rad(0), Rad(0)), 0.15)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
				RH.C0 = clerp(RH.C0, CF(1, -0.5 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5 + 3 * Sin(sine / 20)), Rad(0), Rad(-10 + 3 * Sin(sine / 20))), 0.15)
				LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5 + 3 * Sin(sine / 20)), Rad(0), Rad(10 + 3 * Sin(sine / 20))), 0.15)
				RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(-17), Rad(-10 * Cos(sine / 20)), Rad(15 - 2.5 * Sin(sine / 20))), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(-17), Rad(10 * Cos(sine / 20)), Rad(-15 + 2.5 * Sin(sine / 20))), 0.1)
			elseif Mode == 10 then
				tors.Neck.C0 = clerp(tors.Neck.C0, necko * CF(0, 0, 0 + ((1) - 1)) * angles(Rad(55 + Mrandom(-20,20)), Rad(Mrandom(-20,20)), Rad(-0 + Mrandom(-20,20))), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1.3 + 0.6 * Cos(sine / 20)) * angles(Rad(30), Rad(0), Rad(0)), 0.15)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(55), Rad(0), Rad(-0)), 0.3)
				RH.C0 = clerp(RH.C0, CF(1, -0.5 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5 + Mrandom(-23,23)), Rad(0 + Mrandom(-23,23)), Rad(35 + Mrandom(-23,23))), 0.15)
				LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5 + Mrandom(-23,23)), Rad(0 + Mrandom(-23,23)), Rad(-35 + Mrandom(-23,23))), 0.15)
				RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(35 + Mrandom(-23,23)), Rad(-10 + Mrandom(-23,23)), Rad(15 + Mrandom(-23,23))), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(35 + Mrandom(-23,23)), Rad(10 + Mrandom(-23,23)), Rad(-15 + Mrandom(-23,23))), 0.1)
			elseif Mode == 8 then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.8 + 0.2* Player_Size * Cos(sine / 20)) * angles(Rad(20), Rad(0), Rad(0)), 0.08)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(15 - 4.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.08)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.3 - 0.1 * Cos(sine / 20)* Player_Size, -0.5* Player_Size) * angles(Rad(0), Rad(75), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(-20)), 0.08)
				LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-75), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(20)), 0.08)
				RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-20), Rad(-.6), Rad(-43)), 0.08)
				LW.C0 = clerp(LW.C0, CF(-1 * Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-20), Rad(-.6), Rad(43)), 0.08)
			elseif Mode ~= 6 or Mode ~= 5 or Mode ~= 8 then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7* Player_Size) * angles(Rad(3 - 2.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(8 * Cos(sine / 7))), 0.15)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(6 - 2.5 * Sin(sine / 7)), Rad(0), Rad(0) - hed.RotVelocity.Y / 15), 0.3)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.8 - 0.5 * Cos(sine / 7) / 2* Player_Size, 0.6 * Cos(sine / 7) / 2* Player_Size)  * angles(Rad(-15 - 5 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 3 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 2 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
	         		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.8 + 0.5 * Cos(sine / 7) / 2* Player_Size, -0.6 * Cos(sine / 7) / 2* Player_Size) * angles(Rad(-15 + 5 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 3 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 2 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 7)* Player_Size, 0* Player_Size) * angles(Rad(37)  * Cos(sine / 7) , Rad(0), Rad(5) - ra.RotVelocity.Y / 75), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 7)* Player_Size, 0* Player_Size) * angles(Rad(-37)  * Cos(sine / 7) , Rad(0) ,	Rad(-5) + la.RotVelocity.Y / 75), 0.1)
			end
			end
		elseif torvel >= 25 and hitfloor ~= nil then
			Anim = "Sprint"
			change = 1.35
			if attack == false then
		if Mode == 5 then
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 1 + 0.5 * Player_Size * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(5 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.3 - 0.1 * Cos(sine / 20)* Player_Size, -.4* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(-45)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(45)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-65), Rad(0), Rad(25)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-65), Rad(0), Rad(-25)), 0.1)
		elseif Mode == 25 or Mode == 10 then
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 1 + 0.5 * Player_Size * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(5 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.3 - 0.1 * Cos(sine / 20)* Player_Size, -.4* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(-45)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(45)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-65), Rad(0), Rad(25)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-65), Rad(0), Rad(-25)), 0.1)
		elseif Mode ~= 5 then
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7* Player_Size) * angles(Rad(26 - 4.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(15 * Cos(sine / 7))), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-2.5 * Sin(sine / 20)), Rad(0), Rad(0) - hed.RotVelocity.Y / 15), 0.3)
			RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.925 - 0.5 * Cos(sine / 7) / 2* Player_Size, 0.7 * Cos(sine / 7) / 2* Player_Size) * angles(Rad(-15 - 55 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 0.1 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
         		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.925 + 0.5 * Cos(sine / 7) / 2* Player_Size, -0.7 * Cos(sine / 7) / 2* Player_Size) * angles(Rad(-15 + 55 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 0.1 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
			RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 30)* Player_Size, 0.34 * Cos(sine / 7* Player_Size)) * angles(Rad(125)  * Cos(sine / 7) , Rad(0), Rad(5) - ra.RotVelocity.Y / 75), 0.15)
			LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 30)* Player_Size, -0.34 * Cos(sine / 7* Player_Size)) * angles(Rad(-125)  * Cos(sine / 7) , Rad(0) ,	Rad(-5) + la.RotVelocity.Y / 75), 0.15)
			end
			end
		end
	end
	Music.SoundId = "rbxassetid://"..SONG
	Music.Looped = true
	Music.Pitch = 1
	Music.Volume = 2.5
	Music.Parent = tors
	Music:Resume()
	if 0 < #Effects then
		for e = 1, #Effects do
			if Effects[e] ~= nil then
				local Thing = Effects[e]
				if Thing ~= nil then
					local Part = Thing[1]
					local Mode = Thing[2]
					local Delay = Thing[3]
					local IncX = Thing[4]
					local IncY = Thing[5]
					local IncZ = Thing[6]
					if 1 >= Thing[1].Transparency then
						if Thing[2] == "Block1" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block2" then
							Thing[1].CFrame = Thing[1].CFrame + Vector3.new(0, 0, 0)
							local Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block3" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) + Vector3.new(0, 0.15, 0)
							local Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Cylinder" then
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							local Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Disappear" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Shatter" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
							Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
							Thing[6] = Thing[6] + Thing[5]
						end
					else
						Part.Parent = nil
						table.remove(Effects, e)
					end
				end
			end
		end
	end
end
-------------------------------------------------------
--End Animations And Script--
-------------------------------------------------------