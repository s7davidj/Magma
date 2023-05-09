local virtualUser = game:GetService("VirtualUser")
local silent = false
local player = game.Players.LocalPlayer
local matRegion = Region3.new(Vector3.new(-53, 6, 73), Vector3.new(11, 50, 145))
local character
local root

local autoAttacking = true

local function validatePlayer(cplayer)
	if not cplayer or not cplayer.Character or cplayer == player then
		return false
	end
	
	local humanoid = cplayer.Character:FindFirstChild("Humanoid")
	
	if humanoid and humanoid.Health > 0 then
		return true
	else
		return false
	end
end

local function findNearestPlayer(position)
    local lowest = math.huge -- Range
    local nearestPlayer
	local partsInRegion = workspace:FindPartsInRegion3(matRegion)
	local playersInRegion = {}
	
	for i = 1, #partsInRegion do
		if game.Players:GetPlayerFromCharacter(partsInRegion[i].Parent) then
			table.insert(playersInRegion, game.Players:GetPlayerFromCharacter(partsInRegion[i].Parent))
		end
	end

    for _, playerInRegion in pairs(playersInRegion) do
		if validatePlayer(playerInRegion) then
			local distance = playerInRegion:DistanceFromCharacter(position)
			
			if distance < lowest then
				lowest = distance
				nearestPlayer = playerInRegion
			end
		end
	end

	return nearestPlayer
end

local function chat(text)
	if not silent then
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("".. text, "All")
	end
end

local function initLoop()
	while autoAttacking do
		local nearestPlayer = findNearestPlayer(root.Position)
		
		if nearestPlayer then
			character.Humanoid:MoveTo(nearestPlayer.Character.HumanoidRootPart.Position, nearestPlayer.Character.HumanoidRootPart)
			character.HumanoidRootPart.CFrame = CFrame.new(character.HumanoidRootPart.Position, Vector3.new(nearestPlayer.Character.HumanoidRootPart.Position.X, character.HumanoidRootPart.Position.Y, nearestPlayer.Character.HumanoidRootPart.Position.Z));
	
			if (root.Position - nearestPlayer.Character.HumanoidRootPart.Position).magnitude <= 25 then
				virtualUser:ClickButton1(Vector2.new())
				wait(0.05)
				virtualUser:ClickButton1(Vector2.new())
			end
		end
		wait()
	end
end

local function spawnBot()
	wait(0.1)
	
	if autoAttacking and character then	
		root.CFrame = CFrame.new(math.random(-39, 0), 6, math.random(88, 131))
		
		local foil = player.Backpack:FindFirstChild("Foil")
		if foil then
			player.Character.Humanoid:EquipTool(foil)
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
if v:isA("Tool") then
a=Instance.new("SelectionBox",v.Handle)
a.Adornee=v.Handle
v.Handle.Size=Vector3.new(0.5,0.5,60)
v.GripPos=Vector3.new(0,0,0)
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
end
end
player.Character.Humanoid:EquipTool(foil)
		end
		
		initLoop()
	end
end

local function chatted(msg)
	if msg == ";kill" then
		autoAttacking = true
		chat('you are now mumkey')
		spawnBot()
	end
	
	if msg == ";nokill" then
		autoAttacking = false
		chat('you are now unmumkey')
	end
end

local function characterAdded(char)
	character = char
	root = character:WaitForChild("HumanoidRootPart")
	
	if autoAttacking then
		spawnBot()
	end
end

game.Players.LocalPlayer.Chatted:Connect(chatted)
game.Players.LocalPlayer.CharacterAdded:Connect(characterAdded)
virtualUser:CaptureController()

local success, _ = pcall(function()
	local asyncSpawn = coroutine.wrap(function()
		characterAdded(player.Character)
	end)
	
	asyncSpawn()
end)

if success then
    chat("you are now mumkey")
end