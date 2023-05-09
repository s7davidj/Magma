function LoadLibrary(a)
    return loadstring(game:HttpGet("https://pastebin.com/raw/UfzKgS6T", true))()
end

loadstring(game:GetObjects("rbxassetid://4480871791")[1].Source)()


-----------------------
--[[ Name : NÍ¢ÍŸÌ§Ì¢Ì¨oÍÍ¢ Í¢Ì§oÌ›Ì¶Ì¢Ì¶Ì¶nÍœÍeÌ¶Ì¨Í Ì¡'ÍÍÍžÍÒ‰sÌ§Ì¨Í ÍœaÍÒ‰rÌ›ÌµÍŸÌ·Ì›oÍÍŸÌ¶Ì¡uÌ¶Ì¨Ì¸ÌµÍnÍ¡ÍÍ¡ÍÌ·dÍ€ÍœÍŸ Ì¡ÌµÍÍœÍtÍ˜Í€Ì¡oÍÍ¡Ì•Í€ Í¢hÍ ÍeÍ¢ÍœÌµlÍ¢Ì§Í¡Ì¡pÌ›ÍÍ.Ì§Ì¨Ì· ]]--
-------------------------------------------------------
--A script By makhail07

--Discord Creterisk#2958 

--NOTE THIS SCRIPT WAS PURELY MADE FROM MY FUCKING IMAGINATION
--IF IT HAPPENS TO LOOK LIKE ANOTHER SCRIPT
--DONT CALL IT A FUCKING BOOTLEG THANK YOU AND ENJOY THE SCRIPT
--YOU FUCKING SKIDS,
--For Those who log/decompile this, If you sell or trade this,
--and I find out who you are, i will take massive action.
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



--The reality of my life isn't real but a Universe -makhail07
wait()
local plr = game:service'Players'.LocalPlayer
print('Local User is '..plr.Name)
local char = game.Workspace.CloneCharacter
local hum = char.Humanoid
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
local maincolor = BrickColor.new("Institutional white")
-------------------------------------------------------
--Start Whitelist and Invincibility--
-------------------------------------------------------	
--[[function checkfriendlist(model)
local friend = false
local target = nil
if model.ClassName == "Player" then
target = model
else
target = game:GetService("Players"):GetPlayerFromCharacter(model)
end
if target ~= nil then
if target:IsFriendsWith(19909695) then friend = true end
end
return friend
end
if checkfriendlist(game:GetService("Players").LocalPlayer) == true then
	warn('Youre whitelisted/friends with the creator, Have fun! ' ..plr.Name)
end

if checkfriendlist(game:GetService("Players").LocalPlayer) == false then
	warn('How did you even get this script? ' ..plr.Name)
error"Your are not whitelisted/Friends with the creator."
end]]

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
function MagicBlock(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, char, 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.Material = "Neon"
	prt.CFrame = cframe
	prt.CFrame = prt.CFrame * Euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
local msh = mesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		for i = 0, 1, delay do
			swait()
			Part.CFrame = Part.CFrame * Euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + Vector3.new(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end


function MagicShockAlt(brickcolor, cframe, x1, y1, x3, y3, delay, rottype)
	local prt = part(3, char, 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.Material = "Neon"
	prt.CFrame = cframe
local msh = mesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, 0.01))
	game:GetService("Debris"):AddItem(prt, 5)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		local rtype = rottype
		for i = 0, 1, delay do
			swait()
			if rtype == 1 then
				prt.CFrame = prt.CFrame * CFrame.Angles(0, 0, 0.1)
			elseif rtype == 2 then
				prt.CFrame = prt.CFrame * CFrame.Angles(0, 0, -0.1)
			end
			prt.Transparency = i
			Mesh.Scale = Mesh.Scale + Vector3.new(x3, y3, 0)
		end
		Part.Parent = nil
	end), prt, msh)
end

-------------------------------------------------------
--Start Good Stuff--
-------------------------------------------------------
cam = game.Workspace.CurrentCamera
CF = CFrame.new
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

--------------
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
	
Gaunty = New("Model",char,"Gaunty",{})
Handle = New("Part",Gaunty,"Handle",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 1.26999998, 1),CFrame = CFrame.new(-5.67319345, 3.02064276, -77.6615906, 0.999894261, 0.010924357, 0.00963267777, -0.0110270018, 0.999882579, 0.0106679145, -0.00951499958, -0.0107729975, 0.999897003),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Handle,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.82765579, 3.62595344, -77.6579285, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.161155701, 0.603512526, 0.00862884521, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-6.13765526, 3.62595367, -77.6579285, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.471122265, 0.600126028, 0.00564575195, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.5176549, 3.62595415, -77.6579285, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.148812294, 0.606899738, 0.0116195679, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.21765471, 3.62595463, -77.6579285, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.448780537, 0.610177517, 0.014503479, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-6.13765526, 2.53595448, -77.6579285, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.459102631, -0.489744425, -0.00598144531, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.82765627, 2.53595448, -77.6579285, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.149136543, -0.486357927, -0.00299835205, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.51765537, 2.53595448, -77.6579361, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.160831451, -0.48297143, -1.52587891e-05, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.21765566, 2.53595424, -77.6579361, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.460799217, -0.479694128, 0.00286865234, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.07999992, 0.279999971, 1.06999993),CFrame = CFrame.new(-5.66865063, 3.64553881, -77.6613617, 0.999894857, 0.0109243635, 0.00963268708, -0.0110270083, 0.999883175, 0.0106679257, -0.00951500144, -0.0107729994, 0.999897599),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),C1 = CFrame.new(-0.00235080719, 0.624869347, 0.00694274902, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.66490126, 3.73544312, -77.6652145, 0.999894857, 0.0109243635, 0.00963268708, -0.0110270083, 0.999883175, 0.0106679257, -0.00951500144, -0.0107729994, 0.999897599),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),C1 = CFrame.new(0.000443935394, 0.714845657, 0.00408172607, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.66480446, 3.52554965, -77.65522, 0.999894857, 0.0109243635, 0.00963268708, -0.0110270083, 0.999883175, 0.0106679257, -0.00951500144, -0.0107729994, 0.999897599),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),C1 = CFrame.new(0.00275993347, 0.504870415, 0.0118331909, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.07999992, 0.279999971, 1.06999993),CFrame = CFrame.new(-5.6686511, 2.55553746, -77.6613541, 0.999894857, 0.0109243635, 0.00963268708, -0.0110270083, 0.999883175, 0.0106679257, -0.00951500144, -0.0107729994, 0.999897599),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),C1 = CFrame.new(0.00966835022, -0.465003252, -0.00468444824, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.66490126, 2.64544272, -77.6652145, 0.999894857, 0.0109243635, 0.00963268708, -0.0110270083, 0.999883175, 0.0106679257, -0.00951500144, -0.0107729994, 0.999897599),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),C1 = CFrame.new(0.0124630928, -0.375026226, -0.00754547119, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.66480494, 2.43554902, -77.65522, 0.999894857, 0.0109243635, 0.00963268708, -0.0110270083, 0.999883175, 0.0106679257, -0.00951500144, -0.0107729994, 0.999897599),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),C1 = CFrame.new(0.0147790909, -0.585001707, 0.000205993652, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265606, 3.62595463, -78.1079407, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(-0.0018901825, 0.61005497, -0.439842224, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265606, 3.62595558, -77.8179321, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(-0.00464963913, 0.606931448, -0.149864197, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765547, 3.62595606, -77.4879303, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(-0.00278997421, 0.603431463, 0.180152893, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765547, 3.62595654, -77.1979294, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(-0.00554895401, 0.600307703, 0.470123291, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765547, 2.53595638, -77.1979294, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(0.0064702034, -0.489563704, 0.458496094, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765547, 2.53595614, -77.4879303, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(0.00922966003, -0.486439705, 0.168525696, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265558, 2.53595638, -77.8179245, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(0.00736999512, -0.482939243, -0.161483765, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265606, 2.53595614, -78.1079254, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(0.0101289749, -0.479815245, -0.451454163, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765547, 3.62595677, -77.1979218, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(-0.00554943085, 0.600307941, 0.47013092, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 3.62595701, -77.4879303, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(-0.00278949738, 0.603432655, 0.180152893, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765451, 3.62595749, -77.8179321, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0.000350952148, 0.606987953, -0.149810791, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765451, 3.62595749, -78.107933, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0.00311040878, 0.61011219, -0.439788818, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.53595734, -78.107933, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0.0151295662, -0.479759216, -0.451416016, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.5359571, -77.8179245, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0.0123701096, -0.482883692, -0.161437988, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.5359571, -77.4879227, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0.00923013687, -0.48643899, 0.168533325, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.53595686, -77.1979218, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0.00647068024, -0.489563227, 0.458503723, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-6.13765478, 3.62595701, -77.6579132, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.471121788, 0.600129128, 0.00566101074, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.82765484, 3.62595725, -77.6579132, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.161154747, 0.603516102, 0.008644104, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.51765442, 3.62595773, -77.6579132, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.148812771, 0.606903076, 0.0116348267, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.21765375, 3.6259582, -77.6579132, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.44878149, 0.610180855, 0.0145187378, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.21765327, 2.53595781, -77.6579132, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.460801125, -0.47969079, 0.00289154053, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.51765299, 2.53595757, -77.6579208, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.160833359, -0.48296833, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.82765341, 2.53595734, -77.6579208, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.149133682, -0.486355066, -0.00299072266, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-6.13765383, 2.53595734, -77.6579208, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.4591012, -0.489741802, -0.00597381592, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("WedgePart",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.25000003),CFrame = CFrame.new(-5.66203499, 3.4509573, -77.7865677, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(0.00760126114, 0.431732178, -0.120269775, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("WedgePart",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.280000031),CFrame = CFrame.new(-5.66203451, 3.45095778, -77.5215683, -1.0000006, -6.18456397e-10, -9.12696123e-08, 6.18456397e-10, 1.0000006, -4.65661287e-09, 8.38190317e-08, 4.65661287e-09, -1.0000006),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 8.74227766e-08, 0, 1, 0, -8.74227766e-08, 0, -1),C1 = CFrame.new(0.00508022308, 0.428877592, 0.144706726, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("WedgePart",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.25000003),CFrame = CFrame.new(-5.66203403, 2.81095791, -77.7865601, -1.0000006, 8.81700544e-08, 3.7252903e-09, -8.69331416e-08, -1.0000006, 4.65661287e-09, -3.7252903e-09, -4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, -8.74227766e-08, 0, 8.74227766e-08, -1, 0, 0, 0, 1),C1 = CFrame.new(0.0146594048, -0.208191872, -0.127082825, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("WedgePart",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.280000031),CFrame = CFrame.new(-5.66203356, 2.8209579, -77.5215607, 1.0000006, -8.69331416e-08, 8.38190317e-08, -8.81700544e-08, -1.0000006, -4.65661287e-09, 9.12696123e-08, -4.65661287e-09, -1.0000006),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, -8.74227766e-08, 8.74227766e-08, -8.74227766e-08, -1, -7.64274186e-15, 8.74227766e-08, 0, -1),C1 = CFrame.new(0.0120282173, -0.201047897, 0.137992859, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Wedge = New("WedgePart",Gaunty,"Wedge",{BrickColor = BrickColor.new("Black"),Size = Vector3.new(1.1099999, 0.569999993, 1.13),CFrame = CFrame.new(-5.6508193, 4.06113148, -77.6620178, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Wedge,"mot",{Part0 = Wedge,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.0109024048, 1.04061508, 0.010887146, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})


NewInstance = function(instance,parent,properties)
	local inst = Instance.new(instance,parent)
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end

local HW = NewInstance('Motor', char, {Part0 = ra, Part1 = Handle, C0 = CF(0,-.51,0)})

for _,v in next, Gaunty:children() do
	v.CanCollide = false
end


local all, last = {}, nil
ArmourParts = {}
NeonParts = {}
function scan(p)
  for _, v in pairs(p:GetChildren()) do
    if v:IsA("BasePart") then
      if v.BrickColor == BrickColor.new("Black") then
        table.insert(ArmourParts, v)
      end
      if v.BrickColor == BrickColor.new("Institutional white") then
        table.insert(NeonParts, v)
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
scan(Gaunty)
local all2, last2 = {}, nil
ArmourParts2 = {}
NeonParts2 = {}
function scan2(p)
  for _, v in pairs(p:GetChildren()) do
    if v:IsA("BasePart") then
      if v.BrickColor == BrickColor.new("Black") then
        table.insert(ArmourParts2, v)
      end
      if v.BrickColor == BrickColor.new("Institutional white") then
        table.insert(NeonParts2, v)
      end
      if last2 then
        local w = Instance.new("Weld")
        w.Part0, w.Part1 = last2, v
        w.C0 = v.CFrame:toObjectSpace(last2.CFrame):inverse()
        w.Parent = last2
      end
      table.insert(all2, v)
      last2 = v
    end
    scan2(v)
  end
end
for i, v in pairs(ArmourParts) do
     v.BrickColor = BrickC("Black")
		end
for i, v in pairs(NeonParts) do
     v.BrickColor = BrickColor.random()
      	end
for i, v in pairs(ArmourParts2) do
     v.BrickColor = BrickC("Black")
		end
for i, v in pairs(NeonParts2) do
     v.BrickColor = BrickColor.random()
      	end
maincolor = BrickColor.random()
-------------------------------------------------------
--End HeartBeat--
-------------------------------------------------------
local l = game.Lighting
local sky = Instance.new("Sky",l)
l.TimeOfDay = "00:00:00"
l.Brightness = 1
l.Ambient = Color3.new(0.25, 0.5, 0.75)


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

local EyeSizes={
	NumberSequenceKeypoint.new(0,0.65,0),
	NumberSequenceKeypoint.new(0.5,0.7,0),
	NumberSequenceKeypoint.new(1,0,0)
}
local EyeTrans={
	NumberSequenceKeypoint.new(0,0,0),
	NumberSequenceKeypoint.new(0.5,0,0),
	NumberSequenceKeypoint.new(1,1,0)
}
local PE2=Instance.new("ParticleEmitter", ra)
PE2.LightEmission=.9
PE2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0)),ColorSequenceKeypoint.new(0.2,Color3.new(1,1,0)),ColorSequenceKeypoint.new(0.4,Color3.new(0,1,0)),ColorSequenceKeypoint.new(0.6,Color3.new(0,1,1)),ColorSequenceKeypoint.new(0.8,Color3.new(0,0,1)),ColorSequenceKeypoint.new(1,Color3.new(0,0,1))})
PE2.Size=NumberSequence.new(EyeSizes)
PE2.Transparency=NumberSequence.new(EyeTrans)
PE2.Lifetime=NumberRange.new(0.35)
PE2.Rotation=NumberRange.new(0,360)
PE2.Rate=999
PE2.VelocitySpread = 10000
PE2.Acceleration = Vector3.new(0,25,0)
PE2.ZOffset = 0.5
PE2.Drag = 0
PE2.Speed = NumberRange.new(0,0,0)
PE2.Texture="rbxasset://textures/particles/explosion01_implosion_main.dds"
PE2.Name = "PE2"
PE2.Enabled = true
PE2.LockedToPart = true


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
function CreatePart(FormFactor, Parent, Material, Reflectance, Transparency, BColor, Name, Size)
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
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
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
--------------------
-----------------------------------
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
-------------------------------------------------------
--End Important Functions--
-------------------------------------------------------
local Trail = Instance.new("Trail",char)
local attachment0 = Instance.new("Attachment",char["Right Arm"])
attachment0.Name = "TrailAttachment0"
attachment0.CFrame = CFrame.new(-0.25,-1,0)
local attachment1 = Instance.new("Attachment",char["Right Arm"])
attachment1.CFrame = CFrame.new(0.25,-1,0)
attachment1.Name = "TrailAttachment1"
Trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)})
Trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0)),ColorSequenceKeypoint.new(0.2,Color3.new(1,1,0)),ColorSequenceKeypoint.new(0.4,Color3.new(0,1,0)),ColorSequenceKeypoint.new(0.6,Color3.new(0,1,1)),ColorSequenceKeypoint.new(0.8,Color3.new(0,0,1)),ColorSequenceKeypoint.new(1,Color3.new(0,0,1))})
Trail.Lifetime = 0.5
Trail.Attachment0 = attachment0
Trail.Attachment1 = attachment1

local Trail = Instance.new("Trail",char)
local attachment0 = Instance.new("Attachment",char["Left Arm"])
attachment0.Name = "TrailAttachment0"
attachment0.CFrame = CFrame.new(-0.25,-1,0)
local attachment1 = Instance.new("Attachment",char["Left Arm"])
attachment1.CFrame = CFrame.new(0.25,-1,0)
attachment1.Name = "TrailAttachment1"
Trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)})
Trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0)),ColorSequenceKeypoint.new(0.2,Color3.new(1,1,0)),ColorSequenceKeypoint.new(0.4,Color3.new(0,1,0)),ColorSequenceKeypoint.new(0.6,Color3.new(0,1,1)),ColorSequenceKeypoint.new(0.8,Color3.new(0,0,1)),ColorSequenceKeypoint.new(1,Color3.new(0,0,1))})
Trail.Lifetime = 0.5
Trail.Attachment0 = attachment0
Trail.Attachment1 = attachment1

local Trail = Instance.new("Trail",char)
local attachment0 = Instance.new("Attachment",char["Right Leg"])
attachment0.Name = "TrailAttachment0"
attachment0.CFrame = CFrame.new(-0.25,-1,0)
local attachment1 = Instance.new("Attachment",char["Right Leg"])
attachment1.CFrame = CFrame.new(0.25,-1,0)
attachment1.Name = "TrailAttachment1"
Trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)})
Trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0)),ColorSequenceKeypoint.new(0.2,Color3.new(1,1,0)),ColorSequenceKeypoint.new(0.4,Color3.new(0,1,0)),ColorSequenceKeypoint.new(0.6,Color3.new(0,1,1)),ColorSequenceKeypoint.new(0.8,Color3.new(0,0,1)),ColorSequenceKeypoint.new(1,Color3.new(0,0,1))})
Trail.Lifetime = 0.5
Trail.Attachment0 = attachment0
Trail.Attachment1 = attachment1

local Trail = Instance.new("Trail",char)
local attachment0 = Instance.new("Attachment",char["Left Leg"])
attachment0.Name = "TrailAttachment0"
attachment0.CFrame = CFrame.new(-0.25,-1,0)
local attachment1 = Instance.new("Attachment",char["Left Leg"])
attachment1.CFrame = CFrame.new(0.25,-1,0)
attachment1.Name = "TrailAttachment1"
Trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)})
Trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0)),ColorSequenceKeypoint.new(0.2,Color3.new(1,1,0)),ColorSequenceKeypoint.new(0.4,Color3.new(0,1,0)),ColorSequenceKeypoint.new(0.6,Color3.new(0,1,1)),ColorSequenceKeypoint.new(0.8,Color3.new(0,0,1)),ColorSequenceKeypoint.new(1,Color3.new(0,0,1))})
Trail.Lifetime = 0.5
Trail.Attachment0 = attachment0
Trail.Attachment1 = attachment1



local Lite = IT("PointLight",tors)
Lite.Color = Color3.new(.7,0,1)
Lite.Range = 8
Lite.Brightness = 10
Lite.Shadows = true

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
local SONG = 1280408510
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
local Sit = 1
----------------------------------------------------------------------------------
hum.WalkSpeed = 8
hum.JumpPower = 57
hum.Animator.Parent = nil
----------------------------------------------------------------------------------
local r = 255
local g = 0
local b = 0
coroutine.resume(coroutine.create(function()
	while wait() do
		for i = 0, 50.8 do
			swait()
			g = g + 5
		end
		for i = 0, 50.8 do
			swait()
			r = r - 5
		end
		for i = 0, 50.8 do
			swait()
			b = b + 5
		end
		for i = 0, 50.8 do
			swait()
			g = g - 5
		end
		for i = 0, 50.8 do
			swait()
			r = r + 5
		end
		for i = 0, 50.8 do
			swait()
			b = b - 5
		end
	end
end))

---

				
----------------------------------------------------------------------------------
local naeeym2 = IT("BillboardGui",char)
naeeym2.AlwaysOnTop = true
naeeym2.Size = UDim2.new(5,35,2,15)
naeeym2.StudsOffset = Vector3.new(0,2,0)
naeeym2.MaxDistance = 75
naeeym2.Adornee = hed
naeeym2.Name = "Name"
local tecks2 = IT("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.TextScaled = true
tecks2.BorderSizePixel = 0
tecks2.Text = "No one's around to help."
tecks2.Font = "Fantasy"
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(1,1,1)
tecks2.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
tecks2.Size = UDim2.new(1,0,0.5,0)
tecks2.Parent = naeeym2
hed.face.Texture = "rbxassetid://33752579"
----------------------------------------------------------------------------------
Reaper = IT("Model")
Reaper.Parent = char
Reaper.Name = "Reaper"
RHe = IT("Part")
RHe.Parent = Reaper
RHe.BrickColor = BrickC("Really black")
RHe.Locked = true
RHe.CanCollide = false
RHe.Transparency = 0
PMesh = IT("SpecialMesh")
RHe.formFactor =  "Symmetric"
PMesh.MeshType = "FileMesh"
PMesh.MeshId = "rbxassetid://1374148"
PMesh.TextureId = "rbxassetid://185703978"
PMesh.Scale = Vector3.new(1, 1, 1)
PMesh.Parent = RHe
local RWeld = IT("Weld")
RWeld.Parent = RHe
RWeld.Part0 = RHe
RWeld.Part1 = hed
RWeld.C0 = CF(0, -.7, 0) * angles(0, 0, 0)
-------------------------------------------------------
--End Customization--
-------------------------------------------------------

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


-------------------------------------------------------
--Start Attacks N Stuff--
-------------------------------------------------------
function EndMySufferingV2()
	attack = true
	hum.WalkSpeed = 1.01
	CreateSound("577475178", hed, 10, 1)
	for i = 0,18,0.1 do
		swait()
	rootj.C0=clerp(rootj.C0,RootCF*CF(0,0,-0.1+0.1*math.cos(sine/20))*angles(math.rad(15),math.rad(-10),math.rad(0)),0.15)
	tors.Neck.C0=clerp(tors.Neck.C0,necko*angles(math.rad(35),math.rad(0),math.rad(0)),.3)
	RH.C0=clerp(RH.C0,CF(1,-.9-0.1*math.cos(sine/20),.025*math.cos(sine/20))*RHCF*angles(math.rad(-5),math.rad(0),math.rad(0)),0.15)
	LH.C0=clerp(LH.C0,CF(-1,-.9-0.1*math.cos(sine/20),.025*math.cos(sine/20))*LHCF*angles(math.rad(-5),math.rad(-0),math.rad(-20)),0.15)
	RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5+0.1*math.sin(sine/30), -0.6) * angles(math.rad(-0), math.rad(10), math.rad(-110)), 0.1)
	LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5+0.1*math.sin(sine/30), 0.055*math.cos(sine/20)) * angles(math.rad(-0), math.rad(-10), math.rad(-105)), 0.1)
	end
	attack = false
	hum.WalkSpeed = 16
end

function Ending()
	local target = nil
	local targettorso = nil
	if mouse.Target.Parent ~= char and mouse.Target.Parent.Parent ~= char and mouse.Target.Parent:FindFirstChild("Humanoid") ~= nil then
		if mouse.Target.Parent.Humanoid.PlatformStand == false then
			targetT  = mouse.Target.Parent
			target = mouse.Target.Parent.Humanoid
			targettorso = mouse.Target.Parent:FindFirstChild("Torso") or mouse.Target.Parent:FindFirstChild("UpperTorso")
			targethead = mouse.Target.Parent:FindFirstChild("Head")
		end
	end
	if target ~= nil then
		targettorso.Anchored = true
		attack = true
		hum.WalkSpeed = 0
		local originalpos = root.CFrame
		root.CFrame = targettorso.CFrame * CF(0,0,2.6)
		for i = 0,1.8,0.1 do
			swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-65)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(65)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-9), Rad(0), Rad(-10)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.2 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-8), Rad(0), Rad(10)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(35)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(25), Rad(0), Rad(-15)), 0.1)
		end
		Eviscerate(targetT)
		CreateSound("331666100", ra, 4, 1)
		CreateSound("180083286", targettorso, 10, 1)
		coroutine.resume(coroutine.create(function() 
		for i = 0,1.8,0.1 do
			swait()
			hum.CameraOffset = Vector3.new(Mrandom(-3,3),Mrandom(-3,3),Mrandom(-3,3))
		end
		for i = 0,1.8,0.1 do
			swait()
		hum.CameraOffset = Vector3.new(0,0,0)
		end
	end))
		for i = 0,4.6,0.1 do
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(-90)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-9), Rad(0), Rad(-10)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-8), Rad(0), Rad(10)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(90)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(25), Rad(0), Rad(-15)), 0.1)
		end
		wait(.6)
		root.CFrame = originalpos
		attack = false
	hum.WalkSpeed = 8
	end
end

function Painful_Stomp()
	attack = true
	for i = 0,0.1,0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-20)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.3 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(25)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(135), Rad(0), Rad(-45 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(135), Rad(0), Rad(45 + 2.5 * Sin(sine / 20))), 0.1)
	end	
	CreateSound("331666100", char, 10, 1)
	Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 10.6, 10.6, 0.05)
	Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 10.6, 10.6, 0.05)
	Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 10.6, 10.6, 0.05)
	Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 10.6, 10.6, 0.05)
	Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 35.6, 10.6, 0.05)
	Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -3, 0), 2, 2, 2, 150.6, .4, 150.6, 0.05)
	Effects.Ring.Create(BrickColor.Random(), root.CFrame * CF(0, -1.7, 0) * angles(Rad(90),Rad(0),Rad(0)), 2, 2, 2, 8.6, 8.6, 8.6, 0.03)
	for i, v in pairs(FindNearestHead(tors.CFrame.p, 52.5)) do
		if v:FindFirstChild("Head") then
			Eviscerate(v)
		end
	end
	coroutine.resume(coroutine.create(function() 
		for i = 0,2.8,0.1 do
			swait()
			hum.CameraOffset = Vector3.new(Mrandom(-3,3),Mrandom(-3,3),Mrandom(-3,3))
		end
		for i = 0,1.8,0.1 do
			swait()
		hum.CameraOffset = Vector3.new(0,0,0)
		end
	end))
	for i = 0,3.7,0.1 do
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(20), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(20)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(-25)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(-40), Rad(0), Rad(25 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(-40), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
	end
	wait(.6)
	attack = false
end

function Blast_Of_God()
	attack = true
	hum.WalkSpeed = 3.01
	for i = 0,6.3,0.1 do
		swait()
		Effects.Sphere.Create(BrickC("Toothpaste"), ra.CFrame * CF(0, -1, 0), 2, 2, 2, 3, 3, 3, 0.05)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1.2 + 0.3 * Cos(sine / 20)) * angles(Rad(5), Rad(0), Rad(90)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-4.5 * Sin(sine / 30)), Rad(0), Rad(-90)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.4 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-2.5 + 3 * Sin(sine / 20)), Rad(0), Rad(-20 + 2.5 * Sin(sine / 20))), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5 + 3 * Sin(sine / 20)), Rad(0), Rad(0 + 2.5 * Sin(sine / 20))), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-3 * Sin(sine / 20)), Rad(-10 * Sin(sine / 20)), Rad(90 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(4 * Sin(sine / 20)), Rad(10 * Sin(sine / 20)), Rad(-13 + 2.5 * Sin(sine / 20))), 0.1)
	end
	Effects.Block.Create(BrickC("Toothpaste"), ra.CFrame * CF(0, -1, 0), 2, 2, 2, 11, 11, 11, 0.05)
    Effects.Block.Create(BrickC("Toothpaste"), ra.CFrame * CF(0, -1, 0), 2, 2, 2, 11, 11, 11, 0.03)
	Effects.Block.Create(BrickC("Toothpaste"), ra.CFrame * CF(0, -1, 0), 2, 2, 2, 11, 11, 11, 0.05)
    Effects.Block.Create(BrickC("Toothpaste"), ra.CFrame * CF(0, -1, 0), 2, 2, 2, 11, 11, 11, 0.05)
 	Effects.Block.Create(BrickC("Toothpaste"), ra.CFrame * CF(0, -1, 0), 2, 2, 2, 10.5, 10.5, 10.5, 0.05)
	Effects.Ring.Create(BrickC("Toothpaste"), ra.CFrame * angles(Rad(90),0,0) * CF(0, -1, 0), 2, 2, 2, 7.6, 7.6, 7.6, 0.03)
	CreateSound("142070127", tors, 10, 1)
	MagniDamage(ra, 100, 600, 600, 10, "Normal")
	for i = 0,2.6,0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1.2 + 0.3 * Cos(sine / 20)) * angles(Rad(-25), Rad(0), Rad(90)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-4.5 * Sin(sine / 30)), Rad(0), Rad(-90)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.4 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-16 + 3 * Sin(sine / 20)), Rad(0), Rad(20 + 2.5 * Sin(sine / 20))), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-25 + 3 * Sin(sine / 20)), Rad(0), Rad(0 + 2.5 * Sin(sine / 20))), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(-3 * Sin(sine / 20)), Rad(-10 * Sin(sine / 20)), Rad(195 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(4 * Sin(sine / 20)), Rad(10 * Sin(sine / 20)), Rad(-35 + 2.5 * Sin(sine / 20))), 0.1)
	end
	attack = false
	hum.WalkSpeed = 8
end

function Purity_Slam()
	attack = true
	for i = 0,5.2,0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-20)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(25)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(25 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
	end
	CreateSound("331666100", tors, 10, 1)
	Effects.Ring.Create(BrickC("Toothpaste"), root.CFrame * CF(0, -2.7, 0) * angles(Rad(90),Rad(0),Rad(0)), 2, 2, 2, 3.6, 3.6, 3.6, 0.03)
	Effects.Ring.Create(BrickC("Toothpaste"), root.CFrame * CF(0, -2.3, 0) * angles(Rad(90),Rad(0),Rad(0)), 2, 2, 2, 5.6, 5.6, 5.6, 0.03)
	Effects.Ring.Create(BrickC("Toothpaste"), root.CFrame * CF(0, -1.7, 0) * angles(Rad(90),Rad(0),Rad(0)), 2, 2, 2, 8.6, 8.6, 8.6, 0.03)
	Effects.Ring.Create(BrickC("Toothpaste"), root.CFrame * CF(0, -1.3, 0) * angles(Rad(90),Rad(0),Rad(0)), 2, 2, 2, 10.6, 10, 10, 0.03)
	MagniDamage(tors, 100, 400, 600, 10, "Normal")
	coroutine.resume(coroutine.create(function() 
		for i = 0,1.8,0.1 do
			swait()
			hum.CameraOffset = Vector3.new(Mrandom(-3,3),Mrandom(-3,3),Mrandom(-3,3))
		end
		for i = 0,1.8,0.1 do
			swait()
		hum.CameraOffset = Vector3.new(0,0,0)
		end
	end))
	for i = 1,4.7,0.1 do
	rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -1.4 + 0.1 * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(0)), 0.15)
	tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(35), Rad(0), Rad(0)), 0.3)
	RH.C0 = clerp(RH.C0, CF(1, .4 - 0.1 * Cos(sine / 20), -.6 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(45)), 0.15)
	LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(-0)), 0.15)
	RW.C0 = clerp(RW.C0, CF(1.5, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(25)), 0.1)
	LW.C0 = clerp(LW.C0, CF(-1.5, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(-25)), 0.1)
	end
	wait(.6)
	attack = false
end
-------------------------------------------------------
--End Attacks N Stuff--
-------------------------------------------------------
mouse.KeyDown:connect(function(key)
	if key == 'y' then
			EndMySufferingV2()

	end
	
	if key == 'c' then
		Ending()
	end
	
	if key == 't' then
		Painful_Stomp()
	end

if key == 'f' then
	Blast_Of_God()
end
if key == 'r' then
	Purity_Slam()
end

	
    if string.byte(key) == 48 then
        Swing = 2
        hum.WalkSpeed = 38.82
	end
end)
mouse.KeyUp:connect(function(key)
    if string.byte(key) == 48 then
        Swing = 1
        hum.WalkSpeed = 8
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
		tecks2.TextStrokeColor3 = Color3.new(r / 255, g / 255, b / 255)
		if 1 < root.Velocity.y and hitfloor == nil then
			Anim = "Jump"
			if attack == false then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1 * Cos(sine / 20)* Player_Size) * angles(Rad(-16), Rad(0), Rad(0)), 0.15)
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(10 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -.2 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
				LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -.9 - 0.1 * Cos(sine / 20), -.5* Player_Size) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25), Rad(-.6), Rad(13 + 4.5 * Sin(sine / 20))), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25), Rad(-.6), Rad(-13 - 4.5 * Sin(sine / 20))), 0.1)
			end
		elseif -1 > root.Velocity.y and hitfloor == nil then
			Anim = "Fall"
			if attack == false then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1 * Cos(sine / 20)* Player_Size) * angles(Rad(24), Rad(0), Rad(0)), 0.15)
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(10 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -1 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * RHCF * angles(Rad(-3.5), Rad(0), Rad(0)), 0.15)
				LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -.8 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * LHCF * angles(Rad(-3.5), Rad(0), Rad(0)), 0.15)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(65), Rad(-.6), Rad(45 + 4.5 * Sin(sine / 20))), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(55), Rad(-.6), Rad(-45 - 4.5 * Sin(sine / 20))), 0.1)
			end
		elseif torvel < 1 and hitfloor ~= nil then
			Anim = "Idle"
			change = .5
			if attack == false then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.05 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.15)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-4.5 * Sin(sine / 3)), Rad(-4.5 * Sin(sine / 3)), Rad(0)), 0.3)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.8 + 0.1 * Cos(sine / 3)* Player_Size, -.3* Player_Size) * angles(Rad(0), Rad(74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-5)), 0.15)
				LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.05 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-87), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
				RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.3 + 0.05 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(-25 + 2.5 * Sin(sine / 20)), Rad(-55 + 2.5 * Sin(sine / 20))), 0.12)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 20* Player_Size), 0* Player_Size) * angles(Rad(-30 * Sin(sine / 10)), Rad(0), Rad(-5 - 4.5 * Sin(sine / 20))), 0.1)
			end
		elseif torvel > 2 and torvel < 25 and hitfloor ~= nil then
			Anim = "Walk"
			change = .9
			if attack == false then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7) * angles(Rad(3 - 2.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(8 * Cos(sine / 7))), 0.15)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(6 - 2.5 * Sin(sine / 7)), Rad(0), Rad(0) - hed.RotVelocity.Y / 15), 0.3)
				RH.C0 = clerp(RH.C0, CF(1, -0.8 - 0.5 * Cos(sine / 7) / 2, 0.6 * Cos(sine / 7) / 2)  * angles(Rad(-15 - 5 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 3 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 2 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
         		LH.C0 = clerp(LH.C0, CF(-1, -0.8 + 0.5 * Cos(sine / 7) / 2, -0.6 * Cos(sine / 7) / 2) * angles(Rad(-15 + 5 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 3 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 2 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
				RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 7), 0) * angles(Rad(37)  * Cos(sine / 7) , Rad(0), Rad(-.6) - ra.RotVelocity.Y / 75), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 7), 0) * angles(Rad(-37)  * Cos(sine / 7) , Rad(0) ,	Rad(.6) + la.RotVelocity.Y / 75), 0.1)
			end
		elseif torvel >= 25 and hitfloor ~= nil then
			Anim = "Sprint"
			change = 1.35
			if attack == false then
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7) * angles(Rad(26 - 4.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(15 * Cos(sine / 7))), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 20)), Rad(0), Rad(0) - hed.RotVelocity.Y / 15), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.925 - 0.5 * Cos(sine / 7) / 2, 0.7 * Cos(sine / 7) / 2) * angles(Rad(-15 - 55 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 0.1 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
         	LH.C0 = clerp(LH.C0, CF(-1, -0.925 + 0.5 * Cos(sine / 7) / 2, -0.7 * Cos(sine / 7) / 2) * angles(Rad(-15 + 55 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 0.1 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.34 * Cos(sine / 7)) * angles(Rad(110)  * Cos(sine / 7) , Rad(0), Rad(13) - ra.RotVelocity.Y / 75), 0.15)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), -0.34 * Cos(sine / 7)) * angles(Rad(-110)  * Cos(sine / 7) , Rad(0) ,	Rad(-13) + la.RotVelocity.Y / 75), 0.15)
			end
		end
	end
	Music.SoundId = "rbxassetid://"..SONG
	Music.Looped = true
	Music.Pitch = 1
	Music.Volume = 5
	Music.Parent = tors
	Music:Resume()
	pcall(function()
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
						elseif Thing[2] == "Elec" then
							local Mesh = Thing[1].Mesh
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
	end)
end
-------------------------------------------------------
--End Animations And Script--
-------------------------------------------------------