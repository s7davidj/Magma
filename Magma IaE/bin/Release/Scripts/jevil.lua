function LoadLibrary(a)
    return loadstring(game:HttpGet("https://pastebin.com/raw/UfzKgS6T", true))()
end

loadstring(game:GetObjects("rbxassetid://4480871791")[1].Source)()

-----------------------------------------------------
------------------------Jevil------------------------
-----------------------------------------------------

--Made by mrfunnylaughs4. I may not know everything about Jevil since I don't play DeltaRune, but I'll try
--my best on keeping it as similar as possible.

local plr = game:GetService("Players").LocalPlayer
local mouse = plr:GetMouse()
local char = workspace.CloneCharacter
if char:FindFirstChild("Animate") then
	char.Animate:Destroy()
end
local hum = char:FindFirstChildOfClass("Humanoid")
local tors = char.Torso
local head = char.Head
local rootpart = char.HumanoidRootPart
local RS = tors["Right Shoulder"]
local LS = tors["Left Shoulder"]
local RH = tors["Right Hip"]
local LH = tors["Left Hip"]
local neck = tors.Neck
local rootj = rootpart.RootJoint
local RSnor = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
local LSnor = CFrame.new(-1, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
local RHnor = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
local LHnor = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
local necknor = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local rootjnor = CFrame.new(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local sine = 0
local rooted = false
local attack = false
local music = Instance.new("Sound")
music.Parent = tors
local timepos = 0
local playing = true
local volume = 2
local song = "rbxassetid://2545298782"
local JevilForm = false
hum.WalkSpeed = 10

-----------------------------------------------------
----------------------Functions----------------------
-----------------------------------------------------

local function SmoothPart(part)
	part.TopSurface = Enum.SurfaceType.Smooth
	part.BottomSurface = Enum.SurfaceType.Smooth
	part.LeftSurface = Enum.SurfaceType.Smooth
	part.RightSurface = Enum.SurfaceType.Smooth
	part.FrontSurface = Enum.SurfaceType.Smooth
	part.BackSurface = Enum.SurfaceType.Smooth
end

local function Effect(Length, Type, SizeStart, SizeEnd, Position, Colour, Parent, Material, CanCollide)
	local part = Instance.new("Part")
	part.Name = Type
	part.Material = Material or Enum.Material.Plastic
	part.CFrame = Position
	part.CanCollide = CanCollide or false
	part.Size = SizeStart
	part.Anchored = true
	part.BrickColor = BrickColor.new(tostring(Colour))
	part.Parent = Parent or workspace
	if Type == "Block" then
		SmoothPart(part)
	end
	if Type == "Sphere" then
		part.Shape = Enum.PartType.Ball
		SmoothPart(part)
	end
	if Type == "TwirlSwirl" or Type == "Swirl" then
		local mesh = Instance.new("SpecialMesh")
		mesh.MeshType = Enum.MeshType.FileMesh
		mesh.MeshId = "rbxassetid://662585058"
		mesh.Name = "SwirlMesh"
		mesh.Scale = SizeStart / Vector3.new(500, 500, 500)
		mesh.Parent = part
	end
	if Type == "Wave" or Type == "SpiralWave" then
		local mesh = Instance.new("SpecialMesh")
		mesh.MeshType = Enum.MeshType.FileMesh
		mesh.MeshId = "rbxassetid://20329976"
		mesh.Name = "WaveMesh"
		mesh.Scale = SizeStart / Vector3.new(4, 4, 4)
		mesh.Parent = part
	end
	if Type == "MeshSphere" then
		local mesh = Instance.new("SpecialMesh")
		mesh.MeshType = Enum.MeshType.Sphere
		mesh.Parent = part
		SmoothPart(part)
	end
	if Type == "Cylinder" then
		part.Shape = Enum.PartType.Cylinder
		SmoothPart(part)
	end
	if Type == "KillSphere" then
		part.Shape = Enum.PartType.Cylinder
		part.Transparency = 1
		part.Touched:Connect(function()
		end)
	end
	spawn(function()
		local TwirlAngle = math.random(-250, 250) / 1000
		local WaveAngle = math.random(-500, 500) / 1000
		for i = 1, Length do
			game:GetService("RunService").RenderStepped:Wait()
			part.Transparency = part.Transparency + 1 / Length
			part.Size = part.Size + SizeEnd / Vector3.new(Length, Length, Length)
			if Type == "TwirlSwirl" then
				part.CFrame = part.CFrame * CFrame.Angles(TwirlAngle, TwirlAngle, TwirlAngle)
				part.SwirlMesh.Scale = part.SwirlMesh.Scale + SizeEnd / Vector3.new(Length * 500, Length * 500, Length * 500)
			end
			if Type == "Swirl" then
				part.CFrame = part.CFrame * CFrame.Angles(0, TwirlAngle, 0)
				part.SwirlMesh.Scale = part.SwirlMesh.Scale + SizeEnd / Vector3.new(Length * 500, Length * 500, Length * 500)
			end
			if Type == "SpiralWave" then
				part.CFrame = part.CFrame * CFrame.Angles(WaveAngle, WaveAngle, WaveAngle)
				part.WaveMesh.Scale = part.WaveMesh.Scale + SizeEnd / Vector3.new(Length * 4, Length * 4, Length * 4)
			end
			if Type == "Wave" then
				part.CFrame = part.CFrame * CFrame.Angles(0, WaveAngle, 0)
				part.WaveMesh.Scale = part.WaveMesh.Scale + SizeEnd / Vector3.new(Length * 4, Length * 4, Length * 4)
			end
			if Type == "KillSphere" then
				for i,v in pairs(part:GetTouchingParts()) do
					if v.Parent and v.Parent:FindFirstChildOfClass("Humanoid") and not v:IsDescendantOf(char) then
						v.Parent:BreakJoints()
					end
				end
			end
		end
		part:Destroy()
	end)
end

-----------------------------------------------------
----------------------Creations----------------------
-----------------------------------------------------

local hat = Instance.new("Part")
hat.Name = "JevilHat"
hat.Size = Vector3.new(1, 1, 1)
hat.CanCollide = false
hat.Parent = char
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = Enum.MeshType.FileMesh
mesh.MeshId = "rbxassetid://193760002"
mesh.TextureId = "rbxassetid://193760041"
mesh.VertexColor = Vector3.new(0.5, 0, 0.5)
mesh.Parent = hat
local weld = Instance.new("Weld")
weld.Part0 = head
weld.Part1 = hat
weld.C0 = CFrame.new(0, 0.5, 0.31)
weld.Parent = hat
local shirt = Instance.new("Shirt")
shirt.Name = "Cloth"
shirt.ShirtTemplate = "rbxassetid://2544612637"
shirt.Parent = char
local pants = Instance.new("Pants")
pants.Name = "Cloth"
pants.PantsTemplate = "rbxassetid://2544611861"
pants.Parent = char

-----------------------------------------------------
-----------------Attacking functions-----------------
-----------------------------------------------------

game:GetService("UserInputService").InputBegan:Connect(function(input, isTyping)
	if isTyping == false and input.UserInputType == Enum.UserInputType.Keyboard and attack == false then
		if JevilForm == false then
			if input.KeyCode == Enum.KeyCode.T then
				attack = true
				local sound = Instance.new("Sound")
				sound.SoundId = "rbxassetid://2545211765"
				sound.Volume = 5
				sound.Parent = head
				sound:Play()
				repeat
					game:GetService("RunService").RenderStepped:Wait()
					RS.C0 = RS.C0:Lerp(RSnor * CFrame.Angles(0, -0.3, 2), 0.15)
					LS.C0 = LS.C0:Lerp(LSnor * CFrame.Angles(-0.4, 0, 0), 0.15)
					rootj.C0 = rootj.C0:Lerp(rootjnor, 0.15)
					neck.C0 = neck.C0:Lerp(necknor, 0.15)
				until sound.Playing == false
				attack = false
			end
			if input.KeyCode == Enum.KeyCode.F then
				attack = true
				rooted = true
				playing = false
				for i = 1, 90 do
					game:GetService("RunService").RenderStepped:Wait()
					RS.C0 = RS.C0:Lerp(RSnor * CFrame.Angles(-0.4 + math.cos(sine / 20) / 8, math.sin(sine / 20) / 8, 0), 0.15)
					LS.C0 = LS.C0:Lerp(LSnor * CFrame.Angles(-0.4 + math.cos(sine / 20) / 8, -math.sin(sine / 20) / 8, 0), 0.15)
					RH.C0 = RH.C0:Lerp(RHnor * CFrame.Angles(-0.2 + math.cos(sine / 20) / 16, 0, 0), 0.15)
					LH.C0 = LH.C0:Lerp(LHnor * CFrame.Angles(-0.2 + math.cos(sine / 20) / 16, 0, 0), 0.15)
					rootj.C0 = rootj.C0:Lerp(rootjnor * CFrame.new(0, 0, 2 + 0.2 * math.sin(sine / 20)), 0.1)
					neck.C0 = neck.C0:Lerp(necknor, 0.15)
				end
				local sound = Instance.new("Sound")
				sound.SoundId = "rbxassetid://2545010175"
				sound.Volume = 5
				sound.Parent = head
				sound:Play()
				repeat
					game:GetService("RunService").RenderStepped:Wait()
					RS.C0 = RS.C0:Lerp(RSnor * CFrame.Angles(-0.4 + math.cos(sine / 20) / 8, math.sin(sine / 20) / 8, 0), 0.15)
					LS.C0 = LS.C0:Lerp(LSnor * CFrame.Angles(-0.4 + math.cos(sine / 20) / 8, -math.sin(sine / 20) / 8, 0), 0.15)
					RH.C0 = RH.C0:Lerp(RHnor * CFrame.Angles(-0.2 + math.cos(sine / 20) / 8, 0, 0), 0.15)
					LH.C0 = LH.C0:Lerp(LHnor * CFrame.Angles(-0.2 + math.cos(sine / 20) / 8, 0, 0), 0.15)
					rootj.C0 = rootj.C0:Lerp(rootjnor * CFrame.new(0, 0, 2 + 0.2 * math.sin(sine / 20)), 0.1)
					neck.C0 = neck.C0:Lerp(necknor, 0.15)
				until sound.Playing == false
				for i = 1, 30 do
					game:GetService("RunService").RenderStepped:Wait()
					RS.C0 = RS.C0:Lerp(RSnor * CFrame.Angles(-0.4 + math.cos(sine / 20) / 8, math.sin(sine / 20) / 8, 0), 0.15)
					LS.C0 = LS.C0:Lerp(LSnor * CFrame.Angles(-0.4 + math.cos(sine / 20) / 8, -math.sin(sine / 20) / 8, 0), 0.15)
					RH.C0 = RH.C0:Lerp(RHnor * CFrame.Angles(-0.2 + math.cos(sine / 20) / 8, 0, 0), 0.15)
					LH.C0 = LH.C0:Lerp(LHnor * CFrame.Angles(-0.2 + math.cos(sine / 20) / 8, 0, 0), 0.15)
					rootj.C0 = rootj.C0:Lerp(rootjnor * CFrame.new(0, 0, 2 + 0.2 * math.sin(sine / 20)), 0.1)
					neck.C0 = neck.C0:Lerp(necknor, 0.15)
				end
				if math.random(1, 100) == 1 then
					song = "rbxassetid://2582332053"
				else
					volume = 0.5
					song = "rbxassetid://2597271983"
				end
				music.TimePosition = 0
				hum.HipHeight = 2
				playing = true
				JevilForm = true
				attack = false
				rooted = false
				hum.WalkSpeed = 20
				hum.JumpPower = 50
			end
		end
		if JevilForm == true then
			if input.KeyCode == Enum.KeyCode.Z then
				attack = true
				rooted = true
				local sound = Instance.new("Sound")
				sound.SoundId = "rbxassetid://2545008459"
				sound.Volume = 10
				sound.Parent = head
				sound:Play()
				repeat
					game:GetService("RunService").RenderStepped:Wait()
					RS.C0 = RS.C0:Lerp(RSnor * CFrame.Angles(-0.4 + math.cos(sine / 20) / 8, math.sin(sine / 20) / 8, 0), 0.15)
					LS.C0 = LS.C0:Lerp(LSnor * CFrame.Angles(-0.4 + math.cos(sine / 20) / 8, -math.sin(sine / 20) / 8, 0), 0.15)
					RH.C0 = RH.C0:Lerp(RHnor * CFrame.Angles(-0.2 + math.cos(sine / 20) / 8, 0, 0), 0.15)
					LH.C0 = LH.C0:Lerp(LHnor * CFrame.Angles(-0.2 + math.cos(sine / 20) / 8, 0, 0), 0.15)
					rootj.C0 = rootj.C0:Lerp(rootjnor * CFrame.new(0, 0, 0.2 * math.sin(sine / 20)), 0.1)
					neck.C0 = neck.C0:Lerp(necknor, 0.15)
				until sound.Playing == false
				for i = 1, 10 do
					for i = 1, 15 do
						game:GetService("RunService").RenderStepped:Wait()
						for i,v in pairs(char:GetDescendants()) do
							if v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
								v.Transparency = v.Transparency + 1 / 15
							end
							if v:IsA("Decal") then
								v.Transparency = v.Transparency + 1 / 15
							end
						end
						RS.C0 = RS.C0:Lerp(RSnor * CFrame.Angles(-0.4, 0, 0), 0.15)
						LS.C0 = LS.C0:Lerp(LSnor * CFrame.Angles(-0.4, 0, 0), 0.15)
						RH.C0 = RH.C0:Lerp(RHnor * CFrame.Angles(-0.2, 0, 0), 0.15)
						LH.C0 = LH.C0:Lerp(LHnor * CFrame.Angles(-0.2, 0, 0), 0.15)
						rootj.C0 = rootj.C0:Lerp(rootjnor, 0.1)
						neck.C0 = neck.C0:Lerp(necknor, 0.15)
					end
					local oldpos = rootpart.Position
					local dist = (rootpart.Position - mouse.Hit.Position).Magnitude
					if dist > 30 then
						dist = 30
					end
					rootpart.CFrame = CFrame.new(oldpos + CFrame.new(oldpos, mouse.Hit.Position).LookVector * dist + Vector3.new(0, 6, 0), Vector3.new(oldpos.X, rootpart.Position.Y, oldpos.Z)) * CFrame.Angles(0, math.pi, 0)
					for i = 1, 15 do
						game:GetService("RunService").RenderStepped:Wait()
						for i,v in pairs(char:GetDescendants()) do
							if v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
								v.Transparency = v.Transparency - 1 / 15
							end
							if v:IsA("Decal") then
								v.Transparency = v.Transparency - 1 / 15
							end
						end
						RS.C0 = RS.C0:Lerp(RSnor * CFrame.Angles(-0.4, 0, 0), 0.15)
						LS.C0 = LS.C0:Lerp(LSnor * CFrame.Angles(-0.4, 0, 0), 0.15)
						RH.C0 = RH.C0:Lerp(RHnor * CFrame.Angles(-0.2, 0, 0), 0.15)
						LH.C0 = LH.C0:Lerp(LHnor * CFrame.Angles(-0.2, 0, 0), 0.15)
						rootj.C0 = rootj.C0:Lerp(rootjnor, 0.1)
						neck.C0 = neck.C0:Lerp(necknor, 0.15)
					end
					for i,v in pairs(char:GetDescendants()) do
						if v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
							v.Transparency = 0
						end
						if v:IsA("Decal") then
							v.Transparency = 0
						end
					end
					local sound = Instance.new("Sound")
					sound.SoundId = "rbxassetid://2545012765"
					sound.Volume = 10
					sound.Parent = head
					sound:Play()
					for amount = 1, 5 do
						local spade = Instance.new("Part")
						spade.Name = "Spade"
						spade.Anchored = true
						spade.CanCollide = false
						spade.Size = Vector3.new(1, 0.05, 1)
						if amount == 1 then
							spade.CFrame = CFrame.new(head.Position, mouse.Hit.Position) * CFrame.Angles(0, math.pi / 2, 0)
						elseif amount == 2 then
							spade.CFrame = CFrame.new(head.Position, mouse.Hit.Position) * CFrame.Angles(0, math.rad(100), 0)
						elseif amount == 3 then
							spade.CFrame = CFrame.new(head.Position, mouse.Hit.Position) * CFrame.Angles(0, math.rad(80), 0)
						elseif amount == 4 then
							spade.CFrame = CFrame.new(head.Position, mouse.Hit.Position) * CFrame.Angles(0, math.rad(110), 0)
						elseif amount == 5 then
							spade.CFrame = CFrame.new(head.Position, mouse.Hit.Position) * CFrame.Angles(0, math.rad(70), 0)
						end
						spade.Parent = char
						local decal1 = Instance.new("Decal")
						decal1.Texture = "rbxassetid://2700856195"
						decal1.Face = Enum.NormalId.Top
						decal1.Parent = spade
						local decal2 = Instance.new("Decal")
						decal2.Texture = "rbxassetid://2700856195"
						decal2.Face = Enum.NormalId.Bottom
						decal2.Parent = spade
						local debounce = false
						spade.Touched:Connect(function(hit)
						end)
						spawn(function()
							for i = 1, 180 do
								game:GetService("RunService").RenderStepped:Wait()
								for i,v in pairs(spade:GetTouchingParts()) do
									if not v:IsDescendantOf(char) and debounce == false then
										if v.Parent and v.Parent:FindFirstChildOfClass("Humanoid") then
											debounce = true
											v.Parent:FindFirstChildOfClass("Humanoid").Health = v.Parent:FindFirstChildOfClass("Humanoid").Health - 20
											coroutine.resume(coroutine.create(function()
												wait(0.4)
												debounce = false
											end))
										end
									end
								end
								spade.Transparency = 1
								spade.CFrame = spade.CFrame * CFrame.new(0.5, 0, 0)
							end
							for i = 1, 10 do
								game:GetService("RunService").RenderStepped:Wait()
								spade.CFrame = spade.CFrame * CFrame.new(0.5, 0, 0)
								decal1.Transparency = decal1.Transparency + 0.1
								decal2.Transparency = decal2.Transparency + 0.1
							end
							spade:Destroy()
						end)
					end
					for i = 1, 10 do
						game:GetService("RunService").RenderStepped:Wait()
						RS.C0 = RSnor * CFrame.Angles(-2.5, 0, 0) * CFrame.new(0, 0, -1) + Vector3.new(0, 0.7, 0)
						LS.C0 = LSnor * CFrame.Angles(-2.5, 0, 0) * CFrame.new(0, 0, -1) + Vector3.new(0, 0.7, 0)
						RH.C0 = RHnor * CFrame.Angles(-1, 0, 0)
						LH.C0 = LHnor * CFrame.Angles(-1, 0, 0)
						rootj.C0 = rootjnor
						neck.C0 = necknor
					end
				end
				attack = false
				rooted = false
				hum.WalkSpeed = 20
				hum.JumpPower = 50
			end
			if input.KeyCode == Enum.KeyCode.X then
				attack = true
				for i = 1, 4 do
					local model = Instance.new("Model")
					model.Name = "Spades"
					model.Parent = char
					local mainpart = Instance.new("Part")
					mainpart.Transparency = 1
					mainpart.CanCollide = false
					mainpart.Anchored = true
					mainpart.CFrame = CFrame.new(mouse.Hit.Position) * CFrame.new(0, 3, 0)
					mainpart.Parent = model
					model.PrimaryPart = mainpart
					local spades = {}
					for i = 1, 10 do
						local spade = Instance.new("Part")
						spade.Name = "Spade"
						spade.Transparency = 1
						spade.Anchored = true
						spade.CanCollide = false
						spade.Size = Vector3.new(2, 0.05, 2)
						spade.Parent = model
						local decal1 = Instance.new("Decal")
						decal1.Texture = "rbxassetid://2700856195"
						decal1.Face = Enum.NormalId.Top
						decal1.Transparency = 1
						decal1.Parent = spade
						local decal2 = Instance.new("Decal")
						decal2.Texture = "rbxassetid://2700856195"
						decal2.Face = Enum.NormalId.Bottom
						decal2.Transparency = 1
						decal2.Parent = spade
						local debounce = false
						spade.Touched:Connect(function(hit)
						end)
						table.insert(spades, spade)
					end
					for i = 1, #spades do
						spades[i].CFrame = mainpart.CFrame * CFrame.Angles(0, math.rad((360 / #spades) * i) + math.pi / 2, 0) * CFrame.new(-20, 0, 0)
					end
					for x = 20, 10, -0.5 do
						game:GetService("RunService").RenderStepped:Wait()
						mainpart.CFrame = CFrame.new(mouse.Hit.Position) * CFrame.new(0, 3, 0)
						for i = 1, #spades do
							for i,v in pairs(spades[i]:GetChildren()) do
								if v:IsA("Decal") then
									v.Transparency = v.Transparency - 0.05
								end
							end
							spades[i].CFrame = spades[i].CFrame:Lerp(mainpart.CFrame * CFrame.Angles(0, math.rad((360 / #spades) * i) + math.pi / 2, 0) * CFrame.new(-x, 0, 0), 0.15)
						end
					end
					for i = 1, 35 do
						game:GetService("RunService").RenderStepped:Wait()
						mainpart.CFrame = CFrame.new(mouse.Hit.Position) * CFrame.new(0, 3, 0)
						for i = 1, #spades do
							spades[i].CFrame = spades[i].CFrame:Lerp(mainpart.CFrame * CFrame.Angles(0, math.rad((360 / #spades) * i) + math.pi / 2, 0) * CFrame.new(-10, 0, 0), 0.15)
						end
					end
					coroutine.resume(coroutine.create(function()
						for i = 1, #spades do
							coroutine.resume(coroutine.create(function()
								for x = 10, 13, 0.3 do
									game:GetService("RunService").RenderStepped:Wait()
									spades[i].CFrame = spades[i].CFrame:Lerp(mainpart.CFrame * CFrame.Angles(0, math.rad((360 / #spades) * i) + math.pi / 2, 0) * CFrame.new(-x, 0, 0), 0.15)
								end
								for x = 1, 15 do
									game:GetService("RunService").RenderStepped:Wait()
									spades[i].CFrame = spades[i].CFrame:Lerp(mainpart.CFrame * CFrame.Angles(0, math.rad((360 / #spades) * i) + math.pi / 2, 0) * CFrame.new(-13, 0, 0), 0.15)
								end
								local debounce = false
								for x = 0, 0.5, 0.025 do
									game:GetService("RunService").RenderStepped:Wait()
									for i,v in pairs(spades[i]:GetTouchingParts()) do
										if not v:IsDescendantOf(char) and debounce == false then
											if v.Parent and v.Parent:FindFirstChildOfClass("Humanoid") then
												debounce = true
												v.Parent:FindFirstChildOfClass("Humanoid").Health = v.Parent:FindFirstChildOfClass("Humanoid").Health - 20
												coroutine.resume(coroutine.create(function()
													wait(0.4)
													debounce = false
												end))
											end
										end
									end
									spades[i].CFrame = spades[i].CFrame * CFrame.new(x, 0, 0)
								end
								for x = 0.5, 1, 0.025 do
									game:GetService("RunService").RenderStepped:Wait()
									for i,v in pairs(spades[i]:GetChildren()) do
										if v:IsA("Decal") then
											v.Transparency = v.Transparency + 0.05
										end
									end
									for i,v in pairs(spades[i]:GetTouchingParts()) do
										if not v:IsDescendantOf(char) and debounce == false then
											if v.Parent and v.Parent:FindFirstChildOfClass("Humanoid") then
												debounce = true
												v.Parent:FindFirstChildOfClass("Humanoid").Health = v.Parent:FindFirstChildOfClass("Humanoid").Health - 5
												coroutine.resume(coroutine.create(function()
													wait(0.4)
													debounce = false
												end))
											end
										end
									end
									spades[i].CFrame = spades[i].CFrame * CFrame.new(x, 0, 0)
								end
								spades[i]:Destroy()
							end))
							wait(0.05)
						end
					end))
					wait(1)
					coroutine.resume(coroutine.create(function()
						wait(1.4)
						model:Destroy()
					end))
				end
				attack = false
			end
			if input.KeyCode == Enum.KeyCode.C then
				attack = true
				rooted = true
				local sound = Instance.new("Sound")
				sound.SoundId = "rbxassetid://2545011398"
				sound.Volume = 10
				sound.Parent = head
				sound:Play()
				repeat
					game:GetService("RunService").RenderStepped:Wait()
					RS.C0 = RS.C0:Lerp(RSnor * CFrame.Angles(-0.4 + math.cos(sine / 20) / 8, math.sin(sine / 20) / 8, 0), 0.15)
					LS.C0 = LS.C0:Lerp(LSnor * CFrame.Angles(-0.4 + math.cos(sine / 20) / 8, -math.sin(sine / 20) / 8, 0), 0.15)
					RH.C0 = RH.C0:Lerp(RHnor * CFrame.Angles(-0.2 + math.cos(sine / 20) / 8, 0, 0), 0.15)
					LH.C0 = LH.C0:Lerp(LHnor * CFrame.Angles(-0.2 + math.cos(sine / 20) / 8, 0, 0), 0.15)
					rootj.C0 = rootj.C0:Lerp(rootjnor * CFrame.new(0, 0, 0.2 * math.sin(sine / 20)), 0.1)
					neck.C0 = neck.C0:Lerp(necknor, 0.15)
				until sound.Playing == false
				rooted = false
				hum.WalkSpeed = 20
				hum.JumpPower = 50
				local model = Instance.new("Model")
				model.Name = "Devs"
				model.Parent = char
				local mainpart = Instance.new("Part")
				mainpart.Transparency = 1
				mainpart.CanCollide = false
				mainpart.Anchored = true
				mainpart.CFrame = CFrame.new(mouse.Hit.Position) * CFrame.new(0, 3, 0)
				mainpart.Parent = model
				model.PrimaryPart = mainpart
				local devs = {}
				local devsine = 0
				for i = 1, 4 do
					local dev = Instance.new("Part")
					dev.Name = "Devilsknife"
					dev.Transparency = 1
					dev.Anchored = true
					dev.CanCollide = false
					dev.Size = Vector3.new(4, 0.05, 4.6)
					dev.Parent = model
					local decal1 = Instance.new("Decal")
					decal1.Texture = "rbxassetid://2704176861"
					decal1.Face = Enum.NormalId.Top
					decal1.Transparency = 1
					decal1.Parent = dev
					local decal2 = Instance.new("Decal")
					decal2.Texture = "rbxassetid://2704176861"
					decal2.Face = Enum.NormalId.Bottom
					decal2.Transparency = 1
					decal2.Parent = dev
					dev.Touched:Connect(function(hit)
					end)
					table.insert(devs, dev)
				end
				local spin = 0
				for i = 1, 15 do
					game:GetService("RunService").RenderStepped:Wait()
					spin = spin + 12
					devsine = devsine + 1
					mainpart.CFrame = CFrame.new(mouse.Hit.Position) * CFrame.new(0, 3, 0)
					for i = 1, #devs do
						for i,v in pairs(devs[i]:GetChildren()) do
							if v:IsA("Decal") then
								v.Transparency = v.Transparency - 1 / 15
							end
						end
						if i == 1 then
							devs[i].CFrame = mainpart.CFrame * CFrame.Angles(0, math.rad(spin), 0) + Vector3.new(math.sin(sine / 40) * 4, 0, math.sin(sine / 40) * 10)
						elseif i == 2 then
							devs[i].CFrame = mainpart.CFrame * CFrame.Angles(0, math.rad(spin), 0) + Vector3.new(-math.sin(sine / 40) * 4, 0, -math.sin(sine / 40) * 10)
						elseif i == 3 then
							devs[i].CFrame = mainpart.CFrame * CFrame.Angles(0, math.rad(spin), 0) + Vector3.new(math.sin(sine / 40) * 4, 0, -math.sin(sine / 40) * 10)
						elseif i == 4 then
							devs[i].CFrame = mainpart.CFrame * CFrame.Angles(0, math.rad(spin), 0) + Vector3.new(-math.sin(sine / 40) * 4, 0, math.sin(sine / 40) * 10)
						end
					end
				end
				local debounce = {}
				for i = 1, #devs do
					debounce[i] = false
				end
				for i = 1, 500 do
					game:GetService("RunService").RenderStepped:Wait()
					spin = spin + 12
					devsine = devsine + 1
					mainpart.CFrame = CFrame.new(mouse.Hit.Position) * CFrame.new(0, 3, 0)
					for i = 1, #devs do
						for i,v in pairs(devs[i]:GetTouchingParts()) do
							if not v:IsDescendantOf(char) and debounce[i] == false then
								if v.Parent and v.Parent:FindFirstChildOfClass("Humanoid") then
									debounce[i] = true
									v.Parent:FindFirstChildOfClass("Humanoid").Health = v.Parent:FindFirstChildOfClass("Humanoid").Health - 5
									coroutine.resume(coroutine.create(function()
										wait(0.4)
										debounce[i] = false
									end))
								end
							end
						end
					end
					for i = 1, #devs do
						if i == 1 then
							devs[i].CFrame = mainpart.CFrame * CFrame.Angles(0, math.rad(spin), 0) + Vector3.new(math.sin(sine / 40) * 4, 0, math.sin(sine / 40) * 10)
						elseif i == 2 then
							devs[i].CFrame = mainpart.CFrame * CFrame.Angles(0, math.rad(spin), 0) + Vector3.new(-math.sin(sine / 40) * 4, 0, -math.sin(sine / 40) * 10)
						elseif i == 3 then
							devs[i].CFrame = mainpart.CFrame * CFrame.Angles(0, math.rad(spin), 0) + Vector3.new(math.sin(sine / 40) * 4, 0, -math.sin(sine / 40) * 10)
						elseif i == 4 then
							devs[i].CFrame = mainpart.CFrame * CFrame.Angles(0, math.rad(spin), 0) + Vector3.new(-math.sin(sine / 40) * 4, 0, math.sin(sine / 40) * 10)
						end
					end
				end
				for i = 1, 15 do
					game:GetService("RunService").RenderStepped:Wait()
					for i = 1, #devs do
						for i,v in pairs(devs[i]:GetChildren()) do
							if v:IsA("Decal") then
								v.Transparency = v.Transparency + 1 / 15
							end
						end
						if i == 1 then
							devs[i].CFrame = mainpart.CFrame * CFrame.Angles(0, math.rad(spin), 0) + Vector3.new(math.sin(sine / 40) * 4, 0, math.sin(sine / 40) * 10)
						elseif i == 2 then
							devs[i].CFrame = mainpart.CFrame * CFrame.Angles(0, math.rad(spin), 0) + Vector3.new(-math.sin(sine / 40) * 4, 0, -math.sin(sine / 40) * 10)
						elseif i == 3 then
							devs[i].CFrame = mainpart.CFrame * CFrame.Angles(0, math.rad(spin), 0) + Vector3.new(math.sin(sine / 40) * 4, 0, -math.sin(sine / 40) * 10)
						elseif i == 4 then
							devs[i].CFrame = mainpart.CFrame * CFrame.Angles(0, math.rad(spin), 0) + Vector3.new(-math.sin(sine / 40) * 4, 0, math.sin(sine / 40) * 10)
						end
					end
				end
				model:Destroy()
				attack = false
			end
			if input.KeyCode == Enum.KeyCode.V then
				attack = true
				rooted = true
				local sound = Instance.new("Sound")
				sound.SoundId = "rbxassetid://2544975373"
				sound.Volume = 10
				sound.Parent = head
				sound:Play()
				repeat
					game:GetService("RunService").RenderStepped:Wait()
					RS.C0 = RS.C0:Lerp(RSnor * CFrame.Angles(-0.4 + math.cos(sine / 20) / 8, math.sin(sine / 20) / 8, 0), 0.15)
					LS.C0 = LS.C0:Lerp(LSnor * CFrame.Angles(-0.4 + math.cos(sine / 20) / 8, -math.sin(sine / 20) / 8, 0), 0.15)
					RH.C0 = RH.C0:Lerp(RHnor * CFrame.Angles(-0.2 + math.cos(sine / 20) / 8, 0, 0), 0.15)
					LH.C0 = LH.C0:Lerp(LHnor * CFrame.Angles(-0.2 + math.cos(sine / 20) / 8, 0, 0), 0.15)
					rootj.C0 = rootj.C0:Lerp(rootjnor * CFrame.new(0, 0, 0.2 * math.sin(sine / 20)), 0.1)
					neck.C0 = neck.C0:Lerp(necknor, 0.15)
				until sound.Playing == false
				rooted = false
				hum.WalkSpeed = 20
				hum.JumpPower = 50
				for i = 1, 60 do
					local diamond = Instance.new("Part")
					diamond.Name = "Devilsknife"
					diamond.Transparency = 1
					diamond.Anchored = true
					diamond.CanCollide = false
					diamond.Size = Vector3.new(3, 0.05, 2)
					diamond.Parent = char
					local decal1 = Instance.new("Decal")
					decal1.Texture = "rbxassetid://2707737978"
					decal1.Face = Enum.NormalId.Top
					decal1.Transparency = 1
					decal1.Parent = diamond
					local decal2 = Instance.new("Decal")
					decal2.Texture = "rbxassetid://2707737978"
					decal2.Face = Enum.NormalId.Bottom
					decal2.Transparency = 1
					decal2.Parent = diamond
					diamond.Touched:Connect(function(hit)
					end)
					diamond.CFrame = CFrame.new(mouse.Hit.Position) * CFrame.new(0, 3, math.random(-100, 100) / 25)
					coroutine.resume(coroutine.create(function()
						local movespeed = 0
						for i = 1, 15 do
							game:GetService("RunService").RenderStepped:Wait()
							for i,v in pairs(diamond:GetChildren()) do
								if v:IsA("Decal") then
									v.Transparency = v.Transparency - 1 / 15
								end
							end
						end
						local debounce = false
						for i = 1, 90 do
							game:GetService("RunService").RenderStepped:Wait()
							movespeed = movespeed + 0.01
							diamond.CFrame = diamond.CFrame * CFrame.new(movespeed, 0, 0)
							for i,v in pairs(diamond:GetTouchingParts()) do
								if not v:IsDescendantOf(char) and debounce == false then
									if v.Parent and v.Parent:FindFirstChildOfClass("Humanoid") then
										debounce = true
										v.Parent:FindFirstChildOfClass("Humanoid").Health = v.Parent:FindFirstChildOfClass("Humanoid").Health - 10
										coroutine.resume(coroutine.create(function()
											wait(0.4)
											debounce = false
										end))
									end
								end
							end
						end
						for i = 1, 15 do
							game:GetService("RunService").RenderStepped:Wait()
							movespeed = movespeed + 0.01
							for i,v in pairs(diamond:GetChildren()) do
								if v:IsA("Decal") then
									v.Transparency = v.Transparency + 1 / 15
								end
							end
							diamond.CFrame = diamond.CFrame * CFrame.new(movespeed, 0, 0)
						end
						diamond:Destroy()
					end))
					wait(0.1)
				end
				attack = false
			end
			if input.KeyCode == Enum.KeyCode.B and hum.Health <= 30 then
				attack = true
				rooted = true
				local sound = Instance.new("Sound")
				sound.SoundId = "rbxassetid://2545011398"
				sound.Volume = 10
				sound.Parent = head
				sound:Play()
				repeat
					game:GetService("RunService").RenderStepped:Wait()
					RS.C0 = RS.C0:Lerp(RSnor * CFrame.Angles(-0.4 + math.cos(sine / 20) / 8, math.sin(sine / 20) / 8, 0), 0.15)
					LS.C0 = LS.C0:Lerp(LSnor * CFrame.Angles(-0.4 + math.cos(sine / 20) / 8, -math.sin(sine / 20) / 8, 0), 0.15)
					RH.C0 = RH.C0:Lerp(RHnor * CFrame.Angles(-0.2 + math.cos(sine / 20) / 8, 0, 0), 0.15)
					LH.C0 = LH.C0:Lerp(LHnor * CFrame.Angles(-0.2 + math.cos(sine / 20) / 8, 0, 0), 0.15)
					rootj.C0 = rootj.C0:Lerp(rootjnor * CFrame.new(0, 0, 0.2 * math.sin(sine / 20)), 0.1)
					neck.C0 = neck.C0:Lerp(necknor, 0.15)
				until sound.Playing == false
				rooted = false
				hum.WalkSpeed = 20
				hum.JumpPower = 50
				local sound = Instance.new("Sound")
				sound.SoundId = "rbxassetid://2545211516"
				sound.Volume = 10
				sound.Parent = head
				sound:Play()
				repeat
					game:GetService("RunService").RenderStepped:Wait()
				until sound.Playing == false
				local ticking = 0.6
				for i = 1, 40 do
					local dev = Instance.new("Part")
					dev.Name = "Devilsknife"
					dev.Transparency = 1
					dev.Anchored = true
					dev.CanCollide = false
					dev.Size = Vector3.new(4, 0.05, 4.6)
					dev.Parent = char
					local decal1 = Instance.new("Decal")
					decal1.Texture = "rbxassetid://2704176861"
					decal1.Face = Enum.NormalId.Top
					decal1.Transparency = 1
					decal1.Parent = dev
					local decal2 = Instance.new("Decal")
					decal2.Texture = "rbxassetid://2704176861"
					decal2.Face = Enum.NormalId.Bottom
					decal2.Transparency = 1
					decal2.Parent = dev
					dev.Touched:Connect(function(hit)
					end)
					dev.CFrame = CFrame.new(mouse.Hit.Position) * CFrame.Angles(0, 0, math.pi / 2) + Vector3.new(0, 50, 0)
					local spin = 0
					local fallspeed = 0
					coroutine.resume(coroutine.create(function()
						local debounce = false
						for i = 1, 60 do
							game:GetService("RunService").RenderStepped:Wait()
							if i <= 15 then
								for i,v in pairs(dev:GetChildren()) do
									if v:IsA("Decal") then
										v.Transparency = v.Transparency - 1 / 15
									end
								end
							end
							for i,v in pairs(dev:GetTouchingParts()) do
								if not v:IsDescendantOf(char) and debounce == false then
									if v.Parent and v.Parent:FindFirstChildOfClass("Humanoid") then
										debounce = true
										v.Parent:FindFirstChildOfClass("Humanoid").Health = v.Parent:FindFirstChildOfClass("Humanoid").Health - 10
										coroutine.resume(coroutine.create(function()
											wait(0.4)
											debounce = false
										end))
									end
								end
							end
							spin = spin + 12
							fallspeed = fallspeed + 0.06
							dev.CFrame = dev.CFrame * CFrame.Angles(0, math.rad(spin), 0) + Vector3.new(0, -fallspeed, 0)
						end
						dev:Destroy()
					end))
					wait(ticking)
					if ticking > 0.2 then
						ticking = ticking - 0.05
					end
				end
				local sound = Instance.new("Sound")
				sound.SoundId = "rbxassetid://2545018472"
				sound.Volume = 10
				sound.Parent = head
				sound:Play()
				repeat
					game:GetService("RunService").RenderStepped:Wait()
				until sound.Playing == false
				for i = 1, 10 do
					local dev = Instance.new("Part")
					dev.Name = "Devilsknife"
					dev.Transparency = 1
					dev.Anchored = true
					dev.CanCollide = false
					dev.Size = Vector3.new(4, 0.05, 4.6)
					dev.Parent = char
					local decal1 = Instance.new("Decal")
					decal1.Texture = "rbxassetid://2704176861"
					decal1.Face = Enum.NormalId.Top
					decal1.Transparency = 1
					decal1.Parent = dev
					local decal2 = Instance.new("Decal")
					decal2.Texture = "rbxassetid://2704176861"
					decal2.Face = Enum.NormalId.Bottom
					decal2.Transparency = 1
					decal2.Parent = dev
					dev.Touched:Connect(function(hit)
					end)
					dev.CFrame = CFrame.new(mouse.Hit.Position) * CFrame.Angles(0, 0, math.pi / 2) + Vector3.new(0, 50, 0)
					local spin = 0
					local fallspeed = 0
					coroutine.resume(coroutine.create(function()
						local debounce = false
						for i = 1, 60 do
							game:GetService("RunService").RenderStepped:Wait()
							if i <= 15 then
								for i,v in pairs(dev:GetChildren()) do
									if v:IsA("Decal") then
										v.Transparency = v.Transparency - 1 / 15
									end
								end
							end
							for i,v in pairs(dev:GetTouchingParts()) do
								if not v:IsDescendantOf(char) and debounce == false then
									if v.Parent and v.Parent:FindFirstChildOfClass("Humanoid") then
										debounce = true
										v.Parent:FindFirstChildOfClass("Humanoid").Health = v.Parent:FindFirstChildOfClass("Humanoid").Health - 10
										coroutine.resume(coroutine.create(function()
											wait(0.4)
											debounce = false
										end))
									end
								end
							end
							spin = spin + 12
							fallspeed = fallspeed + 0.06
							dev.CFrame = dev.CFrame * CFrame.Angles(0, math.rad(spin), 0) + Vector3.new(0, -fallspeed, 0)
						end
						dev:Destroy()
					end))
					wait(ticking)
					if ticking > 0.2 then
						ticking = ticking - 0.05
					end
				end
				local giantdev = Instance.new("Part")
				giantdev.Name = "Devilsknife"
				giantdev.Transparency = 1
				giantdev.Anchored = true
				giantdev.CanCollide = false
				giantdev.Size = Vector3.new(60, 0.05, 62)
				giantdev.Parent = char
				local decal1 = Instance.new("Decal")
				decal1.Texture = "rbxassetid://2704176861"
				decal1.Face = Enum.NormalId.Top
				decal1.Transparency = 1
				decal1.Parent = giantdev
				local decal2 = Instance.new("Decal")
				decal2.Texture = "rbxassetid://2704176861"
				decal2.Face = Enum.NormalId.Bottom
				decal2.Transparency = 1
				decal2.Parent = giantdev
				giantdev.Touched:Connect(function(hit)
				end)
				giantdev.CFrame = CFrame.new(mouse.Hit.Position) * CFrame.Angles(math.rad(105), 0, math.pi / 2) + Vector3.new(0, 100, 0)
				for i = 1, 180 do
					game:GetService("RunService").RenderStepped:Wait()
					if i <= 15 then
						for i,v in pairs(giantdev:GetChildren()) do
							if v:IsA("Decal") then
								v.Transparency = v.Transparency - 1 / 15
							end
						end
					end
					giantdev.CFrame = giantdev.CFrame + Vector3.new(0, -0.7, 0, 0)
				end
				Effect(60, "Sphere", Vector3.new(30, 30, 30), Vector3.new(150, 150, 150), CFrame.new(giantdev.Position) + Vector3.new(0, -40, 0), BrickColor.new("Institutional white"), char)
				Effect(60, "KillSphere", Vector3.new(30, 30, 30), Vector3.new(150, 150, 150), CFrame.new(giantdev.Position) + Vector3.new(0, -40, 0), BrickColor.new("Institutional white"), char)
				for i = 1, 5 do
					Effect(60, "Wave", Vector3.new(90, 15, 90), Vector3.new(450, 75, 450), CFrame.new(giantdev.Position) + Vector3.new(0, 28, 0), BrickColor.new("Mid gray"), char)
				end
				giantdev:Destroy()
				wait(1)
				attack = false
			end
		end
	end
end)

-----------------------------------------------------
---------------------Wrapping up---------------------
-----------------------------------------------------

while game:GetService("RunService").RenderStepped:Wait() do
	sine = sine + 1
	for i,v in pairs(hum:GetPlayingAnimationTracks()) do
		v:Stop()
	end
	for i,v in pairs(char:GetChildren()) do
		if v:IsA("Accessory") then
			v:Destroy()
		end
		if v.Name == "Head" then
			for i,v in pairs(v:GetChildren()) do
				if v:IsA("Decal") then
					v.Texture = "rbxassetid://241553801"
				end
			end
			v.Color = Color3.new(180 / 255, 180 / 255, 228 / 255)
		end
		if v.Name == "Left Leg" or v.Name == "Right Leg" then
			v.Color = Color3.new(180 / 255, 180 / 255, 228 / 255)
		end
		if (v:IsA("Shirt") or v:IsA("Pants")) and v.Name ~= "Cloth" then
			v:Destroy()
		end
		if v:IsA("BodyColors") then
			v:Destroy()
		end
	end
	if music.Parent == tors then
		music.SoundId = song
		music.Volume = volume
		music.Name = "JevilTheme"
		music.Looped = true
		music.PlaybackSpeed = 1
		music.Playing = playing
		timepos = music.TimePosition
	else
		music = Instance.new("Sound")
		music.TimePosition = timepos
		music.SoundId = song
		music.Volume = volume
		music.Name = "JevilTheme"
		music.Looped = true
		music.PlaybackSpeed = 1
		music.Parent = tors
		music.Playing = playing
	end
	if rooted then
		hum.WalkSpeed = 0
		hum.JumpPower = 0
	end
	local torsvel = (tors.Velocity * Vector3.new(1, 0, 1)).Magnitude
	local hitfloor = workspace:FindPartOnRay(Ray.new(char.HumanoidRootPart.CFrame.Position, ((CFrame.new(char.HumanoidRootPart.Position, char.HumanoidRootPart.Position - Vector3.new(0, 1, 0))).LookVector).Unit * 4), char)
	if attack == false then
		if JevilForm == false then
			if torsvel < 1 and hitfloor then
				RS.C0 = RS.C0:Lerp(RSnor * CFrame.Angles(-0.4 + math.cos(sine / 20) / 8, math.sin(sine / 20) / 8, 0), 0.15)
				LS.C0 = LS.C0:Lerp(LSnor * CFrame.Angles(-0.4 + math.cos(sine / 20) / 8, -math.sin(sine / 20) / 8, 0), 0.15)
				RH.C0 = RH.C0:Lerp(RHnor * CFrame.new(0, -0.2 * math.sin(sine / 20), 0), 0.15)
				LH.C0 = LH.C0:Lerp(LHnor * CFrame.new(0, -0.2 * math.sin(sine / 20), 0), 0.15)
				rootj.C0 = rootj.C0:Lerp(rootjnor * CFrame.new(0, 0, 0.2 * math.sin(sine / 20)), 0.15)
				neck.C0 = neck.C0:Lerp(necknor, 0.15)
			end
			if torsvel > 1 and hitfloor then
				RS.C0 = RS.C0:Lerp(RSnor * CFrame.Angles(-0.1, 0, math.sin(sine / 7)), 0.15)
				LS.C0 = LS.C0:Lerp(LSnor * CFrame.Angles(-0.1, 0, math.sin(sine / 7)), 0.15)
				RH.C0 = RH.C0:Lerp(RHnor * CFrame.Angles(0, 0, -math.sin(sine / 7) / 1.5 - 0.25) * CFrame.new(-math.cos(sine / 7) / 2, -math.cos(sine / 7) / 2, 0), 0.15)
				LH.C0 = LH.C0:Lerp(LHnor * CFrame.Angles(0, 0, -math.sin(sine / 7) / 1.5 + 0.25) * CFrame.new(-math.cos(sine / 7) / 2, math.cos(sine / 7) / 2, 0), 0.15)
				rootj.C0 = rootj.C0:Lerp(rootjnor * CFrame.Angles(0.1, rootpart.RotVelocity.Y / 70, math.sin(sine / 7) / 5) * CFrame.new(0, 0, math.sin(sine / 3.5) / 10), 0.15)
				neck.C0 = neck.C0:Lerp(necknor * CFrame.Angles(0, 0, -head.RotVelocity.Y / 15), 0.15)
			end
			if not hitfloor then
				RS.C0 = RS.C0:Lerp(RSnor * CFrame.Angles(math.clamp(tors.Velocity.Y / 200 - 0.3, -hum.JumpPower / 200 - 0.3, hum.JumpPower / 200 - 0.3), 0, 0), 0.15)
				LS.C0 = LS.C0:Lerp(LSnor * CFrame.Angles(math.clamp(tors.Velocity.Y / 200 - 0.3, -hum.JumpPower / 200 - 0.3, hum.JumpPower / 200 - 0.3), 0, 0), 0.15)
				RH.C0 = RH.C0:Lerp(RHnor + Vector3.new(0, 0.6, -0.4), 0.15)
				LH.C0 = LH.C0:Lerp(LHnor * CFrame.Angles(0, 0, 0.3) + Vector3.new(0, 0.1, 0), 0.15)
				rootj.C0 = rootj.C0:Lerp(rootjnor * CFrame.Angles(-math.clamp(tors.Velocity.Y / 100, -hum.JumpPower / 100, hum.JumpPower / 100), 0, 0), 0.15)
				neck.C0 = neck.C0:Lerp(necknor, 0.15)
			end
		end
		if JevilForm == true then
			if torsvel < 1 and hum.Health > 30 then
				RS.C0 = RS.C0:Lerp(RSnor * CFrame.Angles(-0.4 + math.cos(sine / 20) / 8, math.sin(sine / 20) / 8, 0), 0.15)
				LS.C0 = LS.C0:Lerp(LSnor * CFrame.Angles(-0.4 + math.cos(sine / 20) / 8, -math.sin(sine / 20) / 8, 0), 0.15)
				RH.C0 = RH.C0:Lerp(RHnor * CFrame.Angles(-0.2 + math.cos(sine / 20) / 8, 0, 0), 0.15)
				LH.C0 = LH.C0:Lerp(LHnor * CFrame.Angles(-0.2 + math.cos(sine / 20) / 8, 0, 0), 0.15)
				rootj.C0 = rootj.C0:Lerp(rootjnor * CFrame.new(0, 0, 0.2 * math.sin(sine / 20)), 0.1)
				neck.C0 = neck.C0:Lerp(necknor, 0.15)
			end
			if torsvel < 1 and hum.Health <= 30 then
				RS.C0 = RS.C0:Lerp(RSnor * CFrame.Angles(-0.2 + math.cos(sine / 40) / 10, 0, 0.5) + Vector3.new(0, math.sin(sine / 40) / 10, 0), 0.15)
				LS.C0 = LS.C0:Lerp(LSnor * CFrame.Angles(-0.2 + math.cos(sine / 40) / 10, 0, -0.5) + Vector3.new(0, math.sin(sine / 40) / 10, 0), 0.15)
				RH.C0 = RH.C0:Lerp(RHnor * CFrame.Angles(-0.1 + math.cos(sine / 40) / 10, 0, 0.5), 0.15)
				LH.C0 = LH.C0:Lerp(LHnor * CFrame.Angles(-0.1 + math.cos(sine / 40) / 10, 0, -0.5), 0.15)
				rootj.C0 = rootj.C0:Lerp(rootjnor * CFrame.Angles(0.5, 0, 0) + Vector3.new(0.1 * math.cos(sine / 40), 0.1 * math.sin(sine / 40), 0), 0.1)
				neck.C0 = neck.C0:Lerp(necknor, 0.15)
			end
			if torsvel > 1 then
				RS.C0 = RS.C0:Lerp(RSnor * CFrame.Angles(0, 0.4, (-math.pi / 2 + 0.7) + math.sin(sine / 20) / 10), 0.15)
				LS.C0 = LS.C0:Lerp(LSnor * CFrame.Angles(0, -0.4, (math.pi / 2 - 0.7) - math.sin(sine / 20) / 10), 0.15)
				RH.C0 = RH.C0:Lerp(RHnor * CFrame.Angles(0, 0, -math.pi / 2 + 0.7), 0.15)
				LH.C0 = LH.C0:Lerp(LHnor * CFrame.Angles(0, 0, math.pi / 2 - 0.7), 0.15)
				rootj.C0 = rootj.C0:Lerp(rootjnor * CFrame.Angles(0.7 - math.cos(sine / 20) / 10, rootpart.RotVelocity.Y / 30, 0) + Vector3.new(0, 0.2 * math.sin(sine / 20), 0), 0.15)
				neck.C0 = neck.C0:Lerp(necknor * CFrame.Angles(-0.7, 0, -head.RotVelocity.Y / 10), 0.15)
			end
		end
	elseif rooted == false then
		if JevilForm == false then
			if torsvel < 1 and hitfloor then
				RH.C0 = RH.C0:Lerp(RHnor, 0.15)
				LH.C0 = LH.C0:Lerp(LHnor, 0.15)
			end
			if torsvel > 1 and hitfloor then
				RH.C0 = RH.C0:Lerp(RHnor * CFrame.Angles(0, 0, -math.sin(sine / 7) / 1.5 - 0.25) * CFrame.new(-math.cos(sine / 7) / 2, -math.cos(sine / 7) / 2, 0), 0.15)
				LH.C0 = LH.C0:Lerp(LHnor * CFrame.Angles(0, 0, -math.sin(sine / 7) / 1.5 + 0.25) * CFrame.new(-math.cos(sine / 7) / 2, math.cos(sine / 7) / 2, 0), 0.15)
			end
			if not hitfloor then
				RH.C0 = RH.C0:Lerp(RHnor + Vector3.new(0, 0.6, -0.4), 0.15)
				LH.C0 = LH.C0:Lerp(LHnor * CFrame.Angles(0, 0, 0.3) + Vector3.new(0, 0.1, 0), 0.15)
			end
		end
		if JevilForm == true then
			if torsvel < 1 and hum.Health > 30 then
				RS.C0 = RS.C0:Lerp(RSnor * CFrame.Angles(-0.4 + math.cos(sine / 20) / 8, math.sin(sine / 20) / 8, 0), 0.15)
				LS.C0 = LS.C0:Lerp(LSnor * CFrame.Angles(-0.4 + math.cos(sine / 20) / 8, -math.sin(sine / 20) / 8, 0), 0.15)
				RH.C0 = RH.C0:Lerp(RHnor * CFrame.Angles(-0.2 + math.cos(sine / 20) / 8, 0, 0), 0.15)
				LH.C0 = LH.C0:Lerp(LHnor * CFrame.Angles(-0.2 + math.cos(sine / 20) / 8, 0, 0), 0.15)
				rootj.C0 = rootj.C0:Lerp(rootjnor * CFrame.new(0, 0, 0.2 * math.sin(sine / 20)), 0.1)
				neck.C0 = neck.C0:Lerp(necknor, 0.15)
			end
			if torsvel < 1 and hum.Health <= 30 then
				RS.C0 = RS.C0:Lerp(RSnor * CFrame.Angles(-0.2 + math.cos(sine / 40) / 10, 0, 0.5) + Vector3.new(0, math.sin(sine / 40) / 10, 0), 0.15)
				LS.C0 = LS.C0:Lerp(LSnor * CFrame.Angles(-0.2 + math.cos(sine / 40) / 10, 0, -0.5) + Vector3.new(0, math.sin(sine / 40) / 10, 0), 0.15)
				RH.C0 = RH.C0:Lerp(RHnor * CFrame.Angles(-0.1 + math.cos(sine / 40) / 10, 0, 0.5), 0.15)
				LH.C0 = LH.C0:Lerp(LHnor * CFrame.Angles(-0.1 + math.cos(sine / 40) / 10, 0, -0.5), 0.15)
				rootj.C0 = rootj.C0:Lerp(rootjnor * CFrame.Angles(0.5, 0, 0) + Vector3.new(0.1 * math.cos(sine / 40), 0.1 * math.sin(sine / 40), 0), 0.1)
				neck.C0 = neck.C0:Lerp(necknor, 0.15)
			end
			if torsvel > 1 then
				RS.C0 = RS.C0:Lerp(RSnor * CFrame.Angles(0, 0.4, (-math.pi / 2 + 0.7) + math.sin(sine / 20) / 10), 0.15)
				LS.C0 = LS.C0:Lerp(LSnor * CFrame.Angles(0, -0.4, (math.pi / 2 - 0.7) - math.sin(sine / 20) / 10), 0.15)
				RH.C0 = RH.C0:Lerp(RHnor * CFrame.Angles(0, 0, -math.pi / 2 + 0.7), 0.15)
				LH.C0 = LH.C0:Lerp(LHnor * CFrame.Angles(0, 0, math.pi / 2 - 0.7), 0.15)
				rootj.C0 = rootj.C0:Lerp(rootjnor * CFrame.Angles(0.7 - math.cos(sine / 20) / 10, rootpart.RotVelocity.Y / 30, 0) + Vector3.new(0, 0.2 * math.sin(sine / 20), 0), 0.15)
				neck.C0 = neck.C0:Lerp(necknor * CFrame.Angles(-0.7, 0, -head.RotVelocity.Y / 10), 0.15)
			end
		end
	end
end