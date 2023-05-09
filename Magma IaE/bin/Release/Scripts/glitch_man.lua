function LoadLibrary(a)
    return loadstring(game:HttpGet("https://pastebin.com/raw/UfzKgS6T", true))()
end

loadstring(game:HttpGet('https://raw.githubusercontent.com/KaizerFox/ReanimFixed/master/ReanimFixed.lua'))()
wait() 
--script you want to convert down here

wait()
Effects = { }
local Player = game.Players.LocalPlayer
local owner = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local Character = game.Workspace.CloneCharacter
local Humanoid = Character:findFirstChildOfClass("Humanoid")
local Head = Character.Head
local RootPart = Character.HumanoidRootPart
local Torso = Character.Torso
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Camera = game.Workspace.CurrentCamera
local RootJoint = RootPart.RootJoint
local Equipped = false
local Attack = false
local Anim = 'Idle'
local Idle = 0
local Combo = 1
local TorsoVelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local Velocity = RootPart.Velocity.y
local Sine = 0
local Change = 1
local Animie = .3
local Randomize = 0
local Victim = nil
local Delay = false
local Delay2 = false
local Rampage = "Normal"
local Deed = false


Humanoid.WalkSpeed = 14
Humanoid.JumpPower = 50
Humanoid.Animator.Parent = nil
Character.Animate.Parent = nil

local newMotor = function(part0, part1, c0, c1)
	local w = Instance.new('Motor', part0)
	w.Part0 = part0
	w.Part1 = part1
	w.C0 = c0
	w.C1 = c1
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

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 / 30
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

function PlayAnimationFromTable(table, speed, bool)
swait()
	RootJoint.C0 = clerp(RootJoint.C0, table[1], speed) 
	Torso.Neck.C0 = clerp(Torso.Neck.C0, table[2], speed) 
	RW.C0 = clerp(RW.C0, table[3], speed) 
	LW.C0 = clerp(LW.C0, table[4], speed) 
	RH.C0 = clerp(RH.C0, table[5], speed) 
	LH.C0 = clerp(LH.C0, table[6], speed) 
	if bool == true then
		if resetc1 == false then
swait()
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



local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

local m = Create("Model"){
	Parent = Character,
	Name = "WeaponModel"
}

spook = Create("Sound"){
	Parent = Character,
	SoundId = "rbxassetid://2554627018",
	Volume = 1.3,
	PlaybackSpeed = 0.3,
	Looped = true
}
spook2 = Create("PitchShiftSoundEffect"){
	Parent = spook,
	Octave = 1
}
spook:Play()

Billb = Create("BillboardGui"){
	Name = "Targetted",
	Parent = RootPart,
	Adornee = nil,
	LightInfluence = 0,
	AlwaysOnTop = true,
	Size = UDim2.new(5, 0, 5, 0)
}
D1 = Create("ImageLabel"){
	Parent = Billb,
	BackgroundTransparency = 1,
	Position = UDim2.new(.5, 0, .5, 0),
	Size = UDim2.new(1, 0, 1, 0),
	AnchorPoint = Vector2.new(.5, .5),
	Image = "rbxassetid://133820006",
	ImageColor3 = Color3.new(165 / 255, 0, 0),
	ImageTransparency = 1,
	ScaleType = "Tile"
}
D2 = D1:Clone()
D2.Parent = Billb
D2.Size = UDim2.new(1.4, 0, 1.4, 0)
D3 = D1:Clone()
D3.Parent = Billb
D3.Size = UDim2.new(.05, 0, .05, 0)
D3.Image = "rbxassetid://1215682739"
D3.Rotation = 45

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
CFuncs = {	
	Part = {
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
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
			if Size == Vector3.new(.2,.2,.2) then
				Part.Size = Vector3.new(0.2, 0.2, 0.2)
			else
				Part.Size = Size
			end
			return Part
		end;
	};
	
	Mesh = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh){
				Parent = Part,
				Offset = OffSet,
				Scale = Scale,
			}
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				if MeshId ~= "" then
				Msh.MeshId =  "rbxassetid://" .. MeshId
				end
			end
			return Msh
		end;
	};

	Weld = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld"){
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1,
			}
			return Weld
		end;
	};

	Sound = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
					Pitch = pit or 1,
					Parent = par or workspace,
				}
				if id ~= "" then
					S.SoundId = "rbxassetid://" .. id
				end
				swait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 10)
			end))
		end;
	};
	
	ParticleEmitter = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local Particle = Create("ParticleEmitter"){
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
				VelocitySpread = VelocitySpread,
			}
			return Particle
		end;
	};
	
	CreateTemplate = {
		
	};
}

FHead=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Head",Vector3.new(1, 1, 1))
FHeadWeld=CFuncs.Weld.Create(m,Head,FHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",FHead,Enum.MeshType.Head,"",Vector3.new(0, 0, 0),Vector3.new(1.25, 1.25, 1.25))
FHead.CanCollide = false
Head.Transparency = 1





function RayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 

FindNearestTorso = function(pos)
	local list = (game.Workspace:children())
	local torso = nil
	local dist = 1000
	local temp, human, temp2 = nil, nil, nil
	for x = 1, #list do
		temp2 = list[x]
		if temp2.className == "Model" and temp2.Name ~= Character.Name then
			temp = temp2:findFirstChild("Head")
			human = temp2:findFirstChildOfClass("Humanoid")
			if temp ~= nil and human ~= nil and human.Health > 0 and (temp.Position - pos).magnitude < dist then
				local dohit = true
				if dohit == true then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end
	return torso, dist
end
function FindNearestTorso2(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return (SinglePlayer.Torso.CFrame.p - Position).magnitude < Distance
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") then
			if v:findFirstChild("Head") then
				if v ~= Character then
					if (v:findFirstChild("Head").Position - Position).magnitude <= Distance then
						table.insert(List, v)
					end 
				end 
			end 
		end 
	end
	return List
end
			aaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2),NumberSequenceKeypoint.new(1, 3)})
			bbb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
			local Blood = Create("ParticleEmitter"){
			Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(.5, 0, 0)),
			LightEmission = .1,
			Size = NumberSequence.new(0.2),
			Texture = "rbxassetid://771221224",
			Transparency = bbb,
			Size = aaa,
			ZOffset = .8,
			Acceleration = Vector3.new(0, -25, 0),
			LockedToPart = false,
			EmissionDirection = "Top",
			Lifetime = NumberRange.new(.4, .6),
			Rate = 1000,
			Rotation = NumberRange.new(-100, 100),
			RotSpeed = NumberRange.new(-100, 100),
			Speed = NumberRange.new(20),
			VelocitySpread = 1000,
			Enabled = false,
			Parent = Head
			}


EffectModel = Instance.new("Model", Character)
EffectModel.Name = "Effects"

Effects = {
	Block = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type, Part)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(.2,.2,.2))
			prt.Anchored = true
			prt.CFrame = cframe
			msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
					msh,
					Part
				})
			elseif Type == 4 then
				table.insert(Effects, {
					prt,
					"Block2Fire",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			end
		end
	};

	Sphere = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, parent)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(.2,.2,.2))
			prt.Anchored = true
			prt.CFrame = cframe
			if parent == nil then
				prt.Parent = workspace
			else
				prt.Parent = parent
			end
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
	};

	Blood = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(.2,.2,.2))
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Blood",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end
	};

	Blast = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Part)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(.2,.2,.2))
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "1323306", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Block4",
				delay,
				x3,
				y3,
				z3,
				msh,
				Part
			})
		end
	};

	Ring = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
	};

	Cylinder = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(.2,.2,.2))
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
	};

	Head = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(.2,.2,.2))
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Head", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
	};

	Wave = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(.2,.2,.2))
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
	};

	Break = {
		Create = function(brickcolor, cframe, x1, y1, z1)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
			prt.Anchored = true
			prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
			game:GetService("Debris"):AddItem(prt, 10)
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			local num = math.random(10, 50) / 1000
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
	};

	Elec = {
		Create = function(brickcolor, cff, x, y, z)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Part", Vector3.new(1, 1, 1))
			prt.Anchored = true
			prt.CFrame = cff * CFrame.new(math.random(-x * 100, x * 100) / 100, math.random(-y * 100, y * 100) / 100, math.random(-z * 100, z * 100) / 100)
			prt.CFrame = CFrame.new(prt.Position)
			game:GetService("Debris"):AddItem(prt, 10)
			xval = math.random() / 9
			yval = math.random() / 9
			zval = math.random() / 9
			msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(xval, yval, zval))
			eul1 = math.random(-50, 50)
			eul2 = math.random(-50, 50)
			eul3 = math.random(-50, 50)
			euld = CFrame.fromEulerAnglesXYZ(eul1, eul2, eul3)
			euld2 = CFrame.fromEulerAnglesXYZ(-eul1, -eul2, -eul3)
			table.insert(Effects, {
				prt,
				"Elec",
				.05,
				x,
				y,
				z,
				xval,
				yval,
				zval,
				msh,
				euld,
				euld2
			})
		end
	};

	Elec2 = {
		Create = function(brickcolor, cff, x, y, z)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Part", Vector3.new(1, 1, 1))
			prt.Anchored = true
			prt.CFrame = cff * CFrame.new(math.random(-x * 100, x * 100) / 100, math.random(-y * 100, y * 100) / 100, math.random(-z * 100, z * 100) / 100)
			prt.CFrame = CFrame.new(prt.Position)
			game:GetService("Debris"):AddItem(prt, 10)
			xval = math.random() / 7
			yval = math.random() / 7
			zval = math.random() / 7
			msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(xval, yval, zval))
			eul1 = math.random(-50, 50)
			eul2 = math.random(-50, 50)
			eul3 = math.random(-50, 50)
			euld = CFrame.fromEulerAnglesXYZ(eul1, eul2, eul3)
			euld2 = CFrame.fromEulerAnglesXYZ(-eul1, -eul2, -eul3)
			table.insert(Effects, {
				prt,
				"Elec",
				.1,
				x,
				y,
				z,
				xval,
				yval,
				zval,
				msh,
				euld,
				euld2
			})
		end
	};

	Clone = {
		Create = function() 
			for _, v in pairs(Torso.Parent:children()) do
				if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
					local c = CFuncs.Part.Create(EffectModel, "Neon", 0, .5, BrickColor.new("Bright blue"), "Effect", v.Size)
					c.Anchored = true
					c.CFrame = v.CFrame
					game:GetService("Debris"):AddItem(c, 5)
					local cmsh = nil
					if v.Name == "Head" then
						cmsh = CFuncs.Mesh.Create("SpecialMesh", c, "Head", "", Vector3.new(0, 0, 0), v.Mesh.Scale)
					else
						cmsh = CFuncs.Mesh.Create("BlockMesh", c, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
					end
					table.insert(Effects, {
						c,
						"Cylinder",
						0.05,
						0.1,
						0.1,
						0.1,
						cmsh
					})
				end
			end
		end
	};

	EffectTemplate = {

	};
}

local Re = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','`','1','2','3','4','5','6','7','8','9','0','-','=','~','!','@','#','$','%','^','&','*','(',')','_','+','[','{',']','}',',','<','>','.','/','?','"',"'",'|',';',':'}

Lag = {
"????: ",
"Kills: ",
"????: ",
"K l  : ",
" il s: ",
"   l : ",
"Ki  s: ",
"????????????????????????????????????????????: ",
" ?  : ",
"  ??: ",
"KKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK: ",
"  ? : ",
"?  ?: ",
" ???: ",
"????????????????????????????????????????????: ",
"??????????????????????????????????????????????: ",
"?????????????????????????????????????????????\?????????????????????????????????????????????\?????????????????????????????????????????????\?????????????????????????????????????????????\?????????????????????????????????????????????\?????????????????????????????????????????????\?????????????????????????????????????????????\?????????????????????????????????????????????\?????????????????????????????????????????????\?????????????????????????????????????????????\???????????????????????????????????????????????\?????????????????????????????????????????????\?????????????????????????????????????????????\?????????????????????????????????????????????\?????????????????????????????????????????????\?????????????????????????????????????????????\?????????????????????????????????????????????\?????????????????????????????????????????????\?????????????????????????????????????????????\?????????????????????????????????????????????\?????????????????????????????????????????????\??????????????????????????????????????????????\?????????????????????????????????????????????\?????????????????????????????????????????????\?????????????????????????????????????????????: ",
"K\i\l\l\s\: ",
"??\????\??????\????????\??????????\????????????\??????????????\????????????????\??????????????????\????????????????????\??????????????????????\????????????????????????: ",
"     : ",
"    : ",
"?: ",
"K??ls: ",
": ",
"Psychopath x Genocider",
}
--[[
function chatfunc(text)
	local chat = coroutine.wrap(function()
	if Character:FindFirstChild("TalkingBillBoard")~= nil then
		Character:FindFirstChild("TalkingBillBoard"):destroy()
	end
	local Bill = Instance.new("BillboardGui",Character)
	Bill.Size = UDim2.new(0,100,0,40)
	Bill.StudsOffset = Vector3.new(0,3,0)
	Bill.Adornee = Character.Head
	Bill.Name = "TalkingBillBoard"
	local Hehe = Instance.new("TextLabel",Bill)
	Hehe.BackgroundTransparency = 1
	Hehe.BorderSizePixel = 0
	Hehe.Text = ""
	Hehe.Font = "Bodoni"
	Hehe.TextSize = 40
	Hehe.TextStrokeTransparency = 0
	Hehe.Size = UDim2.new(1,0,0.5,0)
	coroutine.resume(coroutine.create(function()
		while Hehe ~= nil do
			swait()	
			Hehe.Position = UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))	
			Hehe.Rotation = math.random(-5,5)
			Hehe.TextColor3 = Color3.new(math.random(0, 255)/255,0,0)
			Hehe.TextStrokeColor3 = Color3.new(math.random(0, 255)/255,0,0)
		end
	end))
	for i = 1,string.len(text),1 do
		swait()
		Hehe.Text = string.sub(text,1,i)
	end
	swait(90)--Re[math.random(1, 93)]
	for i = 0, 1, .025 do
		swait()
		Bill.ExtentsOffset = Vector3.new(math.random(-i, i), math.random(-i, i), math.random(-i, i))
		Hehe.TextStrokeTransparency = i
		Hehe.TextTransparency = i
	end
	Bill:Destroy()
	end)
chat()
end

function onChatted(msg)
	chatfunc(msg)
end

Player.Chatted:connect(onChatted)
]]


while true do
	swait()
	D1.Rotation = D1.Rotation - 2
	D2.Rotation = D2.Rotation + 4
	Animie = math.random(1, 5) / 10
	if Deed == false then
	Torso.Neck.C0 = clerp(Torso.Neck.C0, Torso.Neck.C0 * CFrame.Angles(math.rad(math.random(-Animie * 20, Animie * 20)), math.rad(math.random(-Animie * 20, Animie * 20)), math.rad(math.random(-Animie * 20, Animie * 20))), .5)
	end
	if Head:findFirstChild("face") ~= nil then
		Head:findFirstChild("face"):Destroy()
	end
	if spook.Parent == nil then
		spook = Create("Sound"){
		Parent = Character,
		SoundId = "rbxassetid://504871254",
		Volume = 1.3,
		PlaybackSpeed = .3,
		Looped = true
		}
		spook2 = Create("PitchShiftSoundEffect"){
		Parent = spook,
		Octave = 1
		}
		spook:Play()
	end
	for i, v in pairs(Character:GetChildren()) do
		if v:IsA("Part") then
			v.Material = "SmoothPlastic"
		elseif v:IsA("Accessory") then
			v:WaitForChild("Handle").Material = "SmoothPlastic"
		end
	end
	if Victim ~= nil and Victim:FindFirstChildOfClass("Humanoid") == nil then
	Victim = nil
	Billb.Adornee = nil
	Billb.Enabled = false
	end
	Humanoid.MaxHealth = 11111110896723058319876184696208490496
	Humanoid.Health = 11111110896723058319876184696208490496
	TorsoVelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	Velocity = RootPart.Velocity.y
	Sine = Sine + Change
	local hit, pos = RayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
		if RootPart.Velocity.y > 1 and hit == nil then 
			Anim = "Jump"
			if Attack == false then
				Change = 1
			PlayAnimationFromTable({
        		 CFrame.new(-0, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        		 CFrame.new(0, 1.48630166, 0.0828605741, 1, 0, 0, 0, 0.986636221, -0.162939042, 0, 0.162939042, 0.986636221) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        		 CFrame.new(1.54998243, 0.0460062027, 0, 0.96711725, -0.254331052, 0, 0.254331052, 0.96711725, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        		 CFrame.new(-1.60585427, 0.120478928, -0, 0.945319474, 0.326146126, 0, -0.326146156, 0.945319474, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        		 CFrame.new(0.5, -1.98453414, 0.0931893736, 1, 0, 0, 0, 0.98649478, 0.163792953, 0, -0.163792953, 0.98649478) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        		 CFrame.new(-0.5, -1.98326659, 0.121506959, 1, 0, 0, 0, 0.99064213, 0.13648501, 0, -0.13648501, 0.99064213) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			}, Animie, false)
			end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if Attack == false then
				Change = 1
			PlayAnimationFromTable({
        		 CFrame.new(0, -0.00281290524, -0.110870562, 1, 0, 0, 0, 0.983663857, 0.180014983, 0, -0.180014983, 0.983663857) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        		 CFrame.new(0, 1.43970644, -0.17384778, 1, 0, 0, 0, 0.963594437, 0.267368227, 0, -0.267368197, 0.963594437) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
                 CFrame.new(1.87205124, 0.239569426, 1.33605636e-05, 0.610077322, -0.792341948, -3.13323631e-06, 0.792341888, 0.610077322, 6.70552254e-07, 1.38580799e-06, -2.90572643e-06, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        		 CFrame.new(-1.88090944, 0.174126849, -0.0411957316, 0.636063814, 0.770755291, -0.0368679203, -0.771619737, 0.635008395, -0.0369789898, -0.00509031117, 0.0519690178, 0.998635769) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        		 CFrame.new(0.611441433, -1.93454111, -0.205220982, 0.996495903, -0.0836423263, 9.74191153e-07, 0.0828808397, 0.987422228, -0.134641305, 0.0112607507, 0.134169608, 0.990894377) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        		 CFrame.new(-0.570478976, -1.94810426, -0.143567681, 0.996611655, 0.0822507069, -1.19118874e-06, -0.0817528069, 0.99057734, -0.109877877, -0.00903635286, 0.109505668, 0.993945122) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			}, Animie, false)
			end
		elseif TorsoVelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if Attack == false then
				Change = 1
			PlayAnimationFromTable({
      	    	CFrame.new(0, 0.00304500386 - .1 * math.cos(Sine / 45), -0.25276947, 1, 0, 0, 0, 0.966956854, 0.254939973, 0, -0.254939973, 0.966956854) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
      	    	CFrame.new(0, 1.48396528, -0.184687465, 1, 0, 0, 0, 0.938511074, 0.345249116, 0, -0.345249116, 0.938511074) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
      	 		CFrame.new(1.44362104, 0.0105986297, -0.173658058, 0.99780637, -0.0662000254, 0, 0.0640125647, 0.964835703, -0.254939973, 0.0168770328, 0.254380733, 0.966956854) * CFrame.new(0, 0 - .02 * math.cos(Sine / 45) + -math.sin(Sine / 45) / 15, 0) * CFrame.Angles(0, 0, math.rad(0 + 4 * math.cos(Sine / 45) + -math.sin(Sine / 45) / 15)), 
      			CFrame.new(-1.48667848, 0.0416535959, -0.221442789, 0.996128142, 0.0879139975, 0, -0.0850090459, 0.963212907, -0.254939973, -0.0224127937, 0.253952891, 0.966956854) * CFrame.new(0, 0 - .02 * math.cos(Sine / 45) + -math.sin(Sine / 45) / 15, 0) * CFrame.Angles(0, 0, math.rad(0 - 4 * math.cos(Sine / 45) + -math.sin(Sine / 45) / 15)), 
     	    	CFrame.new(0.537495971, -1.99924409, -0.2656973, 0.998377502, -0.0569419749, 0, 0.0550604314, 0.96538794, -0.254939973, 0.0145167857, 0.254526347, 0.966956854) * CFrame.new(0, 0 + .1 * math.cos(Sine / 45), 0) * CFrame.Angles(0, 0, 0), 
     	    	CFrame.new(-0.544956386, -1.99696815, -0.265097141, 0.995043218, 0.0994440243, 0, -0.0961580798, 0.962163866, -0.254939973, -0.0253522564, 0.253676295, 0.966956854) * CFrame.new(0, 0 + .1 * math.cos(Sine / 45), 0) * CFrame.Angles(0, 0, 0), 
			}, Animie, false)
			end
		elseif TorsoVelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if Attack == false then
				Change = 3
			PlayAnimationFromTable({
     	    	CFrame.new(0, 0.0217996836, -0.15443182, 1, 0, 0, 0, 0.982294619, 0.187342957, 0, -0.187342942, 0.982294619) * CFrame.new(0, -.1 - .15 * math.cos(Sine / 6), 0) * CFrame.Angles(0, math.rad(0 - 15 * math.sin(Sine / 12) / 2), 0),  
     	    	CFrame.new(0, 1.50440693, -0.177497774, 1, 0, 0, 0, 0.98494184, 0.172886148, 0, -0.172886133, 0.9849419) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
     	    	CFrame.new(1.51832783, -0.0136715584, -0.18358618, 0.99780637, -0.0662000254, 0, 0.0650279298, 0.980139852, -0.187342942, 0.0124021089, 0.186931998, 0.982294619) * CFrame.new(0, .1 - .15 * math.sin(Sine / 12), 0 - .5 * math.cos(Sine / 12)) * CFrame.Angles(math.rad(0 + 40 * math.cos(Sine / 12) + -math.sin(Sine / 12)), 0, 0), 
     	    	CFrame.new(-1.51726496, 0.00152201951, -0.180036053, 0.996128142, 0.0879139975, 0, -0.086357452, 0.978491306, -0.187342942, -0.0164700691, 0.186617598, 0.982294619) * CFrame.new(0, .1 + .15 * math.sin(Sine / 12), 0 + .5 * math.cos(Sine / 12)) * CFrame.Angles(math.rad(0 - 40 * math.cos(Sine / 12) + -math.sin(Sine / 12)), 0, 0), 
     	    	CFrame.new(0.537497759, -2.01284766, -0.226675838, 0.998377502, -0.0569419749, 0, 0.0559337959, 0.98070085, -0.187342942, 0.010667678, 0.187038988, 0.982294619) * CFrame.new(0, .1 + .15 * math.sin(Sine / 12), 0 + 1 * math.cos(Sine / 12)) * CFrame.Angles(math.rad(0 - 60 * math.cos(Sine / 12) + -math.sin(Sine / 12)), 0, 0), 
     	    	CFrame.new(-0.544956088, -2.01053548, -0.226234794, 0.995043218, 0.0994440243, 0, -0.0976833329, 0.977425575, -0.187342942, -0.0186301377, 0.186414331, 0.982294619) * CFrame.new(0, .1 - .15 * math.sin(Sine / 12), 0 - 1 * math.cos(Sine / 12)) * CFrame.Angles(math.rad(0 + 60 * math.cos(Sine / 12) + -math.sin(Sine / 12)), 0, 0), 
			}, Animie, false)
			end
		end
	if #Effects > 0 then
		for e = 1, #Effects do
			if Effects[e] ~= nil then
				local Thing = Effects[e]
				if Thing ~= nil then
					local Part = Thing[1]
					local Mode = Thing[2]
					local Delay = Thing[3]
					local IncX = Thing[4]
					local IncY = Thing[5]
					if Thing[2] == "Shoot" then
					Look = Thing[1]
					local hit, pos = RayCast(Thing[4], Look, 20, Character)
					local mag = (Thing[4] - pos).magnitude 
					Effects.Cylinder.Create(BrickColor.new("New Yeller"),CFrame.new((Thing[4] + pos)/2, pos)*CFrame.Angles(1.57,0,0),.5,mag * 5,.5,0,0,0,0.14)
					Thing[4]=Thing[4] + (Look * 20)
					Thing[3]=Thing[3] - 1
					if hit ~= nil and hit.Parent:findFirstChildOfClass("Humanoid") ~= nil then
					local ref = CFuncs.Part.Create(m,Enum.Material.Neon,0,1,"New Yeller","ref",Vector3.new(0.05,0.05,0.05))
					ref.Anchored = true
					ref.CFrame = CFrame.new(pos)
					CFuncs.Sound.Create("1166474639", ref, 1.2, 1.1) 
					Damage(hit, hit, 0, 0, 0,  "Blood", hit, 0, "Top", "142858160", math.random(2, 5)/1.4)
					game:GetService("Debris"):AddItem(ref, 1)
                    elseif hit ~= nil and hit.Parent:findFirstChildOfClass("Humanoid") == nil then
                    Thing[3] = 0
					end
					--MagnitudeDamage(ref, 2, 8, 9, 0, .2, "Normal")
					end
					if Thing[3] <= 0 then
					table.remove(Effects, e)
					end
					end
					if Thing[2] ~= "Shoot" then
					if Thing[1].Transparency <= 1 then
						if Thing[2] == "Block1" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Ice" then
							if Thing[6] <= Thing[5] then
								Thing[6] = Thing[6] + .05
								Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, .4, 0)
							else
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							end
						elseif Thing[2] == "Shatter" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
							Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
							Thing[6] = Thing[6] + Thing[5]
						elseif Thing[2] == "Block2" then
							Thing[1].CFrame = Thing[1].CFrame
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block3" then
							Thing[1].CFrame = Thing[8].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block4" then
							Thing[1].CFrame = Thing[8].CFrame * CFrame.new(0, -Thing[7].Scale.Y, 0) * CFrame.fromEulerAnglesXYZ(3.14, 0, 0)
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block2Fire" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							if Thing[1].Transparency >= .3 then
								Thing[1].BrickColor = BrickColor.new("Bright red")
							else
								Thing[1].BrickColor = BrickColor.new("Bright yellow")
							end
						elseif Thing[2] == "Cylinder" then
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, -.5, 0)
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							Mesh = Thing[10]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							Thing[1].CFrame = Thing[1].CFrame * Thing[11] * CFrame.new(0, 0, .2)
							Thing[1].Rotation = Vector3.new(0, 0, 0)
						elseif Thing[2] == "Disappear" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
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