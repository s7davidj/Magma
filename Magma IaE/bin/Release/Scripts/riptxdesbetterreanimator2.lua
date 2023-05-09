Service = setmetatable(
{
    Get = function(Self, Serv)
        if Service[Serv] then return Service[Serv] end
        local S = game:GetService(Serv)
        if S ~= nil then Service[Serv] = S end
        return S
    end;
}, {
    __index = function(Self, Index)
        local S = game:GetService(Index)
        if S ~= nil then Service[Index] = S end
        return S
    end;
})

local Create = function(Class,Parent)
	local Obj = Instance.new(Class); Obj['Parent'] = Parent; return Obj
end

local LP, Model = Service['Players'].LocalPlayer, Create('Model', workspace)
local Char, FTorso, FHead, FHum = LP['Character'], Create('Part',Model), Create('Part',Model), Create('Humanoid',Model)

coroutine.wrap(function()
    settings()['Physics'].AllowSleep = false
    repeat
        Service['RunService'].RenderStepped:Wait()
        for I = 1,#Service['Players']:GetPlayers() do 
            local Player = Service['Players']:GetPlayers()[I]
            if Player ~= LP then 
                Player['MaximumSimulationRadius'] = .1; Player['SimulationRadius'] = 0
            end
        end
        LP['MaximumSimulationRadius'] = math.pow(1/0,1/0)
        LP['SimulationRadius'] = (1/0) * (1/0)
    until nil
end)()

FTorso['Name'] = 'Torso'; FHead['Name'] = 'Head'; FHum['Name'] = 'Humanoid'

for K,V in next, Model:GetChildren() do
	pcall(function()
		V['CanCollide'] = false; V['Anchored'] = true; V['CFrame'] = CFrame.new(0,0,0)
	end)
end

LP['Character'] = Model; LP['Character'] = Char; wait(Service['Players'].RespawnTime + .6)

Char['Archivable'] = true; local CChar = Char:Clone(); CChar['Parent'] = workspace

for K,V in next, Char:GetChildren() do 
	if V:IsA('BasePart') then 
		local AP, AO, A0, A1 = Create('AlignPosition',Char), Create('AlignOrientation',Char), Create('Attachment',V), Create('Attachment',CChar[V['Name']])
		AP['Attachment0'] = A0; AP['Attachment1'] = A1; AO['Attachment0'] = A0; AO['Attachment1'] = A1
		AP['RigidityEnabled'] = true; AO['RigidityEnabled'] = true
		coroutine.wrap(function()
			repeat
				V['CanCollide'] = false;
				Service['RunService'].Stepped:Wait()
			until nil
		end)()
	end
end

for K,V in next, Char:GetChildren() do 
	if V:IsA('Accessory') and V:FindFirstChild('Handle') then 
		local AP, AO, A0, A1 = Create('AlignPosition',Char), Create('AlignOrientation',Char), Create('Attachment',V['Handle']), Create('Attachment',CChar[V['Name']]['Handle'])
		AP['Attachment0'] = A0; AP['Attachment1'] = A1; AO['Attachment0'] = A0; AO['Attachment1'] = A1
		AP['RigidityEnabled'] = true; AO['RigidityEnabled'] = true
	end
end

for K,V in next, CChar:GetDescendants() do 
	if V:IsA('BasePart') or V:IsA('Part') then 
		V['Transparency'] = 1
		coroutine.wrap(function()
			repeat
				V['CanCollide'] = false
				Service['RunService'].Stepped:Wait()
			until nil
		end)()
	elseif V:IsA('Decal') then 
		V['Texture'] = 0;
	elseif V:IsA('Mesh') then 
		V['MeshId'] = 0;
		V['TextureId'] = 0;
	end
end

wait(.06); Char:BreakJoints()

coroutine.wrap(function()
	repeat
		CChar['Humanoid'].Jump = Char['Humanoid'].Jump
		CChar['Humanoid']:Move(Char['Humanoid'].MoveDirection, false)
		Service['RunService'].Heartbeat:Wait()
	until nil
end)()

workspace['CurrentCamera'].CameraSubject = CChar['Humanoid']

local MT = getrawmetatable(game)
local Index = MT.__index
setreadonly(MT, false)

MT.__index = newcclosure(function(TBL,IDX)
	if rawequal(TBL,LP) and rawequal(IDX,'Character') then
		return CChar
	end
	return Index(TBL, IDX)
end)