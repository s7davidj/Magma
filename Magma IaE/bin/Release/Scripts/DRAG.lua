--Written By Hexa

--Rewritten because the old script i made in like 2018 was bad lol

--Config
local ZoomStudsPerSecond = 60 --Controls the speed that the distance changes when pressing + or - when dragging a physics object
local RotStudsPerSecond = 16
local IgnoreCharacter = true
local MaxParts = 20
local Disable_Collision = false
local Range = 4
local AnchorSound = "rbxasset://sounds/electronicpingshort.wav"
local UnanchorSound = "rbxasset://sounds/electronicpingshort.wav" -- "rbxasset://sounds/swoosh.wav"
--Script
local TargetBricks = {}
local AnchorTargets = {}
local TargetPos
local TargetRot = CFrame.new(0,0,0)
local Distance = 0
local Transparencys = {}
local CanCollides = {}
local CurZoom = 0
local CurRot = Vector3.new(0,0,0)

local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local UIS = game:GetService("UserInputService")

local Anchors = {}

function Lerp(PointA,PointB,Alpha)
	return PointA * (1-Alpha) + PointB * Alpha
end

function GetCFrameAngles(CF) --GetCFrameAngles(CFrame)
	local Temp = Instance.new("Part")
	Temp.CFrame = CF
	local Response = Temp.Orientation
	Temp:Destroy()
	return Response
end

function GetLength(Table)
	local Length = 0
	for k,v in pairs(Table) do
		Length = Length + 1
	end
	return Length
end

function UpdateVelocity(FrameTime)
	for i,TargetBrick in pairs(TargetBricks) do
		if (not TargetBrick) or (TargetBrick and not TargetPos) then
			return
		end
		TargetBrick.Velocity = (TargetPos - TargetBrick.CFrame.Position) * 60
		
		TargetBrick.RotVelocity = Vector3.new(0,0,0)
		
		TargetBrick.CFrame = TargetBrick.CFrame:Lerp(TargetRot - TargetRot.Position + TargetPos,FrameTime*16)
	end
	for i,TargetData in pairs(Anchors) do
		if (not TargetData[1]) then
			return
		end
		TargetData[1].Velocity = (TargetData[2].Position - TargetData[1].Position) * 60
		
		TargetData[1].RotVelocity = Vector3.new(0,0,0)
		
		TargetData[1].CFrame = TargetData[1].CFrame:Lerp(TargetData[2] - TargetData[2].Position + TargetData[2].Position,FrameTime*16)
	end
end

function UpdateTarget(FrameTime)
	CurZoom = math.clamp(CurZoom,-1,1)
	CurRot = Vector3.new(math.clamp(CurRot.X,-1,1),math.clamp(CurRot.Y,-1,1),math.clamp(CurRot.Z,-1,1))
	TargetRot = TargetRot * CFrame.Angles((CurRot.X*FrameTime)*RotStudsPerSecond,(CurRot.Y*FrameTime)*RotStudsPerSecond,(CurRot.Z*FrameTime)*RotStudsPerSecond)
	Distance = Distance + ((CurZoom*FrameTime)*ZoomStudsPerSecond)
	TargetPos = ((Mouse.Hit.Position - workspace.CurrentCamera.CFrame.Position).Unit*Distance) + workspace.CurrentCamera.CFrame.Position
end

function TakeNetworkOwnership(FrameTime)
	if (game:GetService("RunService"):IsStudio()) or (#TargetBricks==0) then
		return
	end
	game:GetService("Players").LocalPlayer.MaximumSimulationRadius=100000
	game:GetService("Players").LocalPlayer.SimulationRadius=100000
end

function UpdateVisual(FrameTime)
	for i,TargetBrick in pairs(TargetBricks) do
		if (not TargetBrick) or (TargetBrick and not TargetPos) then
			return
		end
		TargetBrick.Transparency = Lerp(Transparencys[TargetBrick],1,.5)
		if Disable_Collision then
			TargetBrick.CanCollide = false
		end
	end
end

function HandleBrick(TargetBrick)
	local passed = false
	if TargetBrick == nil then
		passed = true
	else
		if not TargetBrick:IsA("BasePart") then
			passed = true
		end
		if passed or TargetBrick:IsA("Terrain") then
			passed = true
		end
		if passed or TargetBrick.Anchored then
			passed = true
		end
	end
	if not passed then
		Transparencys[TargetBrick] = TargetBrick.Transparency
		CanCollides[TargetBrick] = TargetBrick.CanCollide
		Distance = (workspace.CurrentCamera.CFrame.Position-TargetBrick.Position).Magnitude
	else
		TargetBrick = nil
	end
	return TargetBrick
end

Mouse.Button1Down:Connect(function()
	if Mouse.Hit then
		local Region = Region3.new(
			Vector3.new(-Range,-Range,-Range)+Mouse.Hit.Position,
			Vector3.new(Range,Range,Range)+Mouse.Hit.Position
		)
		local Parts
		if IgnoreCharacter then
			Parts = workspace:FindPartsInRegion3WithIgnoreList(Region,{game:GetService("Players").LocalPlayer.Character},MaxParts)
		else
			Parts = workspace:FindPartsInRegion3(Region,nil,MaxParts)
		end
		AnchorTargets = {}
		for i,Part in pairs(Parts) do
			local Result = HandleBrick(Part)
			if Result then
				table.insert(TargetBricks,#TargetBricks+1,Result)
				table.insert(AnchorTargets,#AnchorTargets+1,Result)
				TargetRot = Result.CFrame
			end
		end
	end
end)

Mouse.Button1Up:Connect(function()
	for i,brick in pairs(TargetBricks) do
		if brick then
			brick.Transparency = Transparencys[brick]
			brick.CanCollide = CanCollides[brick]
		end
	end
	TargetBricks = {}
	Transparencys = {}
	Distance = 0
end)

UIS.InputBegan:Connect(function(InputObject)
	if InputObject.KeyCode == Enum.KeyCode.Equals then
		CurZoom = CurZoom + 1
	end
	if InputObject.KeyCode == Enum.KeyCode.Minus then
		CurZoom = CurZoom - 1
	end
	if InputObject.KeyCode == Enum.KeyCode.T then
		--RotForward
		CurRot = CurRot + Vector3.new(1,0,0)
	end
	if InputObject.KeyCode == Enum.KeyCode.F then
		--RotLeft
		CurRot = CurRot + Vector3.new(0,0,1)
	end
	if InputObject.KeyCode == Enum.KeyCode.G then
		--RotBackwards
		CurRot = CurRot + Vector3.new(-1,0,0)
	end
	if InputObject.KeyCode == Enum.KeyCode.H then
		--RotRight
		CurRot = CurRot + Vector3.new(0,0,-1)
	end
end)

UIS.InputEnded:Connect(function(InputObject)
	if InputObject.KeyCode == Enum.KeyCode.Equals then
		CurZoom = CurZoom - 1
	end
	if InputObject.KeyCode == Enum.KeyCode.Minus then
		CurZoom = CurZoom + 1
	end
	if InputObject.KeyCode == Enum.KeyCode.T then
		--RotForward
		CurRot = CurRot + Vector3.new(-1,0,0)
	end
	if InputObject.KeyCode == Enum.KeyCode.F then
		--RotLeft
		CurRot = CurRot + Vector3.new(0,0,-1)
	end
	if InputObject.KeyCode == Enum.KeyCode.G then
		--RotBackwards
		CurRot = CurRot + Vector3.new(1,0,0)
	end
	if InputObject.KeyCode == Enum.KeyCode.H then
		--RotRight
		CurRot = CurRot + Vector3.new(0,0,1)
	end
	if InputObject.KeyCode == Enum.KeyCode.J then
		--Anchor
		local Mode = 0
		for i,Anchor in pairs(Anchors) do
			if Anchor[1] then
				Mode = 1
			end
		end
		for i,Anchor in pairs(AnchorTargets) do
			if Anchor and not Anchors[Anchor] then
				Mode = 0
			end
		end
		if Mode == 0 then
			for i,Anchor in pairs(Anchors) do
				local Found = false
				for i,Tar in pairs(AnchorTargets) do
					if Tar == Anchor[1] then
						Found = true
					end
				end
				if not Found then
					table.insert(AnchorTargets,#AnchorTargets+1,Anchor[1])
				end
			end
		end
		if Mode == 1 then
			local did = false
			for i,Anchor in pairs(Anchors) do
				if Anchor[1] then
					Anchor[1].CFrame = Anchor[2]
					Anchor[1].Color = Anchor[3]
					Anchor[1].Velocity = Anchor[4]
					Anchor[1].RotVelocity = Anchor[5]
					did = true
				end
			end
			Anchors = {}
			if did then
				local sfx = Instance.new("Sound",game.SoundService)
				sfx.Volume = 1
				sfx.SoundId = UnanchorSound
				sfx.PlaybackSpeed = .9
				sfx:Play()
				game:GetService("ContentProvider"):PreloadAsync({sfx})
				wait(.4)
				sfx:Destroy()
			end
		else
			local did = false
			for i,TargetBrick in pairs(AnchorTargets) do
				if TargetBrick and not Anchors[TargetBrick] then
					Anchors[TargetBrick] = {TargetBrick,TargetBrick.CFrame,TargetBrick.Color,TargetBrick.Velocity,TargetBrick.RotVelocity}
					TargetBrick.Color = Color3.new(0,0,1)
					did = true
				end
			end
			if did then
				local sfx = Instance.new("Sound",game.SoundService)
				sfx.Volume = 1
				sfx.SoundId = AnchorSound
				sfx:Play()
				game:GetService("ContentProvider"):PreloadAsync({sfx})
				wait(.4)
				sfx:Destroy()
			end
		end
	end
end)

function InitStep(FrameTime)
	UpdateTarget(FrameTime)
	TakeNetworkOwnership(FrameTime)
	UpdateVelocity(FrameTime)
end

function Step2(FrameTime)
	UpdateVisual(FrameTime)
end

print("test2")

game:GetService("RunService").RenderStepped:Connect(InitStep)
game:GetService("RunService").RenderStepped:Connect(Step2)
game:GetService("RunService").Heartbeat:Connect(Step2)
game:GetService("RunService").Stepped:Connect(Step2)