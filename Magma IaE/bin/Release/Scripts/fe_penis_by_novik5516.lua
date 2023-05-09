local todraw = 'basic dick' -- change it to "upper dick" or "basic dick"

--script written by Novik#5516





local lplr = game.Players.LocalPlayer
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function RemoveSpaces(String)
	return String:gsub("%s+", "") or String
end

lplr.Character.Humanoid.Jump = true wait(.188)

local function FindPlayer(String)
	String = RemoveSpaces(String)
	for _, _Player in pairs(Players:GetPlayers()) do
		if _Player.Name:lower():match('^'.. String:lower()) then
			return _Player
		end
	end
	return nil
end

local function PrepareHats()
	local number = 0
	for _,obj in pairs(lplr.Character:GetChildren()) do
		if obj:IsA'Accessory' and obj:FindFirstChild'Handle' then
			for _,a in pairs(obj.Handle:GetChildren()) do
				a:Destroy()
			end
			obj.Name = number + 1
			number = number + 1
				local Tool = Instance.new("Tool")
				Tool.Name = "&*"..obj.Name
				Tool.Parent = lplr.Backpack
				Tool.Parent = lplr.Character
				obj.Handle.Parent = Tool
		end
	end
	if number~=10 then return 'Error' else return true end
end

local function DrawADick()
			lplr.Character['&*1'].Handle.Position = lplr.Character.HumanoidRootPart.Position + Vector3.new(0,5,0)
			lplr.Character['&*2'].Handle.Position = lplr.Character.HumanoidRootPart.Position + Vector3.new(0,4,2)
			lplr.Character['&*3'].Handle.Position = lplr.Character.HumanoidRootPart.Position + Vector3.new(0,4,-2)
			lplr.Character['&*4'].Handle.Position = lplr.Character.HumanoidRootPart.Position + Vector3.new(0,6,0)
			lplr.Character['&*5'].Handle.Position = lplr.Character.HumanoidRootPart.Position + Vector3.new(0,7,0)
			lplr.Character['&*6'].Handle.Position = lplr.Character.HumanoidRootPart.Position + Vector3.new(0,8,0)
			lplr.Character['&*7'].Handle.Position = lplr.Character.HumanoidRootPart.Position + Vector3.new(0,9,0)
			lplr.Character['&*8'].Handle.Position = lplr.Character.HumanoidRootPart.Position + Vector3.new(0,10,0)
			lplr.Character['&*9'].Handle.Position = lplr.Character.HumanoidRootPart.Position + Vector3.new(0,4,-2)
			lplr.Character['&*10'].Handle.Position = lplr.Character.HumanoidRootPart.Position + Vector3.new(0,4,2)
	
			for _,v in pairs(lplr.Character:GetChildren()) do
			if v.Name:find'&*' and v:IsA'Tool' and v:FindFirstChild'Handle' then
				v.Handle.Orientation = Vector3.new(0,0,-90)
			end
			end
end

local function DrawADickNextTY()
			lplr.Character['&*1'].Handle.Position = lplr.Character.HumanoidRootPart.Position + Vector3.new(2,-.5,2)
			lplr.Character['&*2'].Handle.Position = lplr.Character.HumanoidRootPart.Position + Vector3.new(2,-.5,2)
			lplr.Character['&*3'].Handle.Position = lplr.Character.HumanoidRootPart.Position + Vector3.new(0,0,4)
			lplr.Character['&*4'].Handle.Position = lplr.Character.HumanoidRootPart.Position + Vector3.new(0,0,5)
			lplr.Character['&*5'].Handle.Position = lplr.Character.HumanoidRootPart.Position + Vector3.new(0,0,6)
			lplr.Character['&*6'].Handle.Position = lplr.Character.HumanoidRootPart.Position + Vector3.new(0,0,7)
			lplr.Character['&*7'].Handle.Position = lplr.Character.HumanoidRootPart.Position + Vector3.new(0,0,8)
			lplr.Character['&*8'].Handle.Position = lplr.Character.HumanoidRootPart.Position + Vector3.new(0,0,9)
			lplr.Character['&*9'].Handle.Position = lplr.Character.HumanoidRootPart.Position + Vector3.new(-2,-.5,2)
			lplr.Character['&*10'].Handle.Position = lplr.Character.HumanoidRootPart.Position + Vector3.new(-2,-.5,2)
end

local GetFunc = PrepareHats() if GetFunc == 'Error' then warn'You do not have 10 hats equipped!' else if GetFunc == true then
	if todraw == 'upper dick' then
		DrawADick()
	elseif todraw == 'basic dick' then
		DrawADickNextTY()
	else
		warn'Unknown command!'
	end
end end
