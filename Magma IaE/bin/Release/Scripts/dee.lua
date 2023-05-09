function LoadLibrary(a)
    return loadstring(game:HttpGet("https://pastebin.com/raw/UfzKgS6T", true))()
end

loadstring(game:GetObjects("rbxassetid://4480871791")[1].Source)()

                    -- Deebawkaw - credit to Rufus14
using = false
hittd = false
game.Workspace.CloneCharacter.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
humanoidofplr = game.Workspace.CloneCharacter.Humanoid
humanoidofplr.Name = "Humanoid"
mouse = game.Players.LocalPlayer:GetMouse()
humanoidofplr.WalkSpeed = 20
humanoidofplr.JumpPower = 65
kicksound = Instance.new("Sound", game.Workspace.CloneCharacter.Head)
kicksound.SoundId = "rbxassetid://621550413"
kicksound.Volume = 10
pepsi = Instance.new("Sound", game.Workspace.CloneCharacter.Head)
pepsi.SoundId = "rbxassetid://525289290"
pepsi.Volume = 10
bass = Instance.new("Sound", game.Workspace.CloneCharacter.Head)
bass.SoundId = "rbxassetid://1087356234"
bass.Volume = 10
explo = Instance.new("Sound", game.Workspace.CloneCharacter.Head)
explo.SoundId = "rbxassetid://137994058"
explo.Volume = 10
runninin90 = Instance.new("Sound", game.Workspace.CloneCharacter.Head)
runninin90.SoundId = "rbxassetid://723688773"
runninin90.Volume = 10
erection = Instance.new("Sound", game.Workspace.CloneCharacter.Head)
erection.SoundId = "rbxassetid://271550300"
erection.Volume = 10
BOOM = Instance.new("Sound", game.Workspace.CloneCharacter.Head)
BOOM.SoundId = "rbxassetid://141679994"
BOOM.Volume = 10
explo2 = Instance.new("Sound", game.Workspace.CloneCharacter.Head)
explo2.SoundId = "rbxassetid://833855896"
explo2.Volume = 10
allahu = Instance.new("Sound", game.Workspace.CloneCharacter.Head)
allahu.SoundId = "rbxassetid://197054133"
allahu.Volume = 10
pepsihit = Instance.new("Sound", game.Workspace.CloneCharacter.Head)
pepsihit.SoundId = "rbxassetid://545219984"
pepsihit.Volume = 10
function dothepunch(key)
	key = key:lower()
	if key == "q" and not using then
		using = true
		local rhandclone = game.Workspace.CloneCharacter.Torso["Right Shoulder"]:Clone()
					local rhandweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
					rhandweld.Part0 = game.Workspace.CloneCharacter.Torso
					rhandweld.Part1 = game.Workspace.CloneCharacter["Right Arm"]
					rhandweld.C0 = CFrame.new(1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1)
					local lhandclone = game.Workspace.CloneCharacter.Torso["Left Shoulder"]:Clone()
					local lhandweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
					lhandweld.Part0 = game.Workspace.CloneCharacter.Torso
					lhandweld.Part1 = game.Workspace.CloneCharacter["Left Arm"]
					lhandweld.C0 = CFrame.new(-1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1)
					local llegclone = game.Workspace.CloneCharacter.Torso["Left Hip"]:Clone()
					game.Workspace.CloneCharacter.Torso["Left Hip"]:Remove()
					local llegweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
					llegweld.Part0 = game.Workspace.CloneCharacter.Torso
					llegweld.Part1 = game.Workspace.CloneCharacter["Left Leg"]
					llegweld.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0) * CFrame.new(0,-1,0)
					local rlegclone = game.Workspace.CloneCharacter.Torso["Right Hip"]:Clone()
					game.Workspace.CloneCharacter.Torso["Right Hip"]:Remove()
					local rlegweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
					rlegweld.Part0 = game.Workspace.CloneCharacter.Torso
					rlegweld.Part1 = game.Workspace.CloneCharacter["Right Leg"]
					rlegweld.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0) * CFrame.new(0,-1,0)
					local rootjointclone = game.Workspace.CloneCharacter.HumanoidRootPart.RootJoint:Clone()
					game.Workspace.CloneCharacter.HumanoidRootPart.RootJoint:Remove()
					local humanoidrootpart = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
					humanoidrootpart.Part0 = game.Workspace.CloneCharacter.HumanoidRootPart
					humanoidrootpart.Part1 = game.Workspace.CloneCharacter.Torso
					local heed = game.Workspace.CloneCharacter.Torso["Neck"]:Clone()
					local headweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
					headweld.Part0 = game.Workspace.CloneCharacter.Torso
					headweld.Part1 = game.Workspace.CloneCharacter.Head
					headweld.C0 = headweld.C0 * CFrame.new(0,1.5,0)
					game.Workspace.CloneCharacter.Torso.Neck:Remove()
		for i = 0,0.5 , 0.1 do
			llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.976385951, -2.07911205, 0, 0.994522691, 0.104521893, -2.48146847e-24, -0.1045219, 0.994522572, -6.61724926e-24, 0, 0, 1),i)
			rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.706693888, -2.04811049, 0, 0.98480922, -0.173640087, 7.03582031e-15, 0.173640057, 0.984809279, 1.01514464e-15, -7.10520713e-15, 2.21976022e-16, 1),i)
			lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.72260725, 0.385421276, 0, 0.865490794, 0.500013113, 0.0302087422, 0.499708682, -0.866017878, 0.0174446627, 0.0348838717, -2.62477647e-06, -0.999391317),i)
			rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.34390306, 0.174765587, -0.502760172, 0.953806698, 0.298583031, 0.0331806801, -0.0622573979, 0.304501295, -0.950475156, -0.293899328, 0.904503822, 0.309024394),i)
			humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.139189512, 1.09557003e-26, -0.990273237, -1.2369339e-27, 1, 1.11828922e-26, 0.990273237, 9.87653853e-28, 0.139189512),i)
			headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 0.469474792, 3.65180045e-27, 0.882945895, -1.41359339e-27, 1, -3.38430072e-27, -0.882945895, 3.40717422e-28, 0.469474792),i)
			game:GetService("RunService").RenderStepped:wait()
		end
		local sensoryee2 = Instance.new("Part", game.Workspace.CloneCharacter["Right Arm"])
		sensoryee2.Size = Vector3.new(2, 2, 2)
		sensoryee2.CanCollide = false
		sensoryee2.Transparency = 1
		sensoryee2:BreakJoints()
		local weldsensor = Instance.new("Weld", sensoryee2)
		weldsensor.Part0 = sensoryee2
		weldsensor.Part1 = game.Workspace.CloneCharacter["Right Arm"]
		weldsensor.C0 = CFrame.new(0,1,0)
		local function udidit(part)
			sensoryee2:destroy()
			local humanoid = part.Parent:findFirstChildOfClass("Humanoid")
			if humanoid then
				local dmgmath = math.random(35,40)
				if humanoid.Health <= dmgmath then
					humanoid.Health = 0
                        if humanoid.Parent:findFirstChild("Torso") then
                            humanoid.Parent.Torso.Velocity = mouse.Hit.lookVector * 35
                            for i,v in pairs(humanoid.Parent.Torso:GetChildren()) do
                                if v.ClassName == "Motor6D" then
                                    if v.Name == "Neck" then
                                       
                                    else
                                        v:destroy()
                                    end
                                end
                            end
                        end
                        if humanoid.Parent:findFirstChild("Right Arm") then
                            local attachment = Instance.new("Attachment", humanoid.Parent.Torso)
                            attachment.Position = Vector3.new(1, 1, 0)
                            local ball = Instance.new("BallSocketConstraint", humanoid.Parent)
                            ball.Attachment0 = humanoid.Parent["Right Arm"].RightShoulderAttachment
                            ball.Attachment1 = attachment
                            local collidepartofleftleg = Instance.new("Part", humanoid.Parent.Torso)
                            collidepartofleftleg.Name = "Bone"
                            collidepartofleftleg.Size = Vector3.new(0.8,1.4,0.8)
                            collidepartofleftleg.Transparency = 1
                            collidepartofleftleg:BreakJoints()
                            local weeld = Instance.new("Weld", collidepartofleftleg)
                            weeld.Part0 = humanoid.Parent["Right Arm"]
                            weeld.Part1 = collidepartofleftleg
                            weeld.C0 = weeld.C0 * CFrame.new(0,-0.3,0)
                        end
                        if humanoid.Parent:findFirstChild("Left Arm") then
                            local attachment = Instance.new("Attachment", humanoid.Parent.Torso)
                            attachment.Position = Vector3.new(1, 1, 0)
                            local ball = Instance.new("BallSocketConstraint", humanoid.Parent)
                            ball.Attachment0 = humanoid.Parent.Torso.LeftCollarAttachment
                            ball.Attachment1 = humanoid.Parent["Left Arm"].LeftShoulderAttachment
                            local collidepartofleftleg = Instance.new("Part", humanoid.Parent.Torso)
                            collidepartofleftleg.Name = "Bone"
                            collidepartofleftleg.Size = Vector3.new(0.8,1.4,0.8)
                            collidepartofleftleg.Transparency = 1
                            collidepartofleftleg:BreakJoints()
                            local weeld = Instance.new("Weld", collidepartofleftleg)
                            weeld.Part0 = humanoid.Parent["Left Arm"]
                            weeld.Part1 = collidepartofleftleg
                            weeld.C0 = weeld.C0 * CFrame.new(0,-0.3,0)
                        end
                        if humanoid.Parent:findFirstChild("Right Leg") then
                            local attachment = Instance.new("Attachment", humanoid.Parent.Torso)
                            attachment.Position = Vector3.new(0.5, -1, 0)
                            local ball = Instance.new("BallSocketConstraint", humanoid.Parent)
                            ball.Attachment0 = humanoid.Parent["Right Leg"].RightFootAttachment
                            ball.Attachment1 = attachment
                            humanoid.Parent["Right Leg"].RightFootAttachment.Position = Vector3.new(0, 1, 0)
                            local collidepartofleftleg = Instance.new("Part", humanoid.Parent.Torso)
                            collidepartofleftleg.Name = "Bone"
                            collidepartofleftleg.Size = Vector3.new(0.8,1.4,0.8)
                            collidepartofleftleg.Transparency = 1
                            collidepartofleftleg:BreakJoints()
                            local weeld = Instance.new("Weld", collidepartofleftleg)
                            weeld.Part0 = humanoid.Parent["Right Leg"]
                            weeld.Part1 = collidepartofleftleg
                            weeld.C0 = weeld.C0 * CFrame.new(0,-0.3,0)
                        end
                        if humanoid.Parent:findFirstChild("Left Leg") then
                            local attachment = Instance.new("Attachment", humanoid.Parent.Torso)
                            attachment.Position = Vector3.new(-0.5, -1, 0)
                            local ball = Instance.new("BallSocketConstraint", humanoid.Parent)
                            ball.Attachment0 = humanoid.Parent["Left Leg"].LeftFootAttachment
                            ball.Attachment1 = attachment
                            humanoid.Parent["Left Leg"].LeftFootAttachment.Position = Vector3.new(0, 1, 0)
                            local collidepartofleftleg = Instance.new("Part", humanoid.Parent.Torso)
                            collidepartofleftleg.Name = "Bone"
                            collidepartofleftleg.Size = Vector3.new(0.8,1.4,0.8)
                            collidepartofleftleg.Transparency = 1
                            collidepartofleftleg:BreakJoints()
                            local weeld = Instance.new("Weld", collidepartofleftleg)
                            weeld.Part0 =  humanoid.Parent["Left Leg"]
                            weeld.Part1 = collidepartofleftleg
                            weeld.C0 = weeld.C0 * CFrame.new(0,-0.3,0)
                        end
                        if humanoid.Parent:findFirstChild("Head") then
                            local attachment = Instance.new("Attachment", humanoid.Parent.Head)
                            attachment.Position = Vector3.new(0, -0.5, 0)
                            humanoid.Parent.Torso.NeckAttachment.Visible = false
                            humanoid.Parent.Torso.NeckAttachment.Position = humanoid.Parent.Torso.NeckAttachment.Position + Vector3.new(0,0,0)
                            local ball = Instance.new("HingeConstraint", humanoid.Parent)
                            ball.Attachment0 = humanoid.Parent.Torso.NeckAttachment
                            ball.Attachment1 = attachment
                            local collidepartofleftleg = Instance.new("Part", humanoid.Parent.Torso)
                            collidepartofleftleg.Name = "Bone"
                            collidepartofleftleg.Size = Vector3.new(0.5,0.3,0.5)
                            collidepartofleftleg.Transparency = 1
                            collidepartofleftleg:BreakJoints()
                            local weeld = Instance.new("Weld", collidepartofleftleg)
                            weeld.Part0 = collidepartofleftleg
                            weeld.Part1 = humanoid.Parent["Head"]
                            humanoid.Parent.Torso.Neck:destroy()
                        end
                        if humanoid.Parent:findFirstChild("Head") then
                            local aah = Instance.new("Sound", humanoid.Parent.Head)
                            if aah then
                                aah.Volume = 8
                                local aahmath = math.random(2,8)
                                if aahmath == 2 then
                                    aah.SoundId = "rbxassetid://884348443"
                                    aah:Play()
                                end
                                if aahmath == 3 then
                                    aah.SoundId = "rbxassetid://535528169"
                                    aah.TimePosition = 0.3
                                    aah:Play()
                                end
                                if aahmath == 4 then
                                    aah.SoundId = "rbxassetid://1080363252"
                                    aah:Play()
                                end
                                if aahmath == 5 then
                                    aah.SoundId = "rbxassetid://150245085"
                                    aah:Play()
                                end
                                if aahmath == 6 then
                                    aah.SoundId = "rbxassetid://345287845"
                                    aah.TimePosition = 2.5
                                    aah:Play()
                                end
                                if aahmath == 7 then
                                    aah.SoundId = "rbxassetid://147758746"
                                    aah.TimePosition = 1.3
                                    aah:Play()
                                end
                                if aahmath == 8 then
                                    aah.SoundId = "rbxassetid://626777433"
                                    aah.TimePosition = 1.4
                                    aah:Play()
                                end
                            end
                            humanoid.Name = "Hammoodmememememem"
                         end
				else
					kicksound:Play()
					humanoid.Health = humanoid.Health - dmgmath
					local vel = Instance.new("BodyVelocity", humanoid.Parent.Torso)
					vel.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
					vel.Velocity = game.Workspace.CloneCharacter.Torso.CFrame.rightVector * 35
					wait(0.1)
					vel:destroy()
				end
			end
		end
		sensoryee2.Touched:connect(udidit)
		for i = 0,1 , 0.1 do
			llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.976385951, -2.07911205, 0, 0.994522691, 0.104521893, -2.48146847e-24, -0.1045219, 0.994522572, -6.61724926e-24, 0, 0, 1),i)
			rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.706693888, -2.04811049, 0, 0.98480922, -0.173640087, 7.03582031e-15, 0.173640057, 0.984809279, 1.01514464e-15, -7.10520713e-15, 2.21976022e-16, 1),i)
			lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-2.14573121, 0.310893774, -0.014090538, -0.173835039, 0.984309137, 0.0302081201, 0.984702349, 0.173369259, 0.0174435899, 0.0119327214, 0.0327783301, -0.999389052),i)
			rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.96523237, 0.455781698, -0.50786829, 0.481259376, -0.872816563, -0.0810915679, -0.0850538537, 0.0455768034, -0.995333314, 0.872439504, 0.485910654, -0.0523021407),i)
			humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.309020996, -9.73868278e-27, 0.951055288, -1.41867004e-26, 1, 1.48494745e-26, -0.951055288, -1.80811326e-26, 0.309020996),i)
			headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 0.207920238, 1.15615454e-26, -0.978142679, -1.08547261e-27, 1, 9.90178208e-27, 0.978142679, -2.77679039e-27, 0.207920238),i)
			game:GetService("RunService").RenderStepped:wait()
		end
		sensoryee2:destroy()
		humanoidrootpart:destroy()
		rlegweld:destroy()
		llegweld:destroy()
		lhandweld:destroy()
		rhandweld:destroy()
		headweld:destroy()
		heed.Parent = game.Workspace.CloneCharacter.Torso
		rootjointclone.Parent = game.Workspace.CloneCharacter.HumanoidRootPart
		lhandclone.Parent = game.Workspace.CloneCharacter.Torso
		rhandclone.Parent = game.Workspace.CloneCharacter.Torso
		llegclone.Parent = game.Workspace.CloneCharacter.Torso
		rlegclone.Parent = game.Workspace.CloneCharacter.Torso
		using = false
	end
end
mouse.KeyDown:connect(dothepunch)
function kicking(key)
	key = key:lower()
	if key == "e" and not using then
		using = true
		hittd = false
		local sensoryee2 = Instance.new("Part", game.Workspace.CloneCharacter.Torso)
		sensoryee2.Size = Vector3.new(2, 2, 2)
		sensoryee2.CanCollide = false
		sensoryee2.Transparency = 1
		sensoryee2:BreakJoints()
		local weldsensor = Instance.new("Weld", sensoryee2)
		weldsensor.Part0 = sensoryee2
		weldsensor.Part1 = game.Workspace.CloneCharacter.Torso
		weldsensor.C0 = CFrame.new(0,0,2.5)
		local function rapidkick(part)
			sensoryee2:destroy()
			local humanoid = part.Parent:findFirstChildOfClass("Humanoid")
			if humanoid then
				hittd = true
				humanoid.MaxHealth = 100
				if humanoid.Health <= 55 then
					humanoid.Parent.Head.Anchored = true
					local bodyps = Instance.new("BodyPosition", game.Workspace.CloneCharacter.Torso)
					bodyps.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
					bodyps.Position = game.Workspace.CloneCharacter.Torso.Position
					local rhandclone = game.Workspace.CloneCharacter.Torso["Right Shoulder"]:Clone()
					local rhandweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
					rhandweld.Part0 = game.Workspace.CloneCharacter.Torso
					rhandweld.Part1 = game.Workspace.CloneCharacter["Right Arm"]
					rhandweld.C0 = CFrame.new(1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1)
					local lhandclone = game.Workspace.CloneCharacter.Torso["Left Shoulder"]:Clone()
					local lhandweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
					lhandweld.Part0 = game.Workspace.CloneCharacter.Torso
					lhandweld.Part1 = game.Workspace.CloneCharacter["Left Arm"]
					lhandweld.C0 = CFrame.new(-1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1)
					local llegclone = game.Workspace.CloneCharacter.Torso["Left Hip"]:Clone()
					game.Workspace.CloneCharacter.Torso["Left Hip"]:Remove()
					local llegweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
					llegweld.Part0 = game.Workspace.CloneCharacter.Torso
					llegweld.Part1 = game.Workspace.CloneCharacter["Left Leg"]
					llegweld.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0) * CFrame.new(0,-1,0)
					local rlegclone = game.Workspace.CloneCharacter.Torso["Right Hip"]:Clone()
					game.Workspace.CloneCharacter.Torso["Right Hip"]:Remove()
					local rlegweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
					rlegweld.Part0 = game.Workspace.CloneCharacter.Torso
					rlegweld.Part1 = game.Workspace.CloneCharacter["Right Leg"]
					rlegweld.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0) * CFrame.new(0,-1,0)
					local rootjointclone = game.Workspace.CloneCharacter.HumanoidRootPart.RootJoint:Clone()
					game.Workspace.CloneCharacter.HumanoidRootPart.RootJoint:Remove()
					local humanoidrootpart = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
					humanoidrootpart.Part0 = game.Workspace.CloneCharacter.HumanoidRootPart
					humanoidrootpart.Part1 = game.Workspace.CloneCharacter.Torso
					local heed = game.Workspace.CloneCharacter.Torso["Neck"]:Clone()
					local headweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
					headweld.Part0 = game.Workspace.CloneCharacter.Torso
					headweld.Part1 = game.Workspace.CloneCharacter.Head
					headweld.C0 = headweld.C0 * CFrame.new(0,1.5,0)
					game.Workspace.CloneCharacter.Torso.Neck:Remove()
					allahu:Play()
					for i = 0,0.7 , 0.02 do
						llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.976385951, -2.07911205, 0, 0.994522691, 0.104521893, -2.48146847e-24, -0.1045219, 0.994522572, -6.61724926e-24, 0, 0, 1),i)
						rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.706693888, -2.04811049, 0, 0.98480922, -0.173640087, 7.03582031e-15, 0.173640057, 0.984809279, 1.01514464e-15, -7.10520713e-15, 2.21976022e-16, 1),i)
						lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.72260725, 0.385421276, 0, 0.865490794, 0.500013113, 0.0302087422, 0.499708682, -0.866017878, 0.0174446627, 0.0348838717, -2.62477647e-06, -0.999391317),i)
						rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.34390306, 0.174765587, -0.502760172, 0.953806698, 0.298583031, 0.0331806801, -0.0622573979, 0.304501295, -0.950475156, -0.293899328, 0.904503822, 0.309024394),i)
						humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.139189512, 1.09557003e-26, -0.990273237, -1.2369339e-27, 1, 1.11828922e-26, 0.990273237, 9.87653853e-28, 0.139189512),i)
						headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 0.469474792, 3.65180045e-27, 0.882945895, -1.41359339e-27, 1, -3.38430072e-27, -0.882945895, 3.40717422e-28, 0.469474792),i)
						game:GetService("RunService").RenderStepped:wait()
					end
					--Converted with ttyyuu12345's model to script plugin v4
					function sandbox(var,func)
						local env = getfenv(func)
						local newenv = setmetatable({},{
							__index = function(self,k)
								if k=="script" then
									return var
								else
									return env[k]
								end
							end,
						})
						setfenv(func,newenv)
						return func
					end
					cors = {}
					mas = Instance.new("Model",game:GetService("Lighting"))
					Model0 = Instance.new("Model")
					Part1 = Instance.new("Part")
					CylinderMesh2 = Instance.new("CylinderMesh")
					Part3 = Instance.new("Part")
					CylinderMesh4 = Instance.new("CylinderMesh")
					Part5 = Instance.new("Part")
					Part6 = Instance.new("Part")
					SpecialMesh7 = Instance.new("SpecialMesh")
					Part8 = Instance.new("Part")
					Weld9 = Instance.new("Weld")
					Weld10 = Instance.new("Weld")
					Weld11 = Instance.new("Weld")
					Weld12 = Instance.new("Weld")
					Weld13 = Instance.new("Weld")
					Weld14 = Instance.new("Weld")
					Weld15 = Instance.new("Weld")
					Weld16 = Instance.new("Weld")
					Weld17 = Instance.new("Weld")
					Weld18 = Instance.new("Weld")
					Weld19 = Instance.new("Weld")
					Weld20 = Instance.new("Weld")
					Weld21 = Instance.new("Weld")
					Weld22 = Instance.new("Weld")
					Weld23 = Instance.new("Weld")
					Weld24 = Instance.new("Weld")
					Weld25 = Instance.new("Weld")
					Weld26 = Instance.new("Weld")
					Weld27 = Instance.new("Weld")
					Weld28 = Instance.new("Weld")
					Weld29 = Instance.new("Weld")
					Weld30 = Instance.new("Weld")
					Weld31 = Instance.new("Weld")
					Weld32 = Instance.new("Weld")
					Weld33 = Instance.new("Weld")
					Weld34 = Instance.new("Weld")
					Weld35 = Instance.new("Weld")
					Weld36 = Instance.new("Weld")
					Weld37 = Instance.new("Weld")
					Weld38 = Instance.new("Weld")
					Weld39 = Instance.new("Weld")
					Weld40 = Instance.new("Weld")
					Weld41 = Instance.new("Weld")
					Weld42 = Instance.new("Weld")
					Weld43 = Instance.new("Weld")
					Weld44 = Instance.new("Weld")
					Weld45 = Instance.new("Weld")
					Weld46 = Instance.new("Weld")
					Part47 = Instance.new("Part")
					Part48 = Instance.new("Part")
					SpecialMesh49 = Instance.new("SpecialMesh")
					Part50 = Instance.new("Part")
					Part51 = Instance.new("Part")
					Part52 = Instance.new("Part")
					Part53 = Instance.new("Part")
					Part54 = Instance.new("Part")
					Part55 = Instance.new("Part")
					SpecialMesh56 = Instance.new("SpecialMesh")
					Part57 = Instance.new("Part")
					SpecialMesh58 = Instance.new("SpecialMesh")
					Part59 = Instance.new("Part")
					Part60 = Instance.new("Part")
					Part61 = Instance.new("Part")
					SpecialMesh62 = Instance.new("SpecialMesh")
					Part63 = Instance.new("Part")
					Part64 = Instance.new("Part")
					Part65 = Instance.new("Part")
					SpecialMesh66 = Instance.new("SpecialMesh")
					Part67 = Instance.new("Part")
					Part68 = Instance.new("Part")
					Part69 = Instance.new("Part")
					SpecialMesh70 = Instance.new("SpecialMesh")
					Part71 = Instance.new("Part")
					Part72 = Instance.new("Part")
					Part73 = Instance.new("Part")
					SpecialMesh74 = Instance.new("SpecialMesh")
					Part75 = Instance.new("Part")
					CylinderMesh76 = Instance.new("CylinderMesh")
					Part77 = Instance.new("Part")
					Part78 = Instance.new("Part")
					SpecialMesh79 = Instance.new("SpecialMesh")
					Part80 = Instance.new("Part")
					Part81 = Instance.new("Part")
					Part82 = Instance.new("Part")
					SpecialMesh83 = Instance.new("SpecialMesh")
					Part84 = Instance.new("Part")
					Part85 = Instance.new("Part")
					SpecialMesh86 = Instance.new("SpecialMesh")
					Part87 = Instance.new("Part")
					Part88 = Instance.new("Part")
					Part89 = Instance.new("Part")
					Part90 = Instance.new("Part")
					SpecialMesh91 = Instance.new("SpecialMesh")
					Model0.Name = "ROAD ROLLER DA!!! (By UltimateGate)"
					Model0.Parent = mas
					Part1.Parent = Model0
					Part1.Material = Enum.Material.Concrete
					Part1.Reflectance = 0.10000000149012
					Part1.Rotation = Vector3.new(-41.6299973, 89.7900009, -50.0999985)
					Part1.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part1.Velocity = Vector3.new(15.9593143, -15.1346016, 1.153018)
					Part1.Size = Vector3.new(10, 12, 10)
					Part1.CFrame = CFrame.new(35.6884079, 14.3006563, -58.9530258, 0.00228062016, 0.00272719329, 0.999993324, -0.999542534, -0.0301392656, 0.00236178562, 0.0301455129, -0.999541759, 0.00265712291)
					Part1.BottomSurface = Enum.SurfaceType.Smooth
					Part1.TopSurface = Enum.SurfaceType.Smooth
					Part1.Position = Vector3.new(35.6884079, 14.3006563, -58.9530258)
					Part1.Orientation = Vector3.new(-0.140000001, 89.8499985, -91.7299957)
					CylinderMesh2.Parent = Part1
					CylinderMesh2.Scale = Vector3.new(1, 1.02999997, 1)
					CylinderMesh2.Scale = Vector3.new(1, 1.02999997, 1)
					Part3.Parent = Model0
					Part3.BrickColor = BrickColor.new("Bright yellow")
					Part3.Reflectance = 0.10000000149012
					Part3.Rotation = Vector3.new(-41.6299973, 89.7900009, -50.0999985)
					Part3.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part3.Velocity = Vector3.new(15.9552402, -15.1346149, 1.15288901)
					Part3.Size = Vector3.new(2, 12.8000002, 2)
					Part3.CFrame = CFrame.new(35.688179, 14.4006109, -58.9560432, 0.00228062016, 0.00272719329, 0.999993324, -0.999542534, -0.0301392656, 0.00236178562, 0.0301455129, -0.999541759, 0.00265712291)
					Part3.BottomSurface = Enum.SurfaceType.Smooth
					Part3.TopSurface = Enum.SurfaceType.Smooth
					Part3.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part3.Position = Vector3.new(35.688179, 14.4006109, -58.9560432)
					Part3.Orientation = Vector3.new(-0.140000001, 89.8499985, -91.7299957)
					Part3.Color = Color3.new(0.960784, 0.803922, 0.188235)
					CylinderMesh4.Parent = Part3
					Part5.Parent = Model0
					Part5.BrickColor = BrickColor.new("Bright yellow")
					Part5.Reflectance = 0.10000000149012
					Part5.Rotation = Vector3.new(-41.6299973, 89.7900009, -50.0999985)
					Part5.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part5.Velocity = Vector3.new(15.8883438, -15.3655081, 1.19443977)
					Part5.Size = Vector3.new(1.78999996, 5, 1)
					Part5.CFrame = CFrame.new(29.9835358, 16.0954094, -58.7225494, 0.00228062016, 0.00272719329, 0.999993324, -0.999542534, -0.0301392656, 0.00236178562, 0.0301455129, -0.999541759, 0.00265712291)
					Part5.BottomSurface = Enum.SurfaceType.Smooth
					Part5.TopSurface = Enum.SurfaceType.Smooth
					Part5.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part5.Position = Vector3.new(29.9835358, 16.0954094, -58.7225494)
					Part5.Orientation = Vector3.new(-0.140000001, 89.8499985, -91.7299957)
					Part5.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part6.Parent = Model0
					Part6.BrickColor = BrickColor.new("Bright yellow")
					Part6.Reflectance = 0.10000000149012
					Part6.Rotation = Vector3.new(-41.6299973, 89.6699982, 39.9099998)
					Part6.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part6.Velocity = Vector3.new(15.8231583, -15.3657188, 1.19237459)
					Part6.Size = Vector3.new(5, 1.39999998, 0.99000001)
					Part6.CFrame = CFrame.new(29.9798889, 17.6946754, -58.7708015, 0.00272716419, -0.00228084624, 0.999983907, -0.0301390998, 0.999536812, 0.00236200634, -0.999536514, -0.0301453341, 0.00265720859)
					Part6.BottomSurface = Enum.SurfaceType.Smooth
					Part6.TopSurface = Enum.SurfaceType.Smooth
					Part6.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part6.Position = Vector3.new(29.9798889, 17.6946754, -58.7708015)
					Part6.Orientation = Vector3.new(-0.140000001, 89.8499985, -1.73000002)
					Part6.Color = Color3.new(0.960784, 0.803922, 0.188235)
					SpecialMesh7.Parent = Part6
					SpecialMesh7.MeshType = Enum.MeshType.Wedge
					Part8.Name = "Center"
					Part8.Parent = Model0
					Part8.BrickColor = BrickColor.new("Bright yellow")
					Part8.Reflectance = 0.10000000149012
					Part8.Transparency = 1
					Part8.Rotation = Vector3.new(-41.6299973, 89.7999954, 39.9099998)
					Part8.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part8.Velocity = Vector3.new(15.8684664, -14.826972, 1.09184623)
					Part8.Size = Vector3.new(12.5, 5.80000019, 27.6000004)
					Part8.CFrame = CFrame.new(43.2836189, 16.5145874, -59.0991096, 0.00272715022, -0.0022807084, 0.999993682, -0.030139273, 0.999542892, 0.00236187526, -0.999541998, -0.0301455241, 0.00265716482)
					Part8.BottomSurface = Enum.SurfaceType.Smooth
					Part8.TopSurface = Enum.SurfaceType.Smooth
					Part8.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part8.Position = Vector3.new(43.2836189, 16.5145874, -59.0991096)
					Part8.Orientation = Vector3.new(-0.140000001, 89.8499985, -1.73000002)
					Part8.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Weld9.Parent = Part8
					Weld9.C0 = CFrame.new(-0.100002289, -2.20000029, -7.6000061, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld9.C1 = CFrame.new(0, 0, 0, 0, -0.999999642, 5.38727335e-28, -5.38727239e-28, -5.38727287e-28, -0.999999762, 0.999999642, 9.62964972e-35, -4.37113776e-08)
					Weld9.Part0 = Part8
					Weld9.Part1 = Part1
					Weld10.Parent = Part8
					Weld10.C0 = CFrame.new(-0.100002289, -2.10000038, -7.6000061, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld10.C1 = CFrame.new(0, 0, 0, 0, -0.999999642, 5.38727335e-28, -5.38727239e-28, -5.38727287e-28, -0.999999762, 0.999999642, 9.62964972e-35, -4.37113776e-08)
					Weld10.Part0 = Part8
					Weld10.Part1 = Part3
					Weld11.Parent = Part8
					Weld11.C0 = CFrame.new(-0.400024414, -0.400005341, -13.2999878, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld11.C1 = CFrame.new(0, 0, 0, 0, -0.999999642, 5.38727335e-28, -5.38727239e-28, -5.38727287e-28, -0.999999762, 0.999999642, 9.62964972e-35, -4.37113776e-08)
					Weld11.Part0 = Part8
					Weld11.Part1 = Part5
					Weld12.Parent = Part8
					Weld12.C0 = CFrame.new(-0.400005341, 1.19999409, -13.2999859, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld12.C1 = CFrame.new(0, 0, 0, -1.49008788e-08, 6.6675625e-09, -0.999994516, -2.3933373e-07, 0.99999392, 6.66761935e-09, 0.999990225, 2.39334668e-07, 7.45059765e-08)
					Weld12.Part0 = Part8
					Weld12.Part1 = Part6
					Weld13.Parent = Part8
					Weld13.C0 = CFrame.new(-5.70004654, -0.230010033, 8.99998474, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld13.C1 = CFrame.new(0, 0, 0, 0, -0.999999642, 5.38727335e-28, -5.38727239e-28, -5.38727287e-28, -0.999999762, 0.999999642, 9.62964972e-35, -4.37113776e-08)
					Weld13.Part0 = Part8
					Weld13.Part1 = Part47
					Weld14.Parent = Part8
					Weld14.C0 = CFrame.new(-0.100009918, 0.469994545, 13.5999641, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld14.C1 = CFrame.new(0, 0, 0, 1.49011612e-08, -3.49571337e-07, 0.999994278, 5.89458523e-07, 0.99999392, 3.49571422e-07, -0.999990225, 5.89460512e-07, -4.47034836e-08)
					Weld14.Part0 = Part8
					Weld14.Part1 = Part48
					Weld15.Parent = Part8
					Weld15.C0 = CFrame.new(-0.100002289, 1.46999836, -3.6000061, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld15.C1 = CFrame.new(0, 0, 0, 0, -0.999999642, 5.38727335e-28, -5.38727239e-28, -5.38727287e-28, -0.999999762, 0.999999642, 9.62964972e-35, -4.37113776e-08)
					Weld15.Part0 = Part8
					Weld15.Part1 = Part50
					Weld16.Parent = Part8
					Weld16.C0 = CFrame.new(-0.100017548, 1.79999256, -7.09999847, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld16.C1 = CFrame.new(0, 0, 0, 0, -0.999999642, 5.38727335e-28, -5.38727239e-28, -5.38727287e-28, -0.999999762, 0.999999642, 9.62964972e-35, -4.37113776e-08)
					Weld16.Part0 = Part8
					Weld16.Part1 = Part51
					Weld17.Parent = Part8
					Weld17.C0 = CFrame.new(4.49999619, 7.36998749, 8.89997864, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld17.C1 = CFrame.new(0, 0, 0, 0, -0.999999642, 5.38727335e-28, -5.38727239e-28, -5.38727287e-28, -0.999999762, 0.999999642, 9.62964972e-35, -4.37113776e-08)
					Weld17.Part0 = Part8
					Weld17.Part1 = Part52
					Weld18.Parent = Part8
					Weld18.C0 = CFrame.new(4.49999619, 8.8699894, 6.0999794, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld18.C1 = CFrame.new(0, 0, 0, 0, -0.999999642, 5.38727335e-28, -5.38727239e-28, -5.38727287e-28, -0.999999762, 0.999999642, 9.62964972e-35, -4.37113776e-08)
					Weld18.Part0 = Part8
					Weld18.Part1 = Part53
					Weld19.Parent = Part8
					Weld19.C0 = CFrame.new(-0.100006104, -2.5299983, -2.70001984, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld19.C1 = CFrame.new(0, 0, 0, 0, -0.999999642, 5.38727335e-28, -5.38727239e-28, -5.38727287e-28, -0.999999762, 0.999999642, 9.62964972e-35, -4.37113776e-08)
					Weld19.Part0 = Part8
					Weld19.Part1 = Part54
					Weld20.Parent = Part8
					Weld20.C0 = CFrame.new(-0.400001526, 3.2999897, -10.8000069, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld20.C1 = CFrame.new(0, 0, 0, -1.49008788e-08, 6.6675625e-09, -0.999994516, -2.3933373e-07, 0.99999392, 6.66761935e-09, 0.999990225, 2.39334668e-07, 7.45059765e-08)
					Weld20.Part0 = Part8
					Weld20.Part1 = Part55
					Weld21.Parent = Part8
					Weld21.C0 = CFrame.new(-0.100028992, 3.06999397, -3.60002518, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld21.C1 = CFrame.new(0, 0, 0, 1.49008779e-08, 6.66761935e-09, 0.999994516, 2.39330944e-07, 0.99999392, -6.66753408e-09, -0.999990225, 2.39331769e-07, -7.45059765e-08)
					Weld21.Part0 = Part8
					Weld21.Part1 = Part57
					Weld22.Parent = Part8
					Weld22.C0 = CFrame.new(-0.100002289, 4.76998997, 7.19997787, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld22.C1 = CFrame.new(0, 0, 0, 0, -0.999999642, 5.38727335e-28, -5.38727239e-28, -5.38727287e-28, -0.999999762, 0.999999642, 9.62964972e-35, -4.37113776e-08)
					Weld22.Part0 = Part8
					Weld22.Part1 = Part59
					Weld23.Parent = Part8
					Weld23.C0 = CFrame.new(-0.100002289, 0.269996643, 0.299983978, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld23.C1 = CFrame.new(0, 0, 0, 0, -0.999999642, 5.38727335e-28, -5.38727239e-28, -5.38727287e-28, -0.999999762, 0.999999642, 9.62964972e-35, -4.37113776e-08)
					Weld23.Part0 = Part8
					Weld23.Part1 = Part60
					Weld24.Parent = Part8
					Weld24.C0 = CFrame.new(-0.400001526, 3.29998589, -3.40000153, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld24.C1 = CFrame.new(0, 0, 0, 1.49011612e-08, -3.49571337e-07, 0.999994278, 5.89458523e-07, 0.99999392, 3.49571422e-07, -0.999990225, 5.89460512e-07, -4.47034836e-08)
					Weld24.Part0 = Part8
					Weld24.Part1 = Part61
					Weld25.Parent = Part8
					Weld25.C0 = CFrame.new(-4.70000076, 5.76999187, 3.29998016, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld25.C1 = CFrame.new(0, 0, 0, 0, -0.999999642, 5.38727335e-28, -5.38727239e-28, -5.38727287e-28, -0.999999762, 0.999999642, 9.62964972e-35, -4.37113776e-08)
					Weld25.Part0 = Part8
					Weld25.Part1 = Part63
					Weld26.Parent = Part8
					Weld26.C0 = CFrame.new(-0.400024414, 0.299996376, -10.7999916, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld26.C1 = CFrame.new(0, 0, 0, 0, -0.999999642, 5.38727335e-28, -5.38727239e-28, -5.38727287e-28, -0.999999762, 0.999999642, 9.62964972e-35, -4.37113776e-08)
					Weld26.Part0 = Part8
					Weld26.Part1 = Part64
					Weld27.Parent = Part8
					Weld27.C0 = CFrame.new(-7.60004807, -0.230009079, 8.99998474, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld27.C1 = CFrame.new(0, 0, 0, -1, 0, 4.37113883e-08, 0, 1, 0, -4.37113883e-08, 0, -1)
					Weld27.Part0 = Part8
					Weld27.Part1 = Part65
					Weld28.Parent = Part8
					Weld28.C0 = CFrame.new(-0.300003052, 3.06999302, 0.299983978, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld28.C1 = CFrame.new(0, 0, 0, 0, -0.999999642, 5.38727335e-28, -5.38727239e-28, -5.38727287e-28, -0.999999762, 0.999999642, 9.62964972e-35, -4.37113776e-08)
					Weld28.Part0 = Part8
					Weld28.Part1 = Part67
					Weld29.Parent = Part8
					Weld29.C0 = CFrame.new(5.5, -0.230006218, 8.99998474, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld29.C1 = CFrame.new(0, 0, 0, 0, -0.999999642, 5.38727335e-28, -5.38727239e-28, -5.38727287e-28, -0.999999762, 0.999999642, 9.62964972e-35, -4.37113776e-08)
					Weld29.Part0 = Part8
					Weld29.Part1 = Part68
					Weld30.Parent = Part8
					Weld30.C0 = CFrame.new(-0.100009918, 4.76998997, 11.099968, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld30.C1 = CFrame.new(0, 0, 0, 1.49011612e-08, -3.49571337e-07, 0.999994278, 5.89458523e-07, 0.99999392, 3.49571422e-07, -0.999990225, 5.89460512e-07, -4.47034836e-08)
					Weld30.Part0 = Part8
					Weld30.Part1 = Part69
					Weld31.Parent = Part8
					Weld31.C0 = CFrame.new(-0.100002289, 1.46999836, -10.8000336, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld31.C1 = CFrame.new(0, 0, 0, 0, -0.999999642, 5.38727335e-28, -5.38727239e-28, -5.38727287e-28, -0.999999762, 0.999999642, 9.62964972e-35, -4.37113776e-08)
					Weld31.Part0 = Part8
					Weld31.Part1 = Part71
					Weld32.Parent = Part8
					Weld32.C0 = CFrame.new(4.49999619, 5.76999092, 3.29998016, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld32.C1 = CFrame.new(0, 0, 0, 0, -0.999999642, 5.38727335e-28, -5.38727239e-28, -5.38727287e-28, -0.999999762, 0.999999642, 9.62964972e-35, -4.37113776e-08)
					Weld32.Part0 = Part8
					Weld32.Part1 = Part72
					Weld33.Parent = Part8
					Weld33.C0 = CFrame.new(-0.40001297, 2.29999352, -12.3999844, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld33.C1 = CFrame.new(0, 0, 0, -1.49008788e-08, 6.6675625e-09, -0.999994516, -2.3933373e-07, 0.99999392, 6.66761935e-09, 0.999990225, 2.39334668e-07, 7.45059765e-08)
					Weld33.Part0 = Part8
					Weld33.Part1 = Part73
					Weld34.Parent = Part8
					Weld34.C0 = CFrame.new(-0.100021362, -2.20000362, 8.80002213, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld34.C1 = CFrame.new(0, 0, 0, 0, -0.999999642, 5.38727335e-28, -5.38727239e-28, -5.38727287e-28, -0.999999762, 0.999999642, 9.62964972e-35, -4.37113776e-08)
					Weld34.Part0 = Part8
					Weld34.Part1 = Part75
					Weld35.Parent = Part8
					Weld35.C0 = CFrame.new(-0.400001526, 3.69999981, -7.1000061, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld35.C1 = CFrame.new(0, 0, 0, 0, -0.999999642, 5.38727335e-28, -5.38727239e-28, -5.38727287e-28, -0.999999762, 0.999999642, 9.62964972e-35, -4.37113776e-08)
					Weld35.Part0 = Part8
					Weld35.Part1 = Part77
					Weld36.Parent = Part8
					Weld36.C0 = CFrame.new(7.39999771, -0.230010033, 8.99997711, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld36.Part0 = Part8
					Weld36.Part1 = Part78
					Weld37.Parent = Part8
					Weld37.C0 = CFrame.new(-0.300003052, 4.76999092, 1.79998398, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld37.C1 = CFrame.new(0, 0, 0, 0, -0.999999642, 5.38727335e-28, -5.38727239e-28, -5.38727287e-28, -0.999999762, 0.999999642, 9.62964972e-35, -4.37113776e-08)
					Weld37.Part0 = Part8
					Weld37.Part1 = Part80
					Weld38.Parent = Part8
					Weld38.C0 = CFrame.new(-0.100002289, 0.469992638, 7.19998169, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld38.C1 = CFrame.new(0, 0, 0, 0, -0.999999642, 5.38727335e-28, -5.38727239e-28, -5.38727287e-28, -0.999999762, 0.999999642, 9.62964972e-35, -4.37113776e-08)
					Weld38.Part0 = Part8
					Weld38.Part1 = Part81
					Weld39.Parent = Part8
					Weld39.C0 = CFrame.new(-0.0999755859, 3.06999588, -10.8000221, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld39.C1 = CFrame.new(0, 0, 0, -1.49008788e-08, 6.6675625e-09, -0.999994516, -2.3933373e-07, 0.99999392, 6.66761935e-09, 0.999990225, 2.39334668e-07, 7.45059765e-08)
					Weld39.Part0 = Part8
					Weld39.Part1 = Part82
					Weld40.Parent = Part8
					Weld40.C0 = CFrame.new(-0.100002289, 0.769999504, -2.10001373, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld40.C1 = CFrame.new(0, 0, 0, 0, -0.999999642, 5.38727335e-28, -5.38727239e-28, -5.38727287e-28, -0.999999762, 0.999999642, 9.62964972e-35, -4.37113776e-08)
					Weld40.Part0 = Part8
					Weld40.Part1 = Part84
					Weld41.Parent = Part8
					Weld41.C0 = CFrame.new(-0.0999755859, 8.86998558, 8.89997482, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld41.C1 = CFrame.new(0, 0, 0, 1.49008796e-08, 6.66744882e-09, 0.999994516, 2.39336913e-07, 0.99999392, -6.66736355e-09, -0.999990225, 2.39337737e-07, -7.45059765e-08)
					Weld41.Part0 = Part8
					Weld41.Part1 = Part85
					Weld42.Parent = Part8
					Weld42.C0 = CFrame.new(-4.70000076, 8.86999321, 6.0999794, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld42.C1 = CFrame.new(0, 0, 0, 0, -0.999999642, 5.38727335e-28, -5.38727239e-28, -5.38727287e-28, -0.999999762, 0.999999642, 9.62964972e-35, -4.37113776e-08)
					Weld42.Part0 = Part8
					Weld42.Part1 = Part87
					Weld43.Parent = Part8
					Weld43.C0 = CFrame.new(-4.69999313, 7.36998749, 8.89997864, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld43.C1 = CFrame.new(0, 0, 0, 0, -0.999999642, 5.38727335e-28, -5.38727239e-28, -5.38727287e-28, -0.999999762, 0.999999642, 9.62964972e-35, -4.37113776e-08)
					Weld43.Part0 = Part8
					Weld43.Part1 = Part88
					Weld44.Parent = Part8
					Weld44.C0 = CFrame.new(-0.100017548, 8.86998558, 6.0999794, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld44.C1 = CFrame.new(0, 0, 0, 0, -0.999999642, 5.38727335e-28, -5.38727239e-28, -5.38727287e-28, -0.999999762, 0.999999642, 9.62964972e-35, -4.37113776e-08)
					Weld44.Part0 = Part8
					Weld44.Part1 = Part89
					Weld45.Parent = Part8
					Weld45.C0 = CFrame.new(-0.100025177, 8.86998749, 3.29998398, 1.06581131e-14, -7.10542736e-15, -1, -8.74229471e-08, 1, -7.10542736e-15, 1, 8.742294e-08, -4.37113776e-08)
					Weld45.C1 = CFrame.new(0, 0, 0, -1.49008823e-08, 6.66727829e-09, -0.999994516, -2.39345496e-07, 0.99999392, 6.66733513e-09, 0.999990225, 2.39346434e-07, 7.45059765e-08)
					Weld45.Part0 = Part8
					Weld45.Part1 = Part90
					Weld46.Parent = Part8
					Weld46.C0 = CFrame.new(0.258005589, 5.26530218, -7.02216148, 0.95105654, 0.26761654, -0.154508486, -0.10569004, 0.751547456, 0.65115732, 0.290380985, -0.602957428, 0.743048429)
					Weld46.Part0 = Part8
					Part47.Parent = Model0
					Part47.BrickColor = BrickColor.new("Bright yellow")
					Part47.Reflectance = 0.10000000149012
					Part47.Rotation = Vector3.new(-41.6299973, 89.7900009, -50.0999985)
					Part47.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part47.Velocity = Vector3.new(15.9139099, -14.4553328, 1.0229578)
					Part47.Size = Vector3.new(6.80000019, 1, 6)
					Part47.CFrame = CFrame.new(52.2685242, 16.4777355, -53.3708267, 0.00228062016, 0.00272719329, 0.999993324, -0.999542534, -0.0301392656, 0.00236178562, 0.0301455129, -0.999541759, 0.00265712291)
					Part47.BottomSurface = Enum.SurfaceType.Smooth
					Part47.TopSurface = Enum.SurfaceType.Smooth
					Part47.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part47.Position = Vector3.new(52.2685242, 16.4777355, -53.3708267)
					Part47.Orientation = Vector3.new(-0.140000001, 89.8499985, -91.7299957)
					Part47.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part48.Parent = Model0
					Part48.BrickColor = BrickColor.new("Bright yellow")
					Part48.Reflectance = 0.10000000149012
					Part48.Rotation = Vector3.new(138.37999, -89.6699982, 140.099991)
					Part48.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part48.Velocity = Vector3.new(15.8489389, -14.2756872, 0.986850679)
					Part48.Size = Vector3.new(11, 5.4000001, 2.78999996)
					Part48.CFrame = CFrame.new(56.8821526, 17.0195026, -58.9771767, -0.00272716279, -0.00228001853, -0.999983907, 0.0301387496, 0.999536812, -0.002361177, 0.999536276, -0.0301449895, -0.00265720394)
					Part48.BottomSurface = Enum.SurfaceType.Smooth
					Part48.TopSurface = Enum.SurfaceType.Smooth
					Part48.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part48.Position = Vector3.new(56.8821526, 17.0195026, -58.9771767)
					Part48.Orientation = Vector3.new(0.140000001, -90.1500015, 1.73000002)
					Part48.Color = Color3.new(0.960784, 0.803922, 0.188235)
					SpecialMesh49.Parent = Part48
					SpecialMesh49.MeshType = Enum.MeshType.Wedge
					Part50.Parent = Model0
					Part50.BrickColor = BrickColor.new("Bright yellow")
					Part50.Reflectance = 0.10000000149012
					Part50.Rotation = Vector3.new(-41.6299973, 89.7900009, -50.0999985)
					Part50.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part50.Velocity = Vector3.new(15.8094931, -14.9729595, 1.1175791)
					Part50.Size = Vector3.new(2.5999999, 11, 1.99000001)
					Part50.CFrame = CFrame.new(39.6800117, 17.9784241, -59.0530319, 0.00228062016, 0.00272719329, 0.999993324, -0.999542534, -0.0301392656, 0.00236178562, 0.0301455129, -0.999541759, 0.00265712291)
					Part50.BottomSurface = Enum.SurfaceType.Smooth
					Part50.TopSurface = Enum.SurfaceType.Smooth
					Part50.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part50.Position = Vector3.new(39.6800117, 17.9784241, -59.0530319)
					Part50.Orientation = Vector3.new(-0.140000001, 89.8499985, -91.7299957)
					Part50.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part51.Parent = Model0
					Part51.BrickColor = BrickColor.new("Bright yellow")
					Part51.Reflectance = 0.10000000149012
					Part51.Rotation = Vector3.new(-41.6299973, 89.7900009, -50.0999985)
					Part51.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part51.Velocity = Vector3.new(15.7963123, -15.1148634, 1.14401746)
					Part51.Size = Vector3.new(3.20000005, 11, 5)
					Part51.CFrame = CFrame.new(36.179287, 18.3000031, -59.0722656, 0.00228062016, 0.00272719329, 0.999993324, -0.999542534, -0.0301392656, 0.00236178562, 0.0301455129, -0.999541759, 0.00265712291)
					Part51.BottomSurface = Enum.SurfaceType.Smooth
					Part51.TopSurface = Enum.SurfaceType.Smooth
					Part51.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part51.Position = Vector3.new(36.179287, 18.3000031, -59.0722656)
					Part51.Orientation = Vector3.new(-0.140000001, 89.8499985, -91.7299957)
					Part51.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part52.Parent = Model0
					Part52.BrickColor = BrickColor.new("Mid gray")
					Part52.Reflectance = 0.10000000149012
					Part52.Rotation = Vector3.new(-41.6299973, 89.7900009, -50.0999985)
					Part52.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part52.Velocity = Vector3.new(15.5385218, -14.4726038, 1.01410508)
					Part52.Size = Vector3.new(1.99000001, 1, 1)
					Part52.CFrame = CFrame.new(52.1790047, 23.7665997, -63.7955704, 0.00228062016, 0.00272719329, 0.999993324, -0.999542534, -0.0301392656, 0.00236178562, 0.0301455129, -0.999541759, 0.00265712291)
					Part52.BottomSurface = Enum.SurfaceType.Smooth
					Part52.TopSurface = Enum.SurfaceType.Smooth
					Part52.Color = Color3.new(0.803922, 0.803922, 0.803922)
					Part52.Position = Vector3.new(52.1790047, 23.7665997, -63.7955704)
					Part52.Orientation = Vector3.new(-0.140000001, 89.8499985, -91.7299957)
					Part52.Color = Color3.new(0.803922, 0.803922, 0.803922)
					Part53.Parent = Model0
					Part53.BrickColor = BrickColor.new("Mid gray")
					Part53.Reflectance = 0.10000000149012
					Part53.Rotation = Vector3.new(-41.6299973, 89.7900009, -50.0999985)
					Part53.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part53.Velocity = Vector3.new(15.4776211, -14.5862904, 1.03366053)
					Part53.Size = Vector3.new(1, 1, 4.59000015)
					Part53.CFrame = CFrame.new(49.3756027, 25.259304, -63.8482285, 0.00228062016, 0.00272719329, 0.999993324, -0.999542534, -0.0301392656, 0.00236178562, 0.0301455129, -0.999541759, 0.00265712291)
					Part53.BottomSurface = Enum.SurfaceType.Smooth
					Part53.TopSurface = Enum.SurfaceType.Smooth
					Part53.Color = Color3.new(0.803922, 0.803922, 0.803922)
					Part53.Position = Vector3.new(49.3756027, 25.259304, -63.8482285)
					Part53.Orientation = Vector3.new(-0.140000001, 89.8499985, -91.7299957)
					Part53.Color = Color3.new(0.803922, 0.803922, 0.803922)
					Part54.Parent = Model0
					Part54.BrickColor = BrickColor.new("Bright yellow")
					Part54.Reflectance = 0.10000000149012
					Part54.Rotation = Vector3.new(-41.6299973, 89.7900009, -50.0999985)
					Part54.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part54.Velocity = Vector3.new(15.9723892, -14.9359541, 1.11583388)
					Part54.Size = Vector3.new(1, 12.6000004, 9.80000019)
					Part54.CFrame = CFrame.new(40.5891151, 13.9823828, -58.9300575, 0.00228062016, 0.00272719329, 0.999993324, -0.999542534, -0.0301392656, 0.00236178562, 0.0301455129, -0.999541759, 0.00265712291)
					Part54.BottomSurface = Enum.SurfaceType.Smooth
					Part54.TopSurface = Enum.SurfaceType.Smooth
					Part54.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part54.Position = Vector3.new(40.5891151, 13.9823828, -58.9300575)
					Part54.Orientation = Vector3.new(-0.140000001, 89.8499985, -91.7299957)
					Part54.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part55.Parent = Model0
					Part55.BrickColor = BrickColor.new("Bright yellow")
					Part55.Reflectance = 0.10000000149012
					Part55.Rotation = Vector3.new(-41.6299973, 89.6699982, 39.9099998)
					Part55.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part55.Velocity = Vector3.new(15.7374144, -15.2646685, 1.17047548)
					Part55.Size = Vector3.new(5.19000006, 1.38999999, 2.3900001)
					Part55.CFrame = CFrame.new(32.4750633, 19.7996159, -58.8274689, 0.00272716419, -0.00228084624, 0.999983907, -0.0301390998, 0.999536812, 0.00236200634, -0.999536514, -0.0301453341, 0.00265720859)
					Part55.BottomSurface = Enum.SurfaceType.Smooth
					Part55.TopSurface = Enum.SurfaceType.Smooth
					Part55.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part55.Position = Vector3.new(32.4750633, 19.7996159, -58.8274689)
					Part55.Orientation = Vector3.new(-0.140000001, 89.8499985, -1.73000002)
					Part55.Color = Color3.new(0.960784, 0.803922, 0.188235)
					SpecialMesh56.Parent = Part55
					SpecialMesh56.MeshType = Enum.MeshType.Wedge
					Part57.Parent = Model0
					Part57.BrickColor = BrickColor.new("Bright yellow")
					Part57.Reflectance = 0.10000000149012
					Part57.Rotation = Vector3.new(138.369995, -89.6699982, 140.099991)
					Part57.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part57.Velocity = Vector3.new(15.7443075, -14.9731712, 1.11551416)
					Part57.Size = Vector3.new(11, 0.600000024, 1.99000001)
					Part57.CFrame = CFrame.new(39.676342, 19.5776901, -59.1012383, -0.00272716419, -0.00228036777, -0.999983907, 0.0301391147, 0.999536812, -0.00236152788, 0.999536514, -0.030145349, -0.00265722303)
					Part57.BottomSurface = Enum.SurfaceType.Smooth
					Part57.TopSurface = Enum.SurfaceType.Smooth
					Part57.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part57.Position = Vector3.new(39.676342, 19.5776901, -59.1012383)
					Part57.Orientation = Vector3.new(0.140000001, -90.1500015, 1.73000002)
					Part57.Color = Color3.new(0.960784, 0.803922, 0.188235)
					SpecialMesh58.Parent = Part57
					SpecialMesh58.MeshType = Enum.MeshType.Wedge
					Part59.Parent = Model0
					Part59.BrickColor = BrickColor.new("Bright yellow")
					Part59.Reflectance = 0.10000000149012
					Part59.Rotation = Vector3.new(-41.6299973, 89.7900009, -50.0999985)
					Part59.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part59.Velocity = Vector3.new(15.6742344, -14.535656, 1.03042412)
					Part59.Size = Vector3.new(3.20000005, 11, 5.5999999)
					Part59.CFrame = CFrame.new(50.4724007, 21.3024158, -59.1238136, 0.00228062016, 0.00272719329, 0.999993324, -0.999542534, -0.0301392656, 0.00236178562, 0.0301455129, -0.999541759, 0.00265712291)
					Part59.BottomSurface = Enum.SurfaceType.Smooth
					Part59.TopSurface = Enum.SurfaceType.Smooth
					Part59.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part59.Position = Vector3.new(50.4724007, 21.3024158, -59.1238136)
					Part59.Orientation = Vector3.new(-0.140000001, 89.8499985, -91.7299957)
					Part59.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part60.Parent = Model0
					Part60.BrickColor = BrickColor.new("Bright yellow")
					Part60.Reflectance = 0.10000000149012
					Part60.Rotation = Vector3.new(-41.6299973, 89.7900009, -50.0999985)
					Part60.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part60.Velocity = Vector3.new(15.8580885, -14.8147287, 1.08919334)
					Part60.Size = Vector3.new(5, 13, 3.78999996)
					Part60.CFrame = CFrame.new(43.5827141, 16.7881832, -59.0064964, 0.00228062016, 0.00272719329, 0.999993324, -0.999542534, -0.0301392656, 0.00236178562, 0.0301455129, -0.999541759, 0.00265712291)
					Part60.BottomSurface = Enum.SurfaceType.Smooth
					Part60.TopSurface = Enum.SurfaceType.Smooth
					Part60.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part60.Position = Vector3.new(43.5827141, 16.7881832, -59.0064964)
					Part60.Orientation = Vector3.new(-0.140000001, 89.8499985, -91.7299957)
					Part60.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part61.Parent = Model0
					Part61.BrickColor = BrickColor.new("Bright yellow")
					Part61.Reflectance = 0.10000000149012
					Part61.Rotation = Vector3.new(138.37999, -89.6699982, 140.099991)
					Part61.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part61.Velocity = Vector3.new(15.7368565, -14.964735, 1.11367643)
					Part61.Size = Vector3.new(5.19000006, 1.38999999, 2.3900001)
					Part61.CFrame = CFrame.new(39.8750229, 19.817091, -58.8078041, -0.00272716279, -0.00228001853, -0.999983907, 0.0301387496, 0.999536812, -0.002361177, 0.999536276, -0.0301449895, -0.00265720394)
					Part61.BottomSurface = Enum.SurfaceType.Smooth
					Part61.TopSurface = Enum.SurfaceType.Smooth
					Part61.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part61.Position = Vector3.new(39.8750229, 19.817091, -58.8078041)
					Part61.Orientation = Vector3.new(0.140000001, -90.1500015, 1.73000002)
					Part61.Color = Color3.new(0.960784, 0.803922, 0.188235)
					SpecialMesh62.Parent = Part61
					SpecialMesh62.MeshType = Enum.MeshType.Wedge
					Part63.Parent = Model0
					Part63.BrickColor = BrickColor.new("Mid gray")
					Part63.Reflectance = 0.10000000149012
					Part63.Rotation = Vector3.new(-41.6299973, 89.7900009, -50.0999985)
					Part63.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part63.Velocity = Vector3.new(15.6634455, -14.6883507, 1.05898273)
					Part63.Size = Vector3.new(5.19000006, 1, 1)
					Part63.CFrame = CFrame.new(46.5576019, 22.4313908, -54.566433, 0.00228062016, 0.00272719329, 0.999993324, -0.999542534, -0.0301392656, 0.00236178562, 0.0301455129, -0.999541759, 0.00265712291)
					Part63.BottomSurface = Enum.SurfaceType.Smooth
					Part63.TopSurface = Enum.SurfaceType.Smooth
					Part63.Color = Color3.new(0.803922, 0.803922, 0.803922)
					Part63.Position = Vector3.new(46.5576019, 22.4313908, -54.566433)
					Part63.Orientation = Vector3.new(-0.140000001, 89.8499985, -91.7299957)
					Part63.Color = Color3.new(0.803922, 0.803922, 0.803922)
					Part64.Parent = Model0
					Part64.BrickColor = BrickColor.new("Bright yellow")
					Part64.Reflectance = 0.10000000149012
					Part64.Rotation = Vector3.new(-41.6299973, 89.7900009, -50.0999985)
					Part64.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part64.Velocity = Vector3.new(15.8596373, -15.2642717, 1.1743474)
					Part64.Size = Vector3.new(3.20000005, 5, 4)
					Part64.CFrame = CFrame.new(32.4819221, 16.8009949, -58.737011, 0.00228062016, 0.00272719329, 0.999993324, -0.999542534, -0.0301392656, 0.00236178562, 0.0301455129, -0.999541759, 0.00265712291)
					Part64.BottomSurface = Enum.SurfaceType.Smooth
					Part64.TopSurface = Enum.SurfaceType.Smooth
					Part64.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part64.Position = Vector3.new(32.4819221, 16.8009949, -58.737011)
					Part64.Orientation = Vector3.new(-0.140000001, 89.8499985, -91.7299957)
					Part64.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part65.Parent = Model0
					Part65.BrickColor = BrickColor.new("Bright yellow")
					Part65.Reflectance = 0.10000000149012
					Part65.Rotation = Vector3.new(178.269989, 0.159999996, 179.869995)
					Part65.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part65.Velocity = Vector3.new(15.9261608, -14.4530563, 1.02292252)
					Part65.Size = Vector3.new(6, 6.78999996, 2.78999996)
					Part65.CFrame = CFrame.new(52.2633438, 16.5349998, -51.4716949, -0.999993682, -0.00228062109, 0.00272715022, -0.00236178655, 0.999542892, -0.030139273, -0.00265712384, -0.0301455241, -0.999541998)
					Part65.BottomSurface = Enum.SurfaceType.Smooth
					Part65.TopSurface = Enum.SurfaceType.Smooth
					Part65.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part65.Position = Vector3.new(52.2633438, 16.5349998, -51.4716949)
					Part65.Orientation = Vector3.new(1.73000002, 179.839996, -0.140000001)
					Part65.Color = Color3.new(0.960784, 0.803922, 0.188235)
					SpecialMesh66.Parent = Part65
					SpecialMesh66.MeshType = Enum.MeshType.Wedge
					Part67.Parent = Model0
					Part67.BrickColor = BrickColor.new("Black")
					Part67.Reflectance = 0.10000000149012
					Part67.Rotation = Vector3.new(-41.6299973, 89.7900009, -50.0999985)
					Part67.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part67.Velocity = Vector3.new(15.7453032, -14.8148584, 1.0855757)
					Part67.Size = Vector3.new(0.600000024, 7.4000001, 3.78999996)
					Part67.CFrame = CFrame.new(43.5757828, 19.5929279, -58.890995, 0.00228062016, 0.00272719329, 0.999993324, -0.999542534, -0.0301392656, 0.00236178562, 0.0301455129, -0.999541759, 0.00265712291)
					Part67.BottomSurface = Enum.SurfaceType.Smooth
					Part67.TopSurface = Enum.SurfaceType.Smooth
					Part67.Color = Color3.new(0.105882, 0.164706, 0.207843)
					Part67.Position = Vector3.new(43.5757828, 19.5929279, -58.890995)
					Part67.Orientation = Vector3.new(-0.140000001, 89.8499985, -91.7299957)
					Part67.Color = Color3.new(0.105882, 0.164706, 0.207843)
					Part68.Parent = Model0
					Part68.BrickColor = BrickColor.new("Bright yellow")
					Part68.Reflectance = 0.10000000149012
					Part68.Rotation = Vector3.new(-41.6299973, 89.7900009, -50.0999985)
					Part68.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part68.Velocity = Vector3.new(15.8416977, -14.4687462, 1.02316523)
					Part68.Size = Vector3.new(6.80000019, 1, 6)
					Part68.CFrame = CFrame.new(52.2990723, 16.1401768, -64.5657425, 0.00228062016, 0.00272719329, 0.999993324, -0.999542534, -0.0301392656, 0.00236178562, 0.0301455129, -0.999541759, 0.00265712291)
					Part68.BottomSurface = Enum.SurfaceType.Smooth
					Part68.TopSurface = Enum.SurfaceType.Smooth
					Part68.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part68.Position = Vector3.new(52.2990723, 16.1401768, -64.5657425)
					Part68.Orientation = Vector3.new(-0.140000001, 89.8499985, -91.7299957)
					Part68.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part69.Parent = Model0
					Part69.BrickColor = BrickColor.new("Bright yellow")
					Part69.Reflectance = 0.10000000149012
					Part69.Rotation = Vector3.new(138.37999, -89.6699982, 140.099991)
					Part69.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part69.Velocity = Vector3.new(15.6739407, -14.3775835, 1.00048959)
					Part69.Size = Vector3.new(11, 3.20000005, 2.19000006)
					Part69.CFrame = CFrame.new(54.372364, 21.3116264, -59.1134453, -0.00272716279, -0.00228001853, -0.999983907, 0.0301387496, 0.999536812, -0.002361177, 0.999536276, -0.0301449895, -0.00265720394)
					Part69.BottomSurface = Enum.SurfaceType.Smooth
					Part69.TopSurface = Enum.SurfaceType.Smooth
					Part69.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part69.Position = Vector3.new(54.372364, 21.3116264, -59.1134453)
					Part69.Orientation = Vector3.new(0.140000001, -90.1500015, 1.73000002)
					Part69.Color = Color3.new(0.960784, 0.803922, 0.188235)
					SpecialMesh70.Parent = Part69
					SpecialMesh70.MeshType = Enum.MeshType.Wedge
					Part71.Parent = Model0
					Part71.BrickColor = BrickColor.new("Bright yellow")
					Part71.Reflectance = 0.10000000149012
					Part71.Rotation = Vector3.new(-41.6299973, 89.7900009, -50.0999985)
					Part71.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part71.Velocity = Vector3.new(15.8100357, -15.2647877, 1.17284322)
					Part71.Size = Vector3.new(2.5999999, 11, 2.3900001)
					Part71.CFrame = CFrame.new(32.4800301, 17.9614201, -59.0721626, 0.00228062016, 0.00272719329, 0.999993324, -0.999542534, -0.0301392656, 0.00236178562, 0.0301455129, -0.999541759, 0.00265712291)
					Part71.BottomSurface = Enum.SurfaceType.Smooth
					Part71.TopSurface = Enum.SurfaceType.Smooth
					Part71.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part71.Position = Vector3.new(32.4800301, 17.9614201, -59.0721626)
					Part71.Orientation = Vector3.new(-0.140000001, 89.8499985, -91.7299957)
					Part71.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part72.Parent = Model0
					Part72.BrickColor = BrickColor.new("Mid gray")
					Part72.Reflectance = 0.10000000149012
					Part72.Rotation = Vector3.new(-41.6299973, 89.7900009, -50.0999985)
					Part72.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part72.Velocity = Vector3.new(15.6041288, -14.6993694, 1.0591532)
					Part72.Size = Vector3.new(5.19000006, 1, 1)
					Part72.CFrame = CFrame.new(46.5826912, 22.154108, -63.7622147, 0.00228062016, 0.00272719329, 0.999993324, -0.999542534, -0.0301392656, 0.00236178562, 0.0301455129, -0.999541759, 0.00265712291)
					Part72.BottomSurface = Enum.SurfaceType.Smooth
					Part72.TopSurface = Enum.SurfaceType.Smooth
					Part72.Color = Color3.new(0.803922, 0.803922, 0.803922)
					Part72.Position = Vector3.new(46.5826912, 22.154108, -63.7622147)
					Part72.Orientation = Vector3.new(-0.140000001, 89.8499985, -91.7299957)
					Part72.Color = Color3.new(0.803922, 0.803922, 0.803922)
					Part73.Parent = Model0
					Part73.BrickColor = BrickColor.new("Bright yellow")
					Part73.Reflectance = 0.10000000149012
					Part73.Rotation = Vector3.new(-41.6299973, 89.6699982, 39.9099998)
					Part73.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part73.Velocity = Vector3.new(15.7782755, -15.3293858, 1.18404686)
					Part73.Size = Vector3.new(5, 0.800000012, 0.790000021)
					Part73.CFrame = CFrame.new(30.8773766, 18.796299, -58.8015633, 0.00272716419, -0.00228084624, 0.999983907, -0.0301390998, 0.999536812, 0.00236200634, -0.999536514, -0.0301453341, 0.00265720859)
					Part73.BottomSurface = Enum.SurfaceType.Smooth
					Part73.TopSurface = Enum.SurfaceType.Smooth
					Part73.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part73.Position = Vector3.new(30.8773766, 18.796299, -58.8015633)
					Part73.Orientation = Vector3.new(-0.140000001, 89.8499985, -1.73000002)
					Part73.Color = Color3.new(0.960784, 0.803922, 0.188235)
					SpecialMesh74.Parent = Part73
					SpecialMesh74.MeshType = Enum.MeshType.Wedge
					Part75.Parent = Model0
					Part75.Material = Enum.Material.Concrete
					Part75.Reflectance = 0.10000000149012
					Part75.Rotation = Vector3.new(-41.6299973, 89.7900009, -50.0999985)
					Part75.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part75.Velocity = Vector3.new(15.9580784, -14.4698839, 1.02713895)
					Part75.Size = Vector3.new(10, 12, 10)
					Part75.CFrame = CFrame.new(52.0883293, 14.3393888, -58.9094315, 0.00228062016, 0.00272719329, 0.999993324, -0.999542534, -0.0301392656, 0.00236178562, 0.0301455129, -0.999541759, 0.00265712291)
					Part75.BottomSurface = Enum.SurfaceType.Smooth
					Part75.TopSurface = Enum.SurfaceType.Smooth
					Part75.Position = Vector3.new(52.0883293, 14.3393888, -58.9094315)
					Part75.Orientation = Vector3.new(-0.140000001, 89.8499985, -91.7299957)
					CylinderMesh76.Parent = Part75
					CylinderMesh76.Scale = Vector3.new(1, 1.02999997, 1)
					CylinderMesh76.Scale = Vector3.new(1, 1.02999997, 1)
					Part77.Parent = Model0
					Part77.BrickColor = BrickColor.new("Bright yellow")
					Part77.Reflectance = 0.10000000149012
					Part77.Rotation = Vector3.new(-41.6299973, 89.7900009, -50.0999985)
					Part77.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part77.Velocity = Vector3.new(15.7208385, -15.1147547, 1.1415596)
					Part77.Size = Vector3.new(0.600000024, 5.19000006, 5)
					Part77.CFrame = CFrame.new(36.1741295, 20.2081833, -58.8296967, 0.00228062016, 0.00272719329, 0.999993324, -0.999542534, -0.0301392656, 0.00236178562, 0.0301455129, -0.999541759, 0.00265712291)
					Part77.BottomSurface = Enum.SurfaceType.Smooth
					Part77.TopSurface = Enum.SurfaceType.Smooth
					Part77.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part77.Position = Vector3.new(36.1741295, 20.2081833, -58.8296967)
					Part77.Orientation = Vector3.new(-0.140000001, 89.8499985, -91.7299957)
					Part77.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part78.Parent = Model0
					Part78.BrickColor = BrickColor.new("Bright yellow")
					Part78.Reflectance = 0.10000000149012
					Part78.Rotation = Vector3.new(-1.73000002, -0.159999996, 0.129999995)
					Part78.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part78.Velocity = Vector3.new(15.8294477, -14.4710217, 1.02320051)
					Part78.Size = Vector3.new(6, 6.78999996, 2.78999996)
					Part78.CFrame = CFrame.new(52.304245, 16.0829086, -66.4648666, 0.999993682, -0.00228062109, -0.00272719399, 0.00236178795, 0.999542892, 0.030139273, 0.00265716738, -0.0301455241, 0.999541998)
					Part78.BottomSurface = Enum.SurfaceType.Smooth
					Part78.TopSurface = Enum.SurfaceType.Smooth
					Part78.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part78.Position = Vector3.new(52.304245, 16.0829086, -66.4648666)
					Part78.Orientation = Vector3.new(-1.73000002, -0.159999996, 0.140000001)
					Part78.Color = Color3.new(0.960784, 0.803922, 0.188235)
					SpecialMesh79.Parent = Part78
					SpecialMesh79.MeshType = Enum.MeshType.Wedge
					Part80.Parent = Model0
					Part80.BrickColor = BrickColor.new("Black")
					Part80.Reflectance = 0.10000000149012
					Part80.Rotation = Vector3.new(-41.6299973, 89.7900009, -50.0999985)
					Part80.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part80.Velocity = Vector3.new(15.675931, -14.7542858, 1.0718683)
					Part80.Size = Vector3.new(2.78999996, 7.4000001, 0.790000021)
					Part80.CFrame = CFrame.new(45.0718956, 21.2956905, -58.9382553, 0.00228062016, 0.00272719329, 0.999993324, -0.999542534, -0.0301392656, 0.00236178562, 0.0301455129, -0.999541759, 0.00265712291)
					Part80.BottomSurface = Enum.SurfaceType.Smooth
					Part80.TopSurface = Enum.SurfaceType.Smooth
					Part80.Color = Color3.new(0.105882, 0.164706, 0.207843)
					Part80.Position = Vector3.new(45.0718956, 21.2956905, -58.9382553)
					Part80.Orientation = Vector3.new(-0.140000001, 89.8499985, -91.7299957)
					Part80.Color = Color3.new(0.105882, 0.164706, 0.207843)
					Part81.Parent = Model0
					Part81.BrickColor = BrickColor.new("Bright yellow")
					Part81.Reflectance = 0.10000000149012
					Part81.Rotation = Vector3.new(-41.6299973, 89.7900009, -50.0999985)
					Part81.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part81.Velocity = Vector3.new(15.8494205, -14.5350885, 1.03597403)
					Part81.Size = Vector3.new(5.4000001, 11, 10)
					Part81.CFrame = CFrame.new(50.4822121, 17.004385, -58.9941902, 0.00228062016, 0.00272719329, 0.999993324, -0.999542534, -0.0301392656, 0.00236178562, 0.0301455129, -0.999541759, 0.00265712291)
					Part81.BottomSurface = Enum.SurfaceType.Smooth
					Part81.TopSurface = Enum.SurfaceType.Smooth
					Part81.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part81.Position = Vector3.new(50.4822121, 17.004385, -58.9941902)
					Part81.Orientation = Vector3.new(-0.140000001, 89.8499985, -91.7299957)
					Part81.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part82.Parent = Model0
					Part82.BrickColor = BrickColor.new("Bright yellow")
					Part82.Reflectance = 0.10000000149012
					Part82.Rotation = Vector3.new(-41.6299973, 89.6699982, 39.9099998)
					Part82.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part82.Velocity = Vector3.new(15.7448502, -15.2649984, 1.17077804)
					Part82.Size = Vector3.new(11, 0.600000024, 2.3900001)
					Part82.CFrame = CFrame.new(32.4763908, 19.5606842, -59.1204224, 0.00272716419, -0.00228084624, 0.999983907, -0.0301390998, 0.999536812, 0.00236200634, -0.999536514, -0.0301453341, 0.00265720859)
					Part82.BottomSurface = Enum.SurfaceType.Smooth
					Part82.TopSurface = Enum.SurfaceType.Smooth
					Part82.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part82.Position = Vector3.new(32.4763908, 19.5606842, -59.1204224)
					Part82.Orientation = Vector3.new(-0.140000001, 89.8499985, -1.73000002)
					Part82.Color = Color3.new(0.960784, 0.803922, 0.188235)
					SpecialMesh83.Parent = Part82
					SpecialMesh83.MeshType = Enum.MeshType.Wedge
					Part84.Parent = Model0
					Part84.BrickColor = BrickColor.new("Bright yellow")
					Part84.Reflectance = 0.10000000149012
					Part84.Rotation = Vector3.new(-41.6299973, 89.7900009, -50.0999985)
					Part84.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part84.Velocity = Vector3.new(15.8378992, -14.9120703, 1.10696924)
					Part84.Size = Vector3.new(4, 13, 1)
					Part84.CFrame = CFrame.new(41.181591, 17.2822895, -59.0279465, 0.00228062016, 0.00272719329, 0.999993324, -0.999542534, -0.0301392656, 0.00236178562, 0.0301455129, -0.999541759, 0.00265712291)
					Part84.BottomSurface = Enum.SurfaceType.Smooth
					Part84.TopSurface = Enum.SurfaceType.Smooth
					Part84.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part84.Position = Vector3.new(41.181591, 17.2822895, -59.0279465)
					Part84.Orientation = Vector3.new(-0.140000001, 89.8499985, -91.7299957)
					Part84.Color = Color3.new(0.960784, 0.803922, 0.188235)
					Part85.Parent = Model0
					Part85.BrickColor = BrickColor.new("Mid gray")
					Part85.Reflectance = 0.10000000149012
					Part85.Rotation = Vector3.new(138.369995, -89.6699982, 140.099991)
					Part85.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part85.Velocity = Vector3.new(15.5070686, -14.4672928, 1.01208389)
					Part85.Size = Vector3.new(10.1000004, 1, 0.99000001)
					Part85.CFrame = CFrame.new(52.1630363, 25.4045525, -59.2429199, -0.00272716419, -0.00228036777, -0.999983907, 0.0301391147, 0.999536812, -0.00236152788, 0.999536514, -0.030145349, -0.00265722303)
					Part85.BottomSurface = Enum.SurfaceType.Smooth
					Part85.TopSurface = Enum.SurfaceType.Smooth
					Part85.Color = Color3.new(0.803922, 0.803922, 0.803922)
					Part85.Position = Vector3.new(52.1630363, 25.4045525, -59.2429199)
					Part85.Orientation = Vector3.new(0.140000001, -90.1500015, 1.73000002)
					Part85.Color = Color3.new(0.803922, 0.803922, 0.803922)
					SpecialMesh86.Parent = Part85
					SpecialMesh86.MeshType = Enum.MeshType.Wedge
					Part87.Parent = Model0
					Part87.BrickColor = BrickColor.new("Mid gray")
					Part87.Reflectance = 0.10000000149012
					Part87.Rotation = Vector3.new(-41.6299973, 89.7900009, -50.0999985)
					Part87.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part87.Velocity = Vector3.new(15.5369377, -14.5752716, 1.03349018)
					Part87.Size = Vector3.new(1, 1, 4.59000015)
					Part87.CFrame = CFrame.new(49.3505135, 25.5365887, -54.6524429, 0.00228062016, 0.00272719329, 0.999993324, -0.999542534, -0.0301392656, 0.00236178562, 0.0301455129, -0.999541759, 0.00265712291)
					Part87.BottomSurface = Enum.SurfaceType.Smooth
					Part87.TopSurface = Enum.SurfaceType.Smooth
					Part87.Color = Color3.new(0.803922, 0.803922, 0.803922)
					Part87.Position = Vector3.new(49.3505135, 25.5365887, -54.6524429)
					Part87.Orientation = Vector3.new(-0.140000001, 89.8499985, -91.7299957)
					Part87.Color = Color3.new(0.803922, 0.803922, 0.803922)
					Part88.Parent = Model0
					Part88.BrickColor = BrickColor.new("Mid gray")
					Part88.Reflectance = 0.10000000149012
					Part88.Rotation = Vector3.new(-41.6299973, 89.7900009, -50.0999985)
					Part88.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part88.Velocity = Vector3.new(15.5978384, -14.461586, 1.01393461)
					Part88.Size = Vector3.new(1.99000001, 1, 1)
					Part88.CFrame = CFrame.new(52.1539154, 24.0438805, -54.5997925, 0.00228062016, 0.00272719329, 0.999993324, -0.999542534, -0.0301392656, 0.00236178562, 0.0301455129, -0.999541759, 0.00265712291)
					Part88.BottomSurface = Enum.SurfaceType.Smooth
					Part88.TopSurface = Enum.SurfaceType.Smooth
					Part88.Color = Color3.new(0.803922, 0.803922, 0.803922)
					Part88.Position = Vector3.new(52.1539154, 24.0438805, -54.5997925)
					Part88.Orientation = Vector3.new(-0.140000001, 89.8499985, -91.7299957)
					Part88.Color = Color3.new(0.803922, 0.803922, 0.803922)
					Part89.Parent = Model0
					Part89.BrickColor = BrickColor.new("Mid gray")
					Part89.Reflectance = 0.10000000149012
					Part89.Rotation = Vector3.new(-41.6299973, 89.7900009, -50.0999985)
					Part89.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part89.Velocity = Vector3.new(15.5072794, -14.580781, 1.0335753)
					Part89.Size = Vector3.new(1, 1, 4.59000015)
					Part89.CFrame = CFrame.new(49.3630562, 25.3979416, -59.2503204, 0.00228062016, 0.00272719329, 0.999993324, -0.999542534, -0.0301392656, 0.00236178562, 0.0301455129, -0.999541759, 0.00265712291)
					Part89.BottomSurface = Enum.SurfaceType.Smooth
					Part89.TopSurface = Enum.SurfaceType.Smooth
					Part89.Color = Color3.new(0.803922, 0.803922, 0.803922)
					Part89.Position = Vector3.new(49.3630562, 25.3979416, -59.2503204)
					Part89.Orientation = Vector3.new(-0.140000001, 89.8499985, -91.7299957)
					Part89.Color = Color3.new(0.803922, 0.803922, 0.803922)
					Part90.Parent = Model0
					Part90.BrickColor = BrickColor.new("Mid gray")
					Part90.Reflectance = 0.10000000149012
					Part90.Rotation = Vector3.new(-41.6299973, 89.6699982, 39.9099998)
					Part90.RotVelocity = Vector3.new(-0.00130878447, 0.0076724994, 0.0405282564)
					Part90.Velocity = Vector3.new(15.5074902, -14.6942692, 1.05506682)
					Part90.Size = Vector3.new(10.1000004, 1, 0.99000001)
					Part90.CFrame = CFrame.new(46.5630798, 25.3913307, -59.2577515, 0.00272716419, -0.00228084647, 0.999983907, -0.0301390998, 0.999536812, 0.00236200634, -0.999536514, -0.0301453341, 0.00265720859)
					Part90.BottomSurface = Enum.SurfaceType.Smooth
					Part90.TopSurface = Enum.SurfaceType.Smooth
					Part90.Color = Color3.new(0.803922, 0.803922, 0.803922)
					Part90.Position = Vector3.new(46.5630798, 25.3913307, -59.2577515)
					Part90.Orientation = Vector3.new(-0.140000001, 89.8499985, -1.73000002)
					Part90.Color = Color3.new(0.803922, 0.803922, 0.803922)
					SpecialMesh91.Parent = Part90
					SpecialMesh91.MeshType = Enum.MeshType.Wedge
					for i,v in pairs(mas:GetChildren()) do
						v.Parent = game:GetService("Players").LocalPlayer.Character
						pcall(function() v:MakeJoints() end)
					end
					mas:Destroy()
					for i,v in pairs(cors) do
						spawn(function()
							pcall(v)
						end)
					end
					for i,v in pairs(Model0:GetChildren()) do
						if v.ClassName == "Part" then
							v.CanCollide = false
						end
					end
					Part8.CFrame = game.Workspace.CloneCharacter.Torso.CFrame * CFrame.new(0,100,0)-- * CFrame.fromEulerAnglesXYZ(0,math.pi/2,math.pi/2)
					--Part8.Anchored = true
					for i = 1,30 do
						Part8.CFrame = Part8.CFrame * CFrame.new(0,-2,0)
						game:GetService("RunService").RenderStepped:wait()
					end
					local wry = Instance.new("Sound", Part8)
					wry.SoundId = "rbxassetid://252754492"
					wry:Play()
					wry.Volume = 6
					Part8.CFrame = game.Workspace.CloneCharacter.Torso.CFrame * CFrame.new(0,2,0)
					Part8.Anchored = true
					humanoidofplr.PlatformStand = true
					allahu:Stop()
					pepsihit:Play()
					--Converted with ttyyuu12345's model to script plugin v4
					local function sandbox(var,func)
						local env = getfenv(func)
						local newenv = setmetatable({},{
							__index = function(self,k)
								if k=="script" then
									return var
								else
									return env[k]
								end
							end,
						})
						setfenv(func,newenv)
						return func
					end
					local cors = {}
					local mas = Instance.new("Model",game:GetService("Lighting"))
					local Part01 = Instance.new("Part")
					local SpecialMesh1 = Instance.new("SpecialMesh")
					Part01.Parent = mas
					Part01.Size = Vector3.new(13.4299994, 29.1300011, 14.3699951)
					Part01.CFrame = CFrame.new(-25.3050022, 14.5650053, 8.03499794, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					Part01.Position = Vector3.new(-25.3050022, 14.5650053, 8.03499794)
					Part01.Anchored = true
					Part01.CanCollide = false
					SpecialMesh1.Parent = Part01
					SpecialMesh1.MeshId = "rbxassetid://10470609"
					SpecialMesh1.Scale = Vector3.new(30, 30, 30)
					SpecialMesh1.TextureId = "rbxassetid://10549894"
					SpecialMesh1.MeshType = Enum.MeshType.FileMesh
					SpecialMesh1.Scale = Vector3.new(30, 30, 30)
					for i,v in pairs(mas:GetChildren()) do
						v.Parent = game:GetService("Players").LocalPlayer.Character
						pcall(function() v:MakeJoints() end)
					end
					mas:Destroy()
					for i,v in pairs(cors) do
						spawn(function()
							pcall(v)
						end)
					end
					Part01.CFrame = game.Workspace.CloneCharacter.Torso.CFrame * CFrame.new(0,100,0) * CFrame.fromEulerAnglesXYZ(0,math.pi/2,math.pi/2)
					for i = 1,50 do
						Part01.CFrame = Part01.CFrame * CFrame.new(-2,0,0)
						wait()
					end
					pepsihit:Play()
					pepsi:Play()
					wait(1.4)
					explo:Play()
					erection:Play()
					--runninin90:Play()
					
					bass:Play()
					pepsi:Stop()
					-- Objects

					local ScreenGui = Instance.new("ScreenGui")
					local TextLabel = Instance.new("TextLabel")
					
					-- Properties
					
					ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
					
					TextLabel.Parent = ScreenGui
					TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
					TextLabel.BackgroundTransparency = 1
					TextLabel.Size = UDim2.new(1, 1, 1, 1)
					TextLabel.Font = Enum.Font.Arial
					TextLabel.FontSize = Enum.FontSize.Size10
					TextLabel.Text = "ULTIMATE CLUSTERFUCK"
					TextLabel.TextSize = 10
					TextLabel.TextWrapped = true
					local ball1 = Instance.new("Part", game.Workspace.CloneCharacter)
	                ball1.Size = Vector3.new(6,6,6)
	                ball1.Material = "Neon"
	                ball1.Anchored = true
	                ball1.Transparency = 0.3
	                ball1.BrickColor = BrickColor.new("New Yeller")
	                ball1.CanCollide = false
	                ball1.CFrame = Part01.CFrame
	                local ball11 = Instance.new("Part", game.Workspace.CloneCharacter)
	                ball11.Size = Vector3.new(6,6,6)
	                ball11.Material = "Neon"
	                ball11.Anchored = true
	                ball11.Transparency = 0.3
	                ball11.BrickColor = BrickColor.new("Maroon")
	                ball11.CanCollide = false
	                ball11.CFrame = Part01.CFrame
	                local cf = ball1.CFrame
	                ball1:BreakJoints()
	                local cfval = 0
	                local cfval1 = 0
					humanoidofplr.JumpPower = 65
					humanoidrootpart:destroy()
					rlegweld:destroy()
					llegweld:destroy()
					lhandweld:destroy()
					rhandweld:destroy()
					headweld:destroy()
					heed.Parent = game.Workspace.CloneCharacter.Torso
					rootjointclone.Parent = game.Workspace.CloneCharacter.HumanoidRootPart
					lhandclone.Parent = game.Workspace.CloneCharacter.Torso
					rhandclone.Parent = game.Workspace.CloneCharacter.Torso
					llegclone.Parent = game.Workspace.CloneCharacter.Torso
					rlegclone.Parent = game.Workspace.CloneCharacter.Torso
					bodyps:destroy()
					humanoid.Parent.Head.Anchored = false
					local bodypsvel1 = Instance.new("BodyVelocity", humanoid.Parent.Head)
					bodypsvel1.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
					bodypsvel1.Velocity = Vector3.new(math.random(-70,70),30,math.random(-70,70))
					local bodypsvel11 = Instance.new("BodyVelocity", game.Workspace.CloneCharacter.Torso)
					bodypsvel11.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
					bodypsvel11.Velocity = Vector3.new(math.random(-70,70),30,math.random(-70,70))
					humanoid.Parent:BreakJoints()
					humanoidofplr.PlatformStand = true
					game.Workspace.CloneCharacter.Torso.CFrame = CFrame.new(Part01.Position,game.Workspace.CloneCharacter.Torso.Position)
					game.Workspace.CloneCharacter.Torso.CFrame = game.Workspace.CloneCharacter.Torso.CFrame * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
					wait(0.1)
					bodypsvel1:destroy()
					bodypsvel11:destroy()
					for i = 1,25 do
						TextLabel.TextColor3 = Color3.fromRGB(math.random(1,255),math.random(1,255),math.random(1,255)) 
						TextLabel.Visible = true
						TextLabel.Rotation = TextLabel.Rotation + 0.4
						TextLabel.TextSize = TextLabel.TextSize + 1
						humanoidofplr.CameraOffset = Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
	                    cfval1 = cfval1 - 1
	                    cfval = cfval + 1
						ball1.BrickColor = BrickColor.Random()
	                    ball1.Size = ball1.Size + Vector3.new(1,1,1)
	                    ball1.CFrame = cf * CFrame.fromEulerAnglesXYZ(0,cfval,cfval + math.random(-1,1))
	                    --
						ball11.BrickColor = BrickColor.Random()
	                    ball11.Size = ball1.Size + Vector3.new(0.1,0.1,0.1)
	                    ball11.CFrame = cf * CFrame.fromEulerAnglesXYZ(0,cfval1,cfval1 + math.random(-1,1))
						wait()
						ball1.BrickColor = BrickColor.Random()
						ball11.BrickColor = BrickColor.Random()
						humanoidofplr.CameraOffset = Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
	                    cfval1 = cfval1 - 1
	                    cfval = cfval + 1
	                    ball1.Size = ball1.Size + Vector3.new(1,1,1)
	                    ball1.CFrame = cf * CFrame.fromEulerAnglesXYZ(0,cfval,cfval + math.random(-1,1))
	                    --
	                    ball11.Size = ball1.Size + Vector3.new(0.1,0.1,0.1)
	                    ball11.CFrame = cf * CFrame.fromEulerAnglesXYZ(0,cfval1,cfval1 + math.random(-1,1))
						TextLabel.Visible = false
						TextLabel.Rotation = TextLabel.Rotation + 0.4
						TextLabel.TextSize = TextLabel.TextSize + 1
						wait()
					end
					bass:Play()
					for i = 1,25 do
						TextLabel.TextColor3 = Color3.fromRGB(math.random(1,255),math.random(1,255),math.random(1,255)) 
						TextLabel.Visible = true
						TextLabel.Rotation = TextLabel.Rotation + 0.4
						TextLabel.TextSize = TextLabel.TextSize + 1
						humanoidofplr.CameraOffset = Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
	                    cfval1 = cfval1 - 1
	                    cfval = cfval + 1
						ball1.BrickColor = BrickColor.Random()
	                    ball1.Size = ball1.Size + Vector3.new(1,1,1)
	                    ball1.CFrame = cf * CFrame.fromEulerAnglesXYZ(0,cfval,cfval + math.random(-1,1))
	                    --
						ball11.BrickColor = BrickColor.Random()
	                    ball11.Size = ball1.Size + Vector3.new(0.1,0.1,0.1)
	                    ball11.CFrame = cf * CFrame.fromEulerAnglesXYZ(0,cfval1,cfval1 + math.random(-1,1))
						wait()
						ball1.BrickColor = BrickColor.Random()
						ball11.BrickColor = BrickColor.Random()
						humanoidofplr.CameraOffset = Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
	                    cfval1 = cfval1 - 1
	                    cfval = cfval + 1
	                    ball1.Size = ball1.Size + Vector3.new(1,1,1)
	                    ball1.CFrame = cf * CFrame.fromEulerAnglesXYZ(0,cfval,cfval + math.random(-1,1))
	                    --
	                    ball11.Size = ball1.Size + Vector3.new(0.1,0.1,0.1)
	                    ball11.CFrame = cf * CFrame.fromEulerAnglesXYZ(0,cfval1,cfval1 + math.random(-1,1))
						TextLabel.Visible = false
						TextLabel.Rotation = TextLabel.Rotation + 0.4
						TextLabel.TextSize = TextLabel.TextSize + 1
						wait()
					end
					humanoidofplr.PlatformStand = false
					ball1:destroy()
					ScreenGui:destroy()
					ball11:destroy()
					erection:Stop()
					Part01:destroy()
					Model0:destroy()
					humanoidofplr.CameraOffset = Vector3.new(0,0,0)
					wait(2)
					bass:Stop()
					for i,v in pairs(humanoidofplr.Parent:GetChildren()) do
						if v.ClassName == "Part" then
							v.Anchored = true
						end
					end
					-- Objects

					local ScreenGui = Instance.new("ScreenGui")
					local ImageLabel = Instance.new("ImageLabel")
					
					-- Properties
					
					ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
					
					ImageLabel.Parent = ScreenGui
					ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
					ImageLabel.BackgroundTransparency = 1
					ImageLabel.Position = UDim2.new(-0.000247940421, 0, 0.0192930661, 0)
					ImageLabel.Size = UDim2.new(0, 919, 0, 760)
					ImageLabel.Image = "rbxassetid://1216401562"
					local screamer = Instance.new("Sound", ScreenGui)
					screamer.SoundId = "rbxassetid://153400584"
					screamer:Play()
					screamer.Volume = 10
					wait(3)
					runninin90:Play()
					erection:Play()
					pepsi:Play()
					local aaaah = Instance.new("Sound", ScreenGui)
					aaaah.SoundId = "rbxassetid://276709204"
					aaaah:Play()
					aaaah.Volume = 10
					for i = 1,100 do
						ImageLabel.Position = ImageLabel.Position - UDim2.new(0,25,0,15) + UDim2.new(0,math.random(-20,20),0,math.random(-20,20))
						ImageLabel.Size = ImageLabel.Size + UDim2.new(0,50,0,50)
						wait()
					end
					ScreenGui:Destroy()
					erection:Stop()
					runninin90:Stop()
					pepsi:Stop()
					for i,v in pairs(humanoidofplr.Parent:GetChildren()) do
						if v.ClassName == "Part" then
							v.Anchored = false
						end
					end
					using = false
				else
					humanoid.Parent.Head.CFrame = CFrame.new(humanoid.Parent.Head.Position, game.Workspace.CloneCharacter.Torso.Position)
					humanoid.Parent.Head.Anchored = true
					local bodyps = Instance.new("BodyPosition", game.Workspace.CloneCharacter.Torso)
					bodyps.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
					bodyps.Position = game.Workspace.CloneCharacter.Torso.Position
					humanoidofplr.JumpPower = 0
					local rhandclone = game.Workspace.CloneCharacter.Torso["Right Shoulder"]:Clone()
					local rhandweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
					rhandweld.Part0 = game.Workspace.CloneCharacter.Torso
					rhandweld.Part1 = game.Workspace.CloneCharacter["Right Arm"]
					rhandweld.C0 = CFrame.new(1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1)
					local lhandclone = game.Workspace.CloneCharacter.Torso["Left Shoulder"]:Clone()
					local lhandweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
					lhandweld.Part0 = game.Workspace.CloneCharacter.Torso
					lhandweld.Part1 = game.Workspace.CloneCharacter["Left Arm"]
					lhandweld.C0 = CFrame.new(-1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1)
					local llegclone = game.Workspace.CloneCharacter.Torso["Left Hip"]:Clone()
					game.Workspace.CloneCharacter.Torso["Left Hip"]:Remove()
					local llegweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
					llegweld.Part0 = game.Workspace.CloneCharacter.Torso
					llegweld.Part1 = game.Workspace.CloneCharacter["Left Leg"]
					llegweld.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0) * CFrame.new(0,-1,0)
					local rlegclone = game.Workspace.CloneCharacter.Torso["Right Hip"]:Clone()
					game.Workspace.CloneCharacter.Torso["Right Hip"]:Remove()
					local rlegweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
					rlegweld.Part0 = game.Workspace.CloneCharacter.Torso
					rlegweld.Part1 = game.Workspace.CloneCharacter["Right Leg"]
					rlegweld.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0) * CFrame.new(0,-1,0)
					local rootjointclone = game.Workspace.CloneCharacter.HumanoidRootPart.RootJoint:Clone()
					game.Workspace.CloneCharacter.HumanoidRootPart.RootJoint:Remove()
					local humanoidrootpart = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
					humanoidrootpart.Part0 = game.Workspace.CloneCharacter.HumanoidRootPart
					humanoidrootpart.Part1 = game.Workspace.CloneCharacter.Torso
					local heed = game.Workspace.CloneCharacter.Torso["Neck"]:Clone()
					local headweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
					headweld.Part0 = game.Workspace.CloneCharacter.Torso
					headweld.Part1 = game.Workspace.CloneCharacter.Head
					headweld.C0 = headweld.C0 * CFrame.new(0,1.5,0)
					game.Workspace.CloneCharacter.Torso.Neck:Remove()
					erection:Play()
					llegweld.C0 = CFrame.new(-0.906621933, -1.96817839, 3.81469727e-06, 0.939697921, 0.342017353, -1.15483999e-07, -0.342018157, 0.939700484, -1.54780309e-06, 4.20854008e-07, -1.4939601e-06, 1.00000584)
					rlegweld.C0 = CFrame.new(2.04675007, -0.901816607, 3.81469727e-06, -0.241916299, -0.970304012, -1.15483999e-07, 0.970306754, -0.241916746, -1.54780309e-06, -1.47389744e-06, 4.86491388e-07, 1.00000584)
					lhandweld.C0 = CFrame.new(-1.78488255, 0.126835346, 0, 0.913546026, 0.406735331, 1.15483552e-07, -0.406735331, 0.913546026, 1.54779377e-06, 5.24042946e-07, -1.46095226e-06, 1)
					rhandweld.C0 = CFrame.new(1.92161179, 0.407135487, 0, -0.694653988, -0.719348252, -1.15483999e-07, 0.719350696, -0.694655538, -1.54780309e-06, -1.03318553e-06, 1.1582564e-06, 1.00000584)
					humanoidrootpart.C0 = CFrame.new(0, 0, 0, 0.0323647447, 0.374601871, -0.926624477, -0.013075971, 0.927188933, 0.374372125, 0.999392211, 5.49364394e-08, 0.0349063426):inverse()
					headweld.C0 = CFrame.new(0, 1.50000882, 0, 0.0349099413, 5.30404058e-08, -0.999393761, -1.5450081e-06, 1.00000596, -1.07041799e-07, 0.999396384, -1.54780309e-06, 0.0349102654)
					for i = 1,25 do
						local mathran = math.random(1,2)
						humanoid.Health = humanoid.Health - 2
						kicksound:Play()
						if mathran == 1 then
							llegweld.C0 = CFrame.new(-0.906621933, -1.96817839, 3.81469727e-06, 0.939697921, 0.342017353, -1.15483999e-07, -0.342018157, 0.939700484, -1.54780309e-06, 4.20854008e-07, -1.4939601e-06, 1.00000584)
							rlegweld.C0 = CFrame.new(2.04675007, -0.901816607, 3.81469727e-06, -0.241916299, -0.970304012, -1.15483999e-07, 0.970306754, -0.241916746, -1.54780309e-06, -1.47389744e-06, 4.86491388e-07, 1.00000584)
							lhandweld.C0 = CFrame.new(-1.78488255, 0.126835346, 0, 0.913546026, 0.406735331, 1.15483552e-07, -0.406735331, 0.913546026, 1.54779377e-06, 5.24042946e-07, -1.46095226e-06, 1)
							rhandweld.C0 = CFrame.new(1.92161179, 0.407135487, 0, -0.694653988, -0.719348252, -1.15483999e-07, 0.719350696, -0.694655538, -1.54780309e-06, -1.03318553e-06, 1.1582564e-06, 1.00000584)
							humanoidrootpart.C0 = CFrame.new(0, 0, 0, 0.0323647447, 0.374601871, -0.926624477, -0.013075971, 0.927188933, 0.374372125, 0.999392211, 5.49364394e-08, 0.0349063426):inverse()
							headweld.C0 = CFrame.new(0, 1.50000882, 0, 0.0349099413, 5.30404058e-08, -0.999393761, -1.5450081e-06, 1.00000596, -1.07041799e-07, 0.999396384, -1.54780309e-06, 0.0349102654)
						end
						if mathran == 2 then
							llegweld.C0 = CFrame.new(-0.906621933, -1.96817839, 3.81469727e-06, 0.939697921, 0.342017353, -1.15483999e-07, -0.342018157, 0.939700484, -1.54780309e-06, 4.20854008e-07, -1.4939601e-06, 1.00000584)
							rlegweld.C0 = CFrame.new(1.89274311, -0.858413935, 7.62939453e-06, 0.10452839, -0.994525194, -1.15483999e-07, 0.994527876, 0.104528576, -1.54780309e-06, -1.55139548e-06, -4.69373873e-08, 1.00000584)
							lhandweld.C0 = CFrame.new(-1.78488255, 0.126835346, 0, 0.913546026, 0.406735331, 1.15483552e-07, -0.406735331, 0.913546026, 1.54779377e-06, 5.24042946e-07, -1.46095226e-06, 1)
							rhandweld.C0 = CFrame.new(2.22284222, 0.414411545, 0, -0.406726152, -0.913553655, -1.15483999e-07, 0.913556159, -0.406727403, -1.54780309e-06, -1.36702647e-06, 7.35030596e-07, 1.00000584)
							humanoidrootpart.C0 = CFrame.new(0, 0, 0, 0.0323647447, 0.374601871, -0.926624477, -0.013075971, 0.927188933, 0.374372125, 0.999392211, 5.49364394e-08, 0.0349063426):inverse()
							headweld.C0 = CFrame.new(0, 1.50000882, 0, 0.0349099413, 5.30404058e-08, -0.999393761, -1.5450081e-06, 1.00000596, -1.07041799e-07, 0.999396384, -1.54780309e-06, 0.0349102654)
						end
						wait(0.04)
						humanoidrootpart.C0 = CFrame.new(0, 0, 0, 0.0341443829, -0.207913235, -0.977556467, 0.00725775072, 0.978153586, -0.207789525, 0.99939394, -1.72760117e-08, 0.034907084):inverse()
						rlegweld.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0) * CFrame.new(0,-1,0)
						llegweld.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0) * CFrame.new(0,-1,0)
						lhandweld.C0 = CFrame.new(-1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1)					
						rhandweld.C0 = CFrame.new(1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1)
						wait(0.04)
					end
					humanoid.Health = humanoid.Health - 5
					erection:Stop()
					BOOM:Play()
					explo2:Play()
					bodyps:destroy()
					humanoid.Parent.Head.Anchored = false
					headweld.C0 = CFrame.new(0, 1.50000024, 0, 1, -2.77679039e-28, -8.22939696e-27, -2.70105974e-27, 0.978154778, 0.207912564, 7.87598728e-27, -0.207912564, 0.978154778)
					humanoidrootpart.C0 = CFrame.new(0, 0, 0, 1, -4.29140332e-28, 1.46412584e-27, -1.76704843e-28, 0.913548112, 0.406731218, -1.51461294e-27, -0.406731218, 0.913548112):inverse()
					rlegweld.C0 = CFrame.new(0.5, -1.17737412, -0.674467087, 1, 7.57306469e-28, 2.5243549e-28, 3.02922588e-28, 0.92718792, 0.374602854, -1.31266455e-27, -0.374602854, 0.92718792)
					llegweld.C0 = CFrame.new(-0.5, -1.95082164, 0.459226608, 1, 4.54383881e-28, -3.63507105e-27, 1.1864468e-27, 0.913548112, 0.406731218, 3.48360976e-27, -0.406731218, 0.913548112)
					lhandweld.C0 = CFrame.new(-1.5, 0, 0.45791626, 1, 4.80460114e-22, -3.37716629e-22, -2.65673535e-22, 0.882948399, 0.469470233, 5.23747954e-22, -0.469470233, 0.882948399)					
					rhandweld.C0 = CFrame.new(1.5, 0, 0.45791626, 1, 4.80460114e-22, -3.37716629e-22, -2.65673535e-22, 0.882948399, 0.469470233, 5.23747954e-22, -0.469470233, 0.882948399)
					local bodypsvel = Instance.new("BodyVelocity", game.Workspace.CloneCharacter.Torso)
					bodypsvel.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
					bodypsvel.Velocity = Vector3.new(0,55,0)
					humanoid.Parent.Head.CFrame = humanoid.Parent.Head.CFrame * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
					local bodypsvel1 = Instance.new("BodyVelocity", humanoid.Parent.Head)
					bodypsvel1.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
					bodypsvel1.Velocity = humanoid.Parent.Head.CFrame.upVector * 45
					wait(0.1)
					bodypsvel:destroy()
					bodypsvel1:destroy()
					wait(0.3)
					humanoidofplr.JumpPower = 65
					humanoidrootpart:destroy()
					rlegweld:destroy()
					llegweld:destroy()
					lhandweld:destroy()
					rhandweld:destroy()
					headweld:destroy()
					heed.Parent = game.Workspace.CloneCharacter.Torso
					rootjointclone.Parent = game.Workspace.CloneCharacter.HumanoidRootPart
					lhandclone.Parent = game.Workspace.CloneCharacter.Torso
					rhandclone.Parent = game.Workspace.CloneCharacter.Torso
					llegclone.Parent = game.Workspace.CloneCharacter.Torso
					rlegclone.Parent = game.Workspace.CloneCharacter.Torso
					using = false
				end
				using = false
			end
		end
		sensoryee2.Touched:connect(rapidkick)
		wait(0.2)
		if not hittd then
			sensoryee2:destroy()
			using = false
		end
	end
end
mouse.KeyDown:connect(kicking)
candur = true
function cancer(key)
	key = key:lower()
	if key == "f" and not using then
		using = true
		local scarceisfatthatsafact = Instance.new("Sound", humanoidofplr.Parent.Head)
		scarceisfatthatsafact.SoundId = "rbxassetid://519967074"
		scarceisfatthatsafact:Play()
		scarceisfatthatsafact.Volume = 10
		local rhandclone = game.Workspace.CloneCharacter.Torso["Right Shoulder"]:Clone()
		local rhandweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
		rhandweld.Part0 = game.Workspace.CloneCharacter.Torso
		rhandweld.Part1 = game.Workspace.CloneCharacter["Right Arm"]
		rhandweld.C0 = CFrame.new(1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1)
		local lhandclone = game.Workspace.CloneCharacter.Torso["Left Shoulder"]:Clone()
		local lhandweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
		lhandweld.Part0 = game.Workspace.CloneCharacter.Torso
		lhandweld.Part1 = game.Workspace.CloneCharacter["Left Arm"]
		lhandweld.C0 = CFrame.new(-1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1)
		local heed = game.Workspace.CloneCharacter.Torso["Neck"]:Clone()
		local headweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
		headweld.Part0 = game.Workspace.CloneCharacter.Torso
		headweld.Part1 = game.Workspace.CloneCharacter.Head
		headweld.C0 = headweld.C0 * CFrame.new(0,1.5,0)
		game.Workspace.CloneCharacter.Torso.Neck:Remove()
		local bass = Instance.new("Sound", game.Workspace.CloneCharacter.Head)
		bass.SoundId = "rbxassetid://1087356234"
		bass.Volume = 16
		bass:Play()
		for i = 1,14 do
			for i = 0,1 , 0.3 do
				headweld.C0 = headweld.C0:lerp(CFrame.new(0.238277435, 1.38430595, -0.26462841, 0.743157983, 0.206764504, -0.636368334, 1.30437893e-05, 0.951053917, 0.309025198, 0.66911602, -0.229662865, 0.706780493),i)
				lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-2.11354065, 0.72611165, -9.53674316e-06, -0.241926044, 0.970294714, -2.11314546e-05, -0.970294774, -0.241926029, -1.76227277e-05, -2.22114886e-05, 1.6240343e-05, 1),i)
				rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.17133522, 0.705098152, -0.729599953, -0.219563439, 0.706936955, 0.6723333, 0.941907823, -0.0259357486, 0.334868789, 0.25416863, 0.706800878, -0.660174847),i)
				game:GetService("RunService").RenderStepped:wait()
			end
			for i = 0,1 , 0.3 do
				headweld.C0 = headweld.C0:lerp(CFrame.new(0,1.5,0),i)
				lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1),i)
				rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1),i)
				game:GetService("RunService").RenderStepped:wait()
			end
			for i = 0,1 , 0.3 do
				headweld.C0 = headweld.C0:lerp(CFrame.new(0.238277435, 1.38430595, -0.26462841, 0.743157983, 0.206764504, -0.636368334, 1.30437893e-05, 0.951053917, 0.309025198, 0.66911602, -0.229662865, 0.706780493),i)
				lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-2.11354065, 0.72611165, -9.53674316e-06, -0.241926044, 0.970294714, -2.11314546e-05, -0.970294774, -0.241926029, -1.76227277e-05, -2.22114886e-05, 1.6240343e-05, 1),i)
				rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.17133522, 0.705098152, -0.729599953, -0.219563439, 0.706936955, 0.6723333, 0.941907823, -0.0259357486, 0.334868789, 0.25416863, 0.706800878, -0.660174847),i)
				game:GetService("RunService").RenderStepped:wait()
			end
			for i = 0,1 , 0.3 do
				headweld.C0 = headweld.C0:lerp(CFrame.new(0,1.5,0),i)
				lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1),i)
				rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1),i)
				game:GetService("RunService").RenderStepped:wait()
			end
		end
		lhandweld:destroy()
		rhandweld:destroy()
		headweld:destroy()
		heed.Parent = game.Workspace.CloneCharacter.Torso
		lhandclone.Parent = game.Workspace.CloneCharacter.Torso
		rhandclone.Parent = game.Workspace.CloneCharacter.Torso
		using = false
	end
end
mouse.KeyDown:connect(cancer)
function putdurex(key)
	if key == "z" and not using and candur then
		using = true
		candur = false
		--Converted with ttyyuu12345's model to script plugin v4
		function sandbox(var,func)
			local env = getfenv(func)
			local newenv = setmetatable({},{
				__index = function(self,k)
					if k=="script" then
						return var
					else
						return env[k]
					end
				end,
			})
			setfenv(func,newenv)
			return func
		end
		cors = {}
		mas = Instance.new("Model",game:GetService("Lighting"))
		Model0 = Instance.new("Model")
		Part1 = Instance.new("Part")
		Part2 = Instance.new("Part")
		Part3 = Instance.new("Part")
		Weld4 = Instance.new("Weld")
		Weld5 = Instance.new("Weld")
		Weld6 = Instance.new("Weld")
		Weld7 = Instance.new("Weld")
		Weld8 = Instance.new("Weld")
		Weld9 = Instance.new("Weld")
		Weld10 = Instance.new("Weld")
		Weld11 = Instance.new("Weld")
		Weld12 = Instance.new("Weld")
		Weld13 = Instance.new("Weld")
		Weld14 = Instance.new("Weld")
		Weld15 = Instance.new("Weld")
		Weld16 = Instance.new("Weld")
		Weld17 = Instance.new("Weld")
		Weld18 = Instance.new("Weld")
		Weld19 = Instance.new("Weld")
		Weld20 = Instance.new("Weld")
		Weld21 = Instance.new("Weld")
		Weld22 = Instance.new("Weld")
		Weld23 = Instance.new("Weld")
		Weld24 = Instance.new("Weld")
		Weld25 = Instance.new("Weld")
		Weld26 = Instance.new("Weld")
		Weld27 = Instance.new("Weld")
		Weld28 = Instance.new("Weld")
		Weld29 = Instance.new("Weld")
		Weld30 = Instance.new("Weld")
		Weld31 = Instance.new("Weld")
		Weld32 = Instance.new("Weld")
		Weld33 = Instance.new("Weld")
		Weld34 = Instance.new("Weld")
		Weld35 = Instance.new("Weld")
		Weld36 = Instance.new("Weld")
		Weld37 = Instance.new("Weld")
		Weld38 = Instance.new("Weld")
		Weld39 = Instance.new("Weld")
		Weld40 = Instance.new("Weld")
		Weld41 = Instance.new("Weld")
		Weld42 = Instance.new("Weld")
		Weld43 = Instance.new("Weld")
		Weld44 = Instance.new("Weld")
		Weld45 = Instance.new("Weld")
		Weld46 = Instance.new("Weld")
		Weld47 = Instance.new("Weld")
		Weld48 = Instance.new("Weld")
		Weld49 = Instance.new("Weld")
		Weld50 = Instance.new("Weld")
		Weld51 = Instance.new("Weld")
		Weld52 = Instance.new("Weld")
		Weld53 = Instance.new("Weld")
		Weld54 = Instance.new("Weld")
		Part55 = Instance.new("Part")
		Part56 = Instance.new("Part")
		Part57 = Instance.new("Part")
		Part58 = Instance.new("Part")
		Part59 = Instance.new("Part")
		Part60 = Instance.new("Part")
		Part61 = Instance.new("Part")
		Part62 = Instance.new("Part")
		Part63 = Instance.new("Part")
		Part64 = Instance.new("Part")
		Part65 = Instance.new("Part")
		Part66 = Instance.new("Part")
		Part67 = Instance.new("Part")
		Part68 = Instance.new("Part")
		Part69 = Instance.new("Part")
		Part70 = Instance.new("Part")
		Part71 = Instance.new("Part")
		Part72 = Instance.new("Part")
		Part73 = Instance.new("Part")
		Part74 = Instance.new("Part")
		Part75 = Instance.new("Part")
		Part76 = Instance.new("Part")
		Part77 = Instance.new("Part")
		Part78 = Instance.new("Part")
		Part79 = Instance.new("Part")
		Part80 = Instance.new("Part")
		Part81 = Instance.new("Part")
		Part82 = Instance.new("Part")
		Part83 = Instance.new("Part")
		Part84 = Instance.new("Part")
		Part85 = Instance.new("Part")
		Part86 = Instance.new("Part")
		Part87 = Instance.new("Part")
		Part88 = Instance.new("Part")
		Part89 = Instance.new("Part")
		Part90 = Instance.new("Part")
		Part91 = Instance.new("Part")
		Part92 = Instance.new("Part")
		Part93 = Instance.new("Part")
		Part94 = Instance.new("Part")
		Part95 = Instance.new("Part")
		Part96 = Instance.new("Part")
		Part97 = Instance.new("Part")
		Part98 = Instance.new("Part")
		Part99 = Instance.new("Part")
		Part100 = Instance.new("Part")
		Part101 = Instance.new("Part")
		Part102 = Instance.new("Part")
		Part103 = Instance.new("Part")
		SurfaceGui104 = Instance.new("SurfaceGui")
		Frame105 = Instance.new("Frame")
		TextLabel106 = Instance.new("TextLabel")
		Model0.Name = "Itsatrap"
		Model0.Parent = mas
		Part1.Name = "Part11"
		Part1.Parent = Model0
		Part1.Size = Vector3.new(0.239999995, 0.229999945, 2.38999963)
		Part1.CFrame = CFrame.new(8.81010056, 0.113986701, -16.0149269, 1, -6.91378009e-05, 6.88330765e-05, 6.91356545e-05, 1, 3.12162374e-05, -6.88352375e-05, -3.12114789e-05, 1)
		Part1.BottomSurface = Enum.SurfaceType.Smooth
		Part1.TopSurface = Enum.SurfaceType.Smooth
		Part1.Position = Vector3.new(8.81010056, 0.113986701, -16.0149269)
		Part2.Name = "Part22"
		Part2.Parent = Model0
		Part2.Rotation = Vector3.new(0, 90, 0)
		Part2.Size = Vector3.new(0.239999995, 0.229999945, 1.55999959)
		Part2.CFrame = CFrame.new(7.90016842, 0.113953359, -14.9398594, -6.88330765e-05, -6.91378009e-05, 1, -3.12162374e-05, 1, 6.91356545e-05, -1, -3.12114789e-05, -6.88352375e-05)
		Part2.BottomSurface = Enum.SurfaceType.Smooth
		Part2.TopSurface = Enum.SurfaceType.Smooth
		Part2.Position = Vector3.new(7.90016842, 0.113953359, -14.9398594)
		Part2.Orientation = Vector3.new(0, 90, 0)
		Part3.Name = "Part33"
		Part3.Parent = Model0
		Part3.Rotation = Vector3.new(180, 0, 180)
		Part3.Size = Vector3.new(0.239999995, 0.229999945, 2.29999948)
		Part3.CFrame = CFrame.new(7.00009441, 0.123857737, -16.0097961, -1, -6.91378009e-05, -6.88330765e-05, -6.91356545e-05, 1, -3.12162374e-05, 6.88352375e-05, -3.12114789e-05, -1)
		Part3.BottomSurface = Enum.SurfaceType.Smooth
		Part3.TopSurface = Enum.SurfaceType.Smooth
		Part3.Position = Vector3.new(7.00009441, 0.123857737, -16.0097961)
		Part3.Orientation = Vector3.new(0, -180, 0)
		Weld4.Parent = Part3
		Weld4.C0 = CFrame.new(-2.14496326, 0.453607529, 0.00461673737, 0, -1, 0, 0, 0, -1, 1, 0, 0)
		Weld4.Part0 = Part3
		Weld4.Part1 = Part101
		Weld5.Parent = Part3
		Weld5.C0 = CFrame.new(-0.298399925, 0.295003802, 1.07500648, 0, -1, 0, 0, 0, -1, 1, 0, 0)
		Weld5.Part0 = Part3
		Weld5.Part1 = Part60
		Weld6.Parent = Part3
		Weld6.C0 = CFrame.new(-0.078438282, 0.295003802, 0.770341873, 0, -1, 0, 0, 0, -1, 1, 0, 0)
		Weld6.Part0 = Part3
		Weld6.Part1 = Part61
		Weld7.Parent = Part3
		Weld7.C0 = CFrame.new(-0.078438282, 0.295003802, 0.423992157, 0, -1, 0, 0, 0, -1, 1, 0, 0)
		Weld7.Part0 = Part3
		Weld7.Part1 = Part62
		Weld8.Parent = Part3
		Weld8.C0 = CFrame.new(-1.77716732, 0.294999987, -0.0850915909, 1, 0, 0, 0, 0, -1, 0, 1, 0)
		Weld8.Part0 = Part3
		Weld8.Part1 = Part73
		Weld9.Parent = Part3
		Weld9.C0 = CFrame.new(-0.078438282, 0.295003802, 0.00461769104, 0, -1, 0, 0, 0, -1, 1, 0, 0)
		Weld9.Part0 = Part3
		Weld9.Part1 = Part63
		Weld10.Parent = Part3
		Weld10.C0 = CFrame.new(-1.5323267, 0.294999987, -1.03499889, 1, 0, 0, 0, 0, -1, 0, 1, 0)
		Weld10.Part0 = Part3
		Weld10.Part1 = Part70
		Weld11.Parent = Part3
		Weld11.C0 = CFrame.new(-1.81000614, -0.00999601185, 0.00500583649, -1, 0, 0, 0, 1, 0, 0, 0, -1)
		Weld11.Part0 = Part3
		Weld11.Part1 = Part1
		Weld12.Parent = Part3
		Weld12.C0 = CFrame.new(-2.15995693, 1.08908594, 0.0946159363, 0, -1, 0, 0, 0, -1, 1, 0, 0)
		Weld12.Part0 = Part3
		Weld12.Part1 = Part103
		Weld13.Parent = Part3
		Weld13.C0 = CFrame.new(-0.899999619, -0.00999999791, -1.06999874, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		Weld13.Part0 = Part3
		Weld13.Part1 = Part2
		Weld14.Parent = Part3
		Weld14.C0 = CFrame.new(-1.11046886, 0.295003802, 1.07500648, 0, -1, 0, 0, 0, -1, 1, 0, 0)
		Weld14.Part0 = Part3
		Weld14.Part1 = Part58
		Weld15.Parent = Part3
		Weld15.C0 = CFrame.new(-3.55315304, 0.295003802, 1.07500648, 0, -1, 0, 0, 0, -1, 1, 0, 0)
		Weld15.Part0 = Part3
		Weld15.Part1 = Part85
		Weld16.Parent = Part3
		Weld16.C0 = CFrame.new(-2.7410841, 0.295003802, 1.07500648, 0, -1, 0, 0, 0, -1, 1, 0, 0)
		Weld16.Part0 = Part3
		Weld16.Part1 = Part88
		Weld17.Parent = Part3
		Weld17.C0 = CFrame.new(-4.21985149, 0.294999987, 0.751420975, 1, 0, 0, 0, 0, -1, 0, 1, 0)
		Weld17.Part0 = Part3
		Weld17.Part1 = Part80
		Weld18.Parent = Part3
		Weld18.C0 = CFrame.new(-3.34268379, -0.00999999791, -1.06999874, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		Weld18.Part0 = Part3
		Weld18.Part1 = Part86
		Weld19.Parent = Part3
		Weld19.C0 = CFrame.new(-2.52112198, 0.295003802, 0.770341873, 0, -1, 0, 0, 0, -1, 1, 0, 0)
		Weld19.Part0 = Part3
		Weld19.Part1 = Part76
		Weld20.Parent = Part3
		Weld20.C0 = CFrame.new(-2.52112198, 0.295003802, 0.423992157, 0, -1, 0, 0, 0, -1, 1, 0, 0)
		Weld20.Part0 = Part3
		Weld20.Part1 = Part84
		Weld21.Parent = Part3
		Weld21.C0 = CFrame.new(-4.21985149, 0.294999987, -0.0850915909, 1, 0, 0, 0, 0, -1, 0, 1, 0)
		Weld21.Part0 = Part3
		Weld21.Part1 = Part78
		Weld22.Parent = Part3
		Weld22.C0 = CFrame.new(-2.44268417, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Weld22.Part0 = Part3
		Weld22.Part1 = Part92
		Weld23.Parent = Part3
		Weld23.C0 = CFrame.new(-2.52112198, 0.295003802, 0.00461769104, 0, -1, 0, 0, 0, -1, 1, 0, 0)
		Weld23.Part0 = Part3
		Weld23.Part1 = Part77
		Weld24.Parent = Part3
		Weld24.C0 = CFrame.new(-3.97501087, 0.294999987, -1.03499889, 1, 0, 0, 0, 0, -1, 0, 1, 0)
		Weld24.Part0 = Part3
		Weld24.Part1 = Part90
		Weld25.Parent = Part3
		Weld25.C0 = CFrame.new(-4.25269032, -0.00999601185, 0.00500583649, -1, 0, 0, 0, 1, 0, 0, 0, -1)
		Weld25.Part0 = Part3
		Weld25.Part1 = Part79
		Weld26.Parent = Part3
		Weld26.C0 = CFrame.new(-4.00769043, 0.295003802, 1.07500648, 0, -1, 0, 0, 0, -1, 1, 0, 0)
		Weld26.Part0 = Part3
		Weld26.Part1 = Part82
		Weld27.Parent = Part3
		Weld27.C0 = CFrame.new(-4.21985149, 0.294999987, -0.538676262, 1, 0, 0, 0, 0, -1, 0, 1, 0)
		Weld27.Part0 = Part3
		Weld27.Part1 = Part87
		Weld28.Parent = Part3
		Weld28.C0 = CFrame.new(-2.71768379, 0.294999987, -1.03499889, 1, 0, 0, 0, 0, -1, 0, 1, 0)
		Weld28.Part0 = Part3
		Weld28.Part1 = Part91
		Weld29.Parent = Part3
		Weld29.C0 = CFrame.new(-4.21985149, 0.294999987, -0.968995094, 1, 0, 0, 0, 0, -1, 0, 1, 0)
		Weld29.Part0 = Part3
		Weld29.Part1 = Part83
		Weld30.Parent = Part3
		Weld30.C0 = CFrame.new(-3.34268379, -0.00999999791, 1.09500122, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		Weld30.Part0 = Part3
		Weld30.Part1 = Part89
		Weld31.Parent = Part3
		Weld31.C0 = CFrame.new(-3.12551308, 0.295003802, 1.07500648, 0, -1, 0, 0, 0, -1, 1, 0, 0)
		Weld31.Part0 = Part3
		Weld31.Part1 = Part99
		Weld32.Parent = Part3
		Weld32.C0 = CFrame.new(-2.52112198, 0.295003802, -0.347056389, 0, -1, 0, 0, 0, -1, 1, 0, 0)
		Weld32.Part0 = Part3
		Weld32.Part1 = Part93
		Weld33.Parent = Part3
		Weld33.C0 = CFrame.new(-3.55315304, 0.295003802, 1.07500648, 0, -1, 0, 0, 0, -1, 1, 0, 0)
		Weld33.Part0 = Part3
		Weld33.Part1 = Part81
		Weld34.Parent = Part3
		Weld34.C0 = CFrame.new(-2.52112198, 0.295003802, -0.347056389, 0, -1, 0, 0, 0, -1, 1, 0, 0)
		Weld34.Part0 = Part3
		Weld34.Part1 = Part95
		Weld35.Parent = Part3
		Weld35.C0 = CFrame.new(-1.77716732, 0.294999987, 0.751420975, 1, 0, 0, 0, 0, -1, 0, 1, 0)
		Weld35.Part0 = Part3
		Weld35.Part1 = Part75
		Weld36.Parent = Part3
		Weld36.C0 = CFrame.new(-3.60523796, 0.294999987, -1.03499889, 1, 0, 0, 0, 0, -1, 0, 1, 0)
		Weld36.Part0 = Part3
		Weld36.Part1 = Part97
		Weld37.Parent = Part3
		Weld37.C0 = CFrame.new(-2.52112198, 0.295003802, -0.743832588, 0, -1, 0, 0, 0, -1, 1, 0, 0)
		Weld37.Part0 = Part3
		Weld37.Part1 = Part98
		Weld38.Parent = Part3
		Weld38.C0 = CFrame.new(-3.1476841, 0.294999987, -1.03499889, 1, 0, 0, 0, 0, -1, 0, 1, 0)
		Weld38.Part0 = Part3
		Weld38.Part1 = Part94
		Weld39.Parent = Part3
		Weld39.C0 = CFrame.new(-4.21985149, 0.294999987, 0.358469009, 1, 0, 0, 0, 0, -1, 0, 1, 0)
		Weld39.Part0 = Part3
		Weld39.Part1 = Part96
		Weld40.Parent = Part3
		Weld40.C0 = CFrame.new(-2.22612095, 0.0860501826, 0.00461769104, 0, -1, 0, 0, 0, -1, 1, 0, 0)
		Weld40.Part0 = Part3
		Weld40.Part1 = Part100
		Weld41.Parent = Part3
		Weld41.C0 = CFrame.new(-1.11046886, 0.295003802, 1.07500648, 0, -1, 0, 0, 0, -1, 1, 0, 0)
		Weld41.Part0 = Part3
		Weld41.Part1 = Part57
		Weld42.Parent = Part3
		Weld42.C0 = CFrame.new(-1.56500626, 0.295003802, 1.07500648, 0, -1, 0, 0, 0, -1, 1, 0, 0)
		Weld42.Part0 = Part3
		Weld42.Part1 = Part56
		Weld43.Parent = Part3
		Weld43.C0 = CFrame.new(-1.77716732, 0.294999987, -0.538676262, 1, 0, 0, 0, 0, -1, 0, 1, 0)
		Weld43.Part0 = Part3
		Weld43.Part1 = Part72
		Weld44.Parent = Part3
		Weld44.C0 = CFrame.new(-0.274999142, 0.294999987, -1.03499889, 1, 0, 0, 0, 0, -1, 0, 1, 0)
		Weld44.Part0 = Part3
		Weld44.Part1 = Part68
		Weld45.Parent = Part3
		Weld45.C0 = CFrame.new(-1.77716732, 0.294999987, -0.968995094, 1, 0, 0, 0, 0, -1, 0, 1, 0)
		Weld45.Part0 = Part3
		Weld45.Part1 = Part71
		Weld46.Parent = Part3
		Weld46.C0 = CFrame.new(-0.899999619, -0.00999999791, 1.09500122, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		Weld46.Part0 = Part3
		Weld46.Part1 = Part55
		Weld47.Parent = Part3
		Weld47.C0 = CFrame.new(-0.682828426, 0.295003802, 1.07500648, 0, -1, 0, 0, 0, -1, 1, 0, 0)
		Weld47.Part0 = Part3
		Weld47.Part1 = Part59
		Weld48.Parent = Part3
		Weld48.C0 = CFrame.new(-0.078438282, 0.295003802, -0.347056389, 0, -1, 0, 0, 0, -1, 1, 0, 0)
		Weld48.Part0 = Part3
		Weld48.Part1 = Part65
		Weld49.Parent = Part3
		Weld49.C0 = CFrame.new(-0.078438282, 0.295003802, -0.347056389, 0, -1, 0, 0, 0, -1, 1, 0, 0)
		Weld49.Part0 = Part3
		Weld49.Part1 = Part64
		Weld50.Parent = Part3
		Weld50.C0 = CFrame.new(-0.078438282, 0.295003802, -0.743832588, 0, -1, 0, 0, 0, -1, 1, 0, 0)
		Weld50.Part0 = Part3
		Weld50.Part1 = Part66
		Weld51.Parent = Part3
		Weld51.C0 = CFrame.new(-0.704999447, 0.294999987, -1.03499889, 1, 0, 0, 0, 0, -1, 0, 1, 0)
		Weld51.Part0 = Part3
		Weld51.Part1 = Part67
		Weld52.Parent = Part3
		Weld52.C0 = CFrame.new(-1.16255379, 0.294999987, -1.03499889, 1, 0, 0, 0, 0, -1, 0, 1, 0)
		Weld52.Part0 = Part3
		Weld52.Part1 = Part69
		Weld53.Parent = Part3
		Weld53.C0 = CFrame.new(-1.77716732, 0.294999987, 0.358469009, 1, 0, 0, 0, 0, -1, 0, 1, 0)
		Weld53.Part0 = Part3
		Weld53.Part1 = Part74
		Weld54.Parent = Part3
		Weld54.C0 = CFrame.new(-2.15995693, 0.72362113, 0.0946159363, 0, -1, 0, 0, 0, -1, 1, 0, 0)
		Weld54.Part0 = Part3
		Weld54.Part1 = Part102
		Part55.Name = "Part44"
		Part55.Parent = Model0
		Part55.Rotation = Vector3.new(0, 90, 0)
		Part55.Size = Vector3.new(0.290000021, 0.229999945, 1.55999959)
		Part55.CFrame = CFrame.new(7.90001917, 0.113885775, -17.1048584, -6.88330765e-05, -6.91378009e-05, 1, -3.12162374e-05, 1, 6.91356545e-05, -1, -3.12114789e-05, -6.88352375e-05)
		Part55.BottomSurface = Enum.SurfaceType.Smooth
		Part55.TopSurface = Enum.SurfaceType.Smooth
		Part55.Position = Vector3.new(7.90001917, 0.113885775, -17.1048584)
		Part55.Orientation = Vector3.new(0, 90, 0)
		Part56.Name = "Part55"
		Part56.Parent = Model0
		Part56.Rotation = Vector3.new(90, 0, -90)
		Part56.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part56.CFrame = CFrame.new(8.56500626, 0.418936193, -17.084919, -6.88330765e-05, 1, 6.91378009e-05, -3.12162374e-05, 6.91356545e-05, -1, -1, -6.88352375e-05, 3.12114789e-05)
		Part56.BottomSurface = Enum.SurfaceType.Smooth
		Part56.TopSurface = Enum.SurfaceType.Smooth
		Part56.Position = Vector3.new(8.56500626, 0.418936193, -17.084919)
		Part56.Orientation = Vector3.new(90, 90, 0)
		Part57.Name = "Part66"
		Part57.Parent = Model0
		Part57.Rotation = Vector3.new(90, 0, -90)
		Part57.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part57.CFrame = CFrame.new(8.11046886, 0.418904752, -17.0848885, -6.88330765e-05, 1, 6.91378009e-05, -3.12162374e-05, 6.91356545e-05, -1, -1, -6.88352375e-05, 3.12114789e-05)
		Part57.BottomSurface = Enum.SurfaceType.Smooth
		Part57.TopSurface = Enum.SurfaceType.Smooth
		Part57.Position = Vector3.new(8.11046886, 0.418904752, -17.0848885)
		Part57.Orientation = Vector3.new(90, 90, 0)
		Part58.Name = "Part77"
		Part58.Parent = Model0
		Part58.Rotation = Vector3.new(90, 0, -90)
		Part58.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part58.CFrame = CFrame.new(8.11046886, 0.418904752, -17.0848885, -6.88330765e-05, 1, 6.91378009e-05, -3.12162374e-05, 6.91356545e-05, -1, -1, -6.88352375e-05, 3.12114789e-05)
		Part58.BottomSurface = Enum.SurfaceType.Smooth
		Part58.TopSurface = Enum.SurfaceType.Smooth
		Part58.Position = Vector3.new(8.11046886, 0.418904752, -17.0848885)
		Part58.Orientation = Vector3.new(90, 90, 0)
		Part59.Name = "Part88"
		Part59.Parent = Model0
		Part59.Rotation = Vector3.new(90, 0, -90)
		Part59.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part59.CFrame = CFrame.new(7.68282843, 0.418875188, -17.0848579, -6.88330765e-05, 1, 6.91378009e-05, -3.12162374e-05, 6.91356545e-05, -1, -1, -6.88352375e-05, 3.12114789e-05)
		Part59.BottomSurface = Enum.SurfaceType.Smooth
		Part59.TopSurface = Enum.SurfaceType.Smooth
		Part59.Position = Vector3.new(7.68282843, 0.418875188, -17.0848579)
		Part59.Orientation = Vector3.new(90, 90, 0)
		Part60.Name = "Part99"
		Part60.Parent = Model0
		Part60.Rotation = Vector3.new(90, 0, -90)
		Part60.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part60.CFrame = CFrame.new(7.29839993, 0.418848604, -17.0848331, -6.88330765e-05, 1, 6.91378009e-05, -3.12162374e-05, 6.91356545e-05, -1, -1, -6.88352375e-05, 3.12114789e-05)
		Part60.BottomSurface = Enum.SurfaceType.Smooth
		Part60.TopSurface = Enum.SurfaceType.Smooth
		Part60.Position = Vector3.new(7.29839993, 0.418848604, -17.0848331)
		Part60.Orientation = Vector3.new(90, 90, 0)
		Part61.Name = "Part1010"
		Part61.Parent = Model0
		Part61.Rotation = Vector3.new(90, 0, -90)
		Part61.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part61.CFrame = CFrame.new(7.07845926, 0.418842912, -16.7801533, -6.88330765e-05, 1, 6.91378009e-05, -3.12162374e-05, 6.91356545e-05, -1, -1, -6.88352375e-05, 3.12114789e-05)
		Part61.BottomSurface = Enum.SurfaceType.Smooth
		Part61.TopSurface = Enum.SurfaceType.Smooth
		Part61.Position = Vector3.new(7.07845926, 0.418842912, -16.7801533)
		Part61.Orientation = Vector3.new(90, 90, 0)
		Part62.Name = "Part1111"
		Part62.Parent = Model0
		Part62.Rotation = Vector3.new(90, 0, -90)
		Part62.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part62.CFrame = CFrame.new(7.0784831, 0.41885373, -16.4338036, -6.88330765e-05, 1, 6.91378009e-05, -3.12162374e-05, 6.91356545e-05, -1, -1, -6.88352375e-05, 3.12114789e-05)
		Part62.BottomSurface = Enum.SurfaceType.Smooth
		Part62.TopSurface = Enum.SurfaceType.Smooth
		Part62.Position = Vector3.new(7.0784831, 0.41885373, -16.4338036)
		Part62.Orientation = Vector3.new(90, 90, 0)
		Part63.Name = "Part1212"
		Part63.Parent = Model0
		Part63.Rotation = Vector3.new(90, 0, -90)
		Part63.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part63.CFrame = CFrame.new(7.07851219, 0.418866813, -16.0144291, -6.88330765e-05, 1, 6.91378009e-05, -3.12162374e-05, 6.91356545e-05, -1, -1, -6.88352375e-05, 3.12114789e-05)
		Part63.BottomSurface = Enum.SurfaceType.Smooth
		Part63.TopSurface = Enum.SurfaceType.Smooth
		Part63.Position = Vector3.new(7.07851219, 0.418866813, -16.0144291)
		Part63.Orientation = Vector3.new(90, 90, 0)
		Part64.Name = "Part1313"
		Part64.Parent = Model0
		Part64.Rotation = Vector3.new(90, 0, -90)
		Part64.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part64.CFrame = CFrame.new(7.07853603, 0.41887781, -15.6627541, -6.88330765e-05, 1, 6.91378009e-05, -3.12162374e-05, 6.91356545e-05, -1, -1, -6.88352375e-05, 3.12114789e-05)
		Part64.BottomSurface = Enum.SurfaceType.Smooth
		Part64.TopSurface = Enum.SurfaceType.Smooth
		Part64.Position = Vector3.new(7.07853603, 0.41887781, -15.6627541)
		Part64.Orientation = Vector3.new(90, 90, 0)
		Part65.Name = "Part1414"
		Part65.Parent = Model0
		Part65.Rotation = Vector3.new(90, 0, -90)
		Part65.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part65.CFrame = CFrame.new(7.07853603, 0.41887781, -15.6627541, -6.88330765e-05, 1, 6.91378009e-05, -3.12162374e-05, 6.91356545e-05, -1, -1, -6.88352375e-05, 3.12114789e-05)
		Part65.BottomSurface = Enum.SurfaceType.Smooth
		Part65.TopSurface = Enum.SurfaceType.Smooth
		Part65.Position = Vector3.new(7.07853603, 0.41887781, -15.6627541)
		Part65.Orientation = Vector3.new(90, 90, 0)
		Part66.Name = "Part1515"
		Part66.Parent = Model0
		Part66.Rotation = Vector3.new(90, 0, -90)
		Part66.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part66.CFrame = CFrame.new(7.07856369, 0.418890178, -15.2659779, -6.88330765e-05, 1, 6.91378009e-05, -3.12162374e-05, 6.91356545e-05, -1, -1, -6.88352375e-05, 3.12114789e-05)
		Part66.BottomSurface = Enum.SurfaceType.Smooth
		Part66.TopSurface = Enum.SurfaceType.Smooth
		Part66.Position = Vector3.new(7.07856369, 0.418890178, -15.2659779)
		Part66.Orientation = Vector3.new(90, 90, 0)
		Part67.Name = "Part1616"
		Part67.Parent = Model0
		Part67.Rotation = Vector3.new(90, 0, 180)
		Part67.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part67.CFrame = CFrame.new(7.70514488, 0.418938756, -14.9748554, -1, -6.88330765e-05, 6.91378009e-05, -6.91356545e-05, -3.12162374e-05, -1, 6.88352375e-05, -1, 3.12114789e-05)
		Part67.BottomSurface = Enum.SurfaceType.Smooth
		Part67.TopSurface = Enum.SurfaceType.Smooth
		Part67.Position = Vector3.new(7.70514488, 0.418938756, -14.9748554)
		Part67.Orientation = Vector3.new(90, -180, 0)
		Part68.Name = "Part1717"
		Part68.Parent = Model0
		Part68.Rotation = Vector3.new(90, 0, 180)
		Part68.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part68.CFrame = CFrame.new(7.27514458, 0.418909043, -14.9748249, -1, -6.88330765e-05, 6.91378009e-05, -6.91356545e-05, -3.12162374e-05, -1, 6.88352375e-05, -1, 3.12114789e-05)
		Part68.BottomSurface = Enum.SurfaceType.Smooth
		Part68.TopSurface = Enum.SurfaceType.Smooth
		Part68.Position = Vector3.new(7.27514458, 0.418909043, -14.9748249)
		Part68.Orientation = Vector3.new(90, -180, 0)
		Part69.Name = "Part1818"
		Part69.Parent = Model0
		Part69.Rotation = Vector3.new(90, 0, 180)
		Part69.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part69.CFrame = CFrame.new(8.16269875, 0.418970406, -14.9748869, -1, -6.88330765e-05, 6.91378009e-05, -6.91356545e-05, -3.12162374e-05, -1, 6.88352375e-05, -1, 3.12114789e-05)
		Part69.BottomSurface = Enum.SurfaceType.Smooth
		Part69.TopSurface = Enum.SurfaceType.Smooth
		Part69.Position = Vector3.new(8.16269875, 0.418970406, -14.9748869)
		Part69.Orientation = Vector3.new(90, -180, 0)
		Part70.Name = "Part1919"
		Part70.Parent = Model0
		Part70.Rotation = Vector3.new(90, 0, 180)
		Part70.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part70.CFrame = CFrame.new(8.53247166, 0.418995976, -14.9749117, -1, -6.88330765e-05, 6.91378009e-05, -6.91356545e-05, -3.12162374e-05, -1, 6.88352375e-05, -1, 3.12114789e-05)
		Part70.BottomSurface = Enum.SurfaceType.Smooth
		Part70.TopSurface = Enum.SurfaceType.Smooth
		Part70.Position = Vector3.new(8.53247166, 0.418995976, -14.9749117)
		Part70.Orientation = Vector3.new(90, -180, 0)
		Part71.Name = "Part2020"
		Part71.Parent = Model0
		Part71.Rotation = Vector3.new(90, 0, 180)
		Part71.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part71.CFrame = CFrame.new(8.77730846, 0.419010848, -15.0409327, -1, -6.88330765e-05, 6.91378009e-05, -6.91356545e-05, -3.12162374e-05, -1, 6.88352375e-05, -1, 3.12114789e-05)
		Part71.BottomSurface = Enum.SurfaceType.Smooth
		Part71.TopSurface = Enum.SurfaceType.Smooth
		Part71.Position = Vector3.new(8.77730846, 0.419010848, -15.0409327)
		Part71.Orientation = Vector3.new(90, -180, 0)
		Part72.Name = "Part2121"
		Part72.Parent = Model0
		Part72.Rotation = Vector3.new(90, 0, 180)
		Part72.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part72.CFrame = CFrame.new(8.7772789, 0.418997407, -15.4712515, -1, -6.88330765e-05, 6.91378009e-05, -6.91356545e-05, -3.12162374e-05, -1, 6.88352375e-05, -1, 3.12114789e-05)
		Part72.BottomSurface = Enum.SurfaceType.Smooth
		Part72.TopSurface = Enum.SurfaceType.Smooth
		Part72.Position = Vector3.new(8.7772789, 0.418997407, -15.4712515)
		Part72.Orientation = Vector3.new(90, -180, 0)
		Part73.Name = "Part2222"
		Part73.Parent = Model0
		Part73.Rotation = Vector3.new(90, 0, 180)
		Part73.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part73.CFrame = CFrame.new(8.77724743, 0.418983251, -15.9248362, -1, -6.88330765e-05, 6.91378009e-05, -6.91356545e-05, -3.12162374e-05, -1, 6.88352375e-05, -1, 3.12114789e-05)
		Part73.BottomSurface = Enum.SurfaceType.Smooth
		Part73.TopSurface = Enum.SurfaceType.Smooth
		Part73.Position = Vector3.new(8.77724743, 0.418983251, -15.9248362)
		Part73.Orientation = Vector3.new(90, -180, 0)
		Part74.Name = "Part2323"
		Part74.Parent = Model0
		Part74.Rotation = Vector3.new(90, 0, 180)
		Part74.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part74.CFrame = CFrame.new(8.77721691, 0.418969423, -16.3683968, -1, -6.88330765e-05, 6.91378009e-05, -6.91356545e-05, -3.12162374e-05, -1, 6.88352375e-05, -1, 3.12114789e-05)
		Part74.BottomSurface = Enum.SurfaceType.Smooth
		Part74.TopSurface = Enum.SurfaceType.Smooth
		Part74.Position = Vector3.new(8.77721691, 0.418969423, -16.3683968)
		Part74.Orientation = Vector3.new(90, -180, 0)
		Part75.Name = "Part2424"
		Part75.Parent = Model0
		Part75.Rotation = Vector3.new(90, 0, 180)
		Part75.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part75.CFrame = CFrame.new(8.77718925, 0.418957144, -16.7613487, -1, -6.88330765e-05, 6.91378009e-05, -6.91356545e-05, -3.12162374e-05, -1, 6.88352375e-05, -1, 3.12114789e-05)
		Part75.BottomSurface = Enum.SurfaceType.Smooth
		Part75.TopSurface = Enum.SurfaceType.Smooth
		Part75.Position = Vector3.new(8.77718925, 0.418957144, -16.7613487)
		Part75.Orientation = Vector3.new(90, -180, 0)
		Part76.Name = "Part2525"
		Part76.Parent = Model0
		Part76.Rotation = Vector3.new(90, 0, -90)
		Part76.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part76.CFrame = CFrame.new(9.52114296, 0.419011801, -16.7803211, -6.88330765e-05, 1, 6.91378009e-05, -3.12162374e-05, 6.91356545e-05, -1, -1, -6.88352375e-05, 3.12114789e-05)
		Part76.BottomSurface = Enum.SurfaceType.Smooth
		Part76.TopSurface = Enum.SurfaceType.Smooth
		Part76.Position = Vector3.new(9.52114296, 0.419011801, -16.7803211)
		Part76.Orientation = Vector3.new(90, 90, 0)
		Part77.Name = "Part2626"
		Part77.Parent = Model0
		Part77.Rotation = Vector3.new(90, 0, -90)
		Part77.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part77.CFrame = CFrame.new(9.52119541, 0.419035703, -16.0145969, -6.88330765e-05, 1, 6.91378009e-05, -3.12162374e-05, 6.91356545e-05, -1, -1, -6.88352375e-05, 3.12114789e-05)
		Part77.BottomSurface = Enum.SurfaceType.Smooth
		Part77.TopSurface = Enum.SurfaceType.Smooth
		Part77.Position = Vector3.new(9.52119541, 0.419035703, -16.0145969)
		Part77.Orientation = Vector3.new(90, 90, 0)
		Part78.Name = "Part2727"
		Part78.Parent = Model0
		Part78.Rotation = Vector3.new(90, 0, 180)
		Part78.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part78.CFrame = CFrame.new(11.2199306, 0.419152111, -15.925004, -1, -6.88330765e-05, 6.91378009e-05, -6.91356545e-05, -3.12162374e-05, -1, 6.88352375e-05, -1, 3.12114789e-05)
		Part78.BottomSurface = Enum.SurfaceType.Smooth
		Part78.TopSurface = Enum.SurfaceType.Smooth
		Part78.Position = Vector3.new(11.2199306, 0.419152111, -15.925004)
		Part78.Orientation = Vector3.new(90, -180, 0)
		Part79.Name = "Part2828"
		Part79.Parent = Model0
		Part79.Size = Vector3.new(0.239999995, 0.229999945, 2.38999963)
		Part79.CFrame = CFrame.new(11.2527847, 0.114155583, -16.0150948, 1, -6.91378009e-05, 6.88330765e-05, 6.91356545e-05, 1, 3.12162374e-05, -6.88352375e-05, -3.12114789e-05, 1)
		Part79.BottomSurface = Enum.SurfaceType.Smooth
		Part79.TopSurface = Enum.SurfaceType.Smooth
		Part79.Position = Vector3.new(11.2527847, 0.114155583, -16.0150948)
		Part80.Name = "Part2929"
		Part80.Parent = Model0
		Part80.Rotation = Vector3.new(90, 0, 180)
		Part80.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part80.CFrame = CFrame.new(11.2198734, 0.419126004, -16.7615166, -1, -6.88330765e-05, 6.91378009e-05, -6.91356545e-05, -3.12162374e-05, -1, 6.88352375e-05, -1, 3.12114789e-05)
		Part80.BottomSurface = Enum.SurfaceType.Smooth
		Part80.TopSurface = Enum.SurfaceType.Smooth
		Part80.Position = Vector3.new(11.2198734, 0.419126004, -16.7615166)
		Part80.Orientation = Vector3.new(90, -180, 0)
		Part81.Name = "Part3030"
		Part81.Parent = Model0
		Part81.Rotation = Vector3.new(90, 0, -90)
		Part81.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part81.CFrame = CFrame.new(10.553153, 0.419073641, -17.0850563, -6.88330765e-05, 1, 6.91378009e-05, -3.12162374e-05, 6.91356545e-05, -1, -1, -6.88352375e-05, 3.12114789e-05)
		Part81.BottomSurface = Enum.SurfaceType.Smooth
		Part81.TopSurface = Enum.SurfaceType.Smooth
		Part81.Position = Vector3.new(10.553153, 0.419073641, -17.0850563)
		Part81.Orientation = Vector3.new(90, 90, 0)
		Part82.Name = "Part3131"
		Part82.Parent = Model0
		Part82.Rotation = Vector3.new(90, 0, -90)
		Part82.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part82.CFrame = CFrame.new(11.0076904, 0.419105053, -17.0850868, -6.88330765e-05, 1, 6.91378009e-05, -3.12162374e-05, 6.91356545e-05, -1, -1, -6.88352375e-05, 3.12114789e-05)
		Part82.BottomSurface = Enum.SurfaceType.Smooth
		Part82.TopSurface = Enum.SurfaceType.Smooth
		Part82.Position = Vector3.new(11.0076904, 0.419105053, -17.0850868)
		Part82.Orientation = Vector3.new(90, 90, 0)
		Part83.Name = "Part3232"
		Part83.Parent = Model0
		Part83.Rotation = Vector3.new(90, 0, 180)
		Part83.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part83.CFrame = CFrame.new(11.2199917, 0.419179708, -15.0411005, -1, -6.88330765e-05, 6.91378009e-05, -6.91356545e-05, -3.12162374e-05, -1, 6.88352375e-05, -1, 3.12114789e-05)
		Part83.BottomSurface = Enum.SurfaceType.Smooth
		Part83.TopSurface = Enum.SurfaceType.Smooth
		Part83.Position = Vector3.new(11.2199917, 0.419179708, -15.0411005)
		Part83.Orientation = Vector3.new(90, -180, 0)
		Part84.Name = "Part3333"
		Part84.Parent = Model0
		Part84.Rotation = Vector3.new(90, 0, -90)
		Part84.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part84.CFrame = CFrame.new(9.5211668, 0.41902262, -16.4339714, -6.88330765e-05, 1, 6.91378009e-05, -3.12162374e-05, 6.91356545e-05, -1, -1, -6.88352375e-05, 3.12114789e-05)
		Part84.BottomSurface = Enum.SurfaceType.Smooth
		Part84.TopSurface = Enum.SurfaceType.Smooth
		Part84.Position = Vector3.new(9.5211668, 0.41902262, -16.4339714)
		Part84.Orientation = Vector3.new(90, 90, 0)
		Part85.Name = "Part3434"
		Part85.Parent = Model0
		Part85.Rotation = Vector3.new(90, 0, -90)
		Part85.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part85.CFrame = CFrame.new(10.553153, 0.419073641, -17.0850563, -6.88330765e-05, 1, 6.91378009e-05, -3.12162374e-05, 6.91356545e-05, -1, -1, -6.88352375e-05, 3.12114789e-05)
		Part85.BottomSurface = Enum.SurfaceType.Smooth
		Part85.TopSurface = Enum.SurfaceType.Smooth
		Part85.Position = Vector3.new(10.553153, 0.419073641, -17.0850563)
		Part85.Orientation = Vector3.new(90, 90, 0)
		Part86.Name = "Part3535"
		Part86.Parent = Model0
		Part86.Rotation = Vector3.new(0, 90, 0)
		Part86.Size = Vector3.new(0.239999995, 0.229999945, 1.55999959)
		Part86.CFrame = CFrame.new(10.3428526, 0.114122242, -14.9400272, -6.88330765e-05, -6.91378009e-05, 1, -3.12162374e-05, 1, 6.91356545e-05, -1, -3.12114789e-05, -6.88352375e-05)
		Part86.BottomSurface = Enum.SurfaceType.Smooth
		Part86.TopSurface = Enum.SurfaceType.Smooth
		Part86.Position = Vector3.new(10.3428526, 0.114122242, -14.9400272)
		Part86.Orientation = Vector3.new(0, 90, 0)
		Part87.Name = "Part3636"
		Part87.Parent = Model0
		Part87.Rotation = Vector3.new(90, 0, 180)
		Part87.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part87.CFrame = CFrame.new(11.2199631, 0.419166267, -15.4714193, -1, -6.88330765e-05, 6.91378009e-05, -6.91356545e-05, -3.12162374e-05, -1, 6.88352375e-05, -1, 3.12114789e-05)
		Part87.BottomSurface = Enum.SurfaceType.Smooth
		Part87.TopSurface = Enum.SurfaceType.Smooth
		Part87.Position = Vector3.new(11.2199631, 0.419166267, -15.4714193)
		Part87.Orientation = Vector3.new(90, -180, 0)
		Part88.Name = "Part3737"
		Part88.Parent = Model0
		Part88.Rotation = Vector3.new(90, 0, -90)
		Part88.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part88.CFrame = CFrame.new(9.7410841, 0.419017494, -17.085001, -6.88330765e-05, 1, 6.91378009e-05, -3.12162374e-05, 6.91356545e-05, -1, -1, -6.88352375e-05, 3.12114789e-05)
		Part88.BottomSurface = Enum.SurfaceType.Smooth
		Part88.TopSurface = Enum.SurfaceType.Smooth
		Part88.Position = Vector3.new(9.7410841, 0.419017494, -17.085001)
		Part88.Orientation = Vector3.new(90, 90, 0)
		Part89.Name = "Part3838"
		Part89.Parent = Model0
		Part89.Rotation = Vector3.new(0, 90, 0)
		Part89.Size = Vector3.new(0.290000021, 0.229999945, 1.55999959)
		Part89.CFrame = CFrame.new(10.3427038, 0.114054658, -17.1050262, -6.88330765e-05, -6.91378009e-05, 1, -3.12162374e-05, 1, 6.91356545e-05, -1, -3.12114789e-05, -6.88352375e-05)
		Part89.BottomSurface = Enum.SurfaceType.Smooth
		Part89.TopSurface = Enum.SurfaceType.Smooth
		Part89.Position = Vector3.new(10.3427038, 0.114054658, -17.1050262)
		Part89.Orientation = Vector3.new(0, 90, 0)
		Part90.Name = "Part3939"
		Part90.Parent = Model0
		Part90.Rotation = Vector3.new(90, 0, 180)
		Part90.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part90.CFrame = CFrame.new(10.9751558, 0.419164836, -14.9750805, -1, -6.88330765e-05, 6.91378009e-05, -6.91356545e-05, -3.12162374e-05, -1, 6.88352375e-05, -1, 3.12114789e-05)
		Part90.BottomSurface = Enum.SurfaceType.Smooth
		Part90.TopSurface = Enum.SurfaceType.Smooth
		Part90.Position = Vector3.new(10.9751558, 0.419164836, -14.9750805)
		Part90.Orientation = Vector3.new(90, -180, 0)
		Part91.Name = "Part4040"
		Part91.Parent = Model0
		Part91.Rotation = Vector3.new(90, 0, 180)
		Part91.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part91.CFrame = CFrame.new(9.71782875, 0.419077933, -14.9749937, -1, -6.88330765e-05, 6.91378009e-05, -6.91356545e-05, -3.12162374e-05, -1, 6.88352375e-05, -1, 3.12114789e-05)
		Part91.BottomSurface = Enum.SurfaceType.Smooth
		Part91.TopSurface = Enum.SurfaceType.Smooth
		Part91.Position = Vector3.new(9.71782875, 0.419077933, -14.9749937)
		Part91.Orientation = Vector3.new(90, -180, 0)
		Part92.Name = "Part4141"
		Part92.Parent = Model0
		Part92.Rotation = Vector3.new(180, 0, 180)
		Part92.Size = Vector3.new(0.239999995, 0.229999945, 2.29999948)
		Part92.CFrame = CFrame.new(9.44277859, 0.124026611, -16.009964, -1, -6.91378009e-05, -6.88330765e-05, -6.91356545e-05, 1, -3.12162374e-05, 6.88352375e-05, -3.12114789e-05, -1)
		Part92.BottomSurface = Enum.SurfaceType.Smooth
		Part92.TopSurface = Enum.SurfaceType.Smooth
		Part92.Position = Vector3.new(9.44277859, 0.124026611, -16.009964)
		Part92.Orientation = Vector3.new(0, -180, 0)
		Part93.Name = "Part4242"
		Part93.Parent = Model0
		Part93.Rotation = Vector3.new(90, 0, -90)
		Part93.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part93.CFrame = CFrame.new(9.52121925, 0.4190467, -15.6629229, -6.88330765e-05, 1, 6.91378009e-05, -3.12162374e-05, 6.91356545e-05, -1, -1, -6.88352375e-05, 3.12114789e-05)
		Part93.BottomSurface = Enum.SurfaceType.Smooth
		Part93.TopSurface = Enum.SurfaceType.Smooth
		Part93.Position = Vector3.new(9.52121925, 0.4190467, -15.6629229)
		Part93.Orientation = Vector3.new(90, 90, 0)
		Part94.Name = "Part4343"
		Part94.Parent = Model0
		Part94.Rotation = Vector3.new(90, 0, 180)
		Part94.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part94.CFrame = CFrame.new(10.1478291, 0.419107646, -14.9750233, -1, -6.88330765e-05, 6.91378009e-05, -6.91356545e-05, -3.12162374e-05, -1, 6.88352375e-05, -1, 3.12114789e-05)
		Part94.BottomSurface = Enum.SurfaceType.Smooth
		Part94.TopSurface = Enum.SurfaceType.Smooth
		Part94.Position = Vector3.new(10.1478291, 0.419107646, -14.9750233)
		Part94.Orientation = Vector3.new(90, -180, 0)
		Part95.Name = "Part4444"
		Part95.Parent = Model0
		Part95.Rotation = Vector3.new(90, 0, -90)
		Part95.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part95.CFrame = CFrame.new(9.52121925, 0.4190467, -15.6629229, -6.88330765e-05, 1, 6.91378009e-05, -3.12162374e-05, 6.91356545e-05, -1, -1, -6.88352375e-05, 3.12114789e-05)
		Part95.BottomSurface = Enum.SurfaceType.Smooth
		Part95.TopSurface = Enum.SurfaceType.Smooth
		Part95.Position = Vector3.new(9.52121925, 0.4190467, -15.6629229)
		Part95.Orientation = Vector3.new(90, 90, 0)
		Part96.Name = "Part4545"
		Part96.Parent = Model0
		Part96.Rotation = Vector3.new(90, 0, 180)
		Part96.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part96.CFrame = CFrame.new(11.2199001, 0.419138283, -16.3685646, -1, -6.88330765e-05, 6.91378009e-05, -6.91356545e-05, -3.12162374e-05, -1, 6.88352375e-05, -1, 3.12114789e-05)
		Part96.BottomSurface = Enum.SurfaceType.Smooth
		Part96.TopSurface = Enum.SurfaceType.Smooth
		Part96.Position = Vector3.new(11.2199001, 0.419138283, -16.3685646)
		Part96.Orientation = Vector3.new(90, -180, 0)
		Part97.Name = "Part4646"
		Part97.Parent = Model0
		Part97.Rotation = Vector3.new(90, 0, 180)
		Part97.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part97.CFrame = CFrame.new(10.6053829, 0.419139266, -14.9750547, -1, -6.88330765e-05, 6.91378009e-05, -6.91356545e-05, -3.12162374e-05, -1, 6.88352375e-05, -1, 3.12114789e-05)
		Part97.BottomSurface = Enum.SurfaceType.Smooth
		Part97.TopSurface = Enum.SurfaceType.Smooth
		Part97.Position = Vector3.new(10.6053829, 0.419139266, -14.9750547)
		Part97.Orientation = Vector3.new(90, -180, 0)
		Part98.Name = "Part4747"
		Part98.Parent = Model0
		Part98.Rotation = Vector3.new(90, 0, -90)
		Part98.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part98.CFrame = CFrame.new(9.52124691, 0.419059068, -15.2661467, -6.88330765e-05, 1, 6.91378009e-05, -3.12162374e-05, 6.91356545e-05, -1, -1, -6.88352375e-05, 3.12114789e-05)
		Part98.BottomSurface = Enum.SurfaceType.Smooth
		Part98.TopSurface = Enum.SurfaceType.Smooth
		Part98.Position = Vector3.new(9.52124691, 0.419059068, -15.2661467)
		Part98.Orientation = Vector3.new(90, 90, 0)
		Part99.Name = "Part4848"
		Part99.Parent = Model0
		Part99.Rotation = Vector3.new(90, 0, -90)
		Part99.Size = Vector3.new(0.290000021, 0.229999945, 0.379999995)
		Part99.CFrame = CFrame.new(10.1255131, 0.419044077, -17.0850277, -6.88330765e-05, 1, 6.91378009e-05, -3.12162374e-05, 6.91356545e-05, -1, -1, -6.88352375e-05, 3.12114789e-05)
		Part99.BottomSurface = Enum.SurfaceType.Smooth
		Part99.TopSurface = Enum.SurfaceType.Smooth
		Part99.Position = Vector3.new(10.1255131, 0.419044077, -17.0850277)
		Part99.Orientation = Vector3.new(90, 90, 0)
		Part100.Name = "Part4949"
		Part100.Parent = Model0
		Part100.Rotation = Vector3.new(90, 0, -90)
		Part100.Size = Vector3.new(0.290000021, 0.819999933, 0.379999995)
		Part100.CFrame = CFrame.new(9.22620964, 0.210061684, -16.0145702, -6.88330765e-05, 1, 6.91378009e-05, -3.12162374e-05, 6.91356545e-05, -1, -1, -6.88352375e-05, 3.12114789e-05)
		Part100.BottomSurface = Enum.SurfaceType.Smooth
		Part100.TopSurface = Enum.SurfaceType.Smooth
		Part100.Position = Vector3.new(9.22620964, 0.210061684, -16.0145702)
		Part100.Orientation = Vector3.new(90, 90, 0)
		Part101.Name = "Part5050"
		Part101.Parent = Model0
		Part101.Rotation = Vector3.new(90, 0, -90)
		Part101.Size = Vector3.new(0.290000021, 0.409999967, 0.48999992)
		Part101.CFrame = CFrame.new(9.14502621, 0.577613413, -16.0145741, -6.88330765e-05, 1, 6.91378009e-05, -3.12162374e-05, 6.91356545e-05, -1, -1, -6.88352375e-05, 3.12114789e-05)
		Part101.BottomSurface = Enum.SurfaceType.Smooth
		Part101.TopSurface = Enum.SurfaceType.Smooth
		Part101.Position = Vector3.new(9.14502621, 0.577613413, -16.0145741)
		Part101.Orientation = Vector3.new(90, 90, 0)
		Part102.Name = "Part5151"
		Part102.Parent = Model0
		Part102.Rotation = Vector3.new(90, 0, -90)
		Part102.Size = Vector3.new(1.30999982, 1.4799993, 0.0500000007)
		Part102.CFrame = CFrame.new(9.15999508, 0.847625196, -16.1045837, -6.88330765e-05, 1, 6.91378009e-05, -3.12162374e-05, 6.91356545e-05, -1, -1, -6.88352375e-05, 3.12114789e-05)
		Part102.BottomSurface = Enum.SurfaceType.Smooth
		Part102.TopSurface = Enum.SurfaceType.Smooth
		Part102.Position = Vector3.new(9.15999508, 0.847625196, -16.1045837)
		Part102.Orientation = Vector3.new(90, 90, 0)
		Part103.Name = "Part5252"
		Part103.Parent = Model0
		Part103.BrickColor = BrickColor.new("Really blue")
		Part103.Rotation = Vector3.new(90, 0, -90)
		Part103.Size = Vector3.new(1.30999982, 1.4799993, 0.729997277)
		Part103.CFrame = CFrame.new(9.15996933, 1.21309006, -16.1045952, -6.88330765e-05, 1, 6.91378009e-05, -3.12162374e-05, 6.91356545e-05, -1, -1, -6.88352375e-05, 3.12114789e-05)
		Part103.BottomSurface = Enum.SurfaceType.Smooth
		Part103.TopSurface = Enum.SurfaceType.Smooth
		Part103.Color = Color3.new(0, 0.266667, 1)
		Part103.Position = Vector3.new(9.15996933, 1.21309006, -16.1045952)
		Part103.Orientation = Vector3.new(90, 90, 0)
		Part103.Color = Color3.new(0, 0.266667, 1)
		SurfaceGui104.Parent = Part103
		Frame105.Parent = SurfaceGui104
		Frame105.Size = UDim2.new(0, 413, 0, 126)
		Frame105.Position = UDim2.new(0, 209, 0, 250)
		Frame105.BackgroundColor3 = Color3.new(0, 0.0666667, 0.458824)
		TextLabel106.Parent = Frame105
		TextLabel106.Transparency = 1
		TextLabel106.Size = UDim2.new(1, 1, 1, 1)
		TextLabel106.Text = "durex"
		TextLabel106.BackgroundColor3 = Color3.new(1, 1, 1)
		TextLabel106.BackgroundTransparency = 1
		TextLabel106.Font = Enum.Font.SourceSans
		TextLabel106.FontSize = Enum.FontSize.Size96
		TextLabel106.TextColor3 = Color3.new(0.952941, 0.952941, 0.952941)
		TextLabel106.TextScaled = true
		TextLabel106.TextStrokeColor3 = Color3.new(1, 1, 1)
		TextLabel106.TextWrapped = true
		for i,v in pairs(mas:GetChildren()) do
			v.Parent = workspace
			pcall(function() v:MakeJoints() end)
		end
		mas:Destroy()
		for i,v in pairs(cors) do
			spawn(function()
				pcall(v)
			end)
		end
		Part3.CFrame = game.Workspace.CloneCharacter.Torso.CFrame * CFrame.new(0,0,-5) * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
		local wow = Instance.new("Sound", humanoidofplr.Parent.Head)
		wow.SoundId = "rbxassetid://168209314"
		wow:Play()
		wow.Volume = 5
		using = false
		local function hagotemxd(part)
			local humanoid = part.Parent:findFirstChildOfClass("Humanoid")
			if humanoid then
				if humanoid.Parent.Head:findFirstChild("Died") then
					humanoid.Parent.Head.Died.Volume = 10
					humanoid.Parent.Head.Died:Play()
				end
				humanoid.Parent.Head.Anchored = true
				wait(3)
				humanoid.Parent.Head.Anchored = false
			end
		end
		Part103.Touched:connect(hagotemxd)
		wait(5)
		candur = true
	end
end
mouse.KeyDown:connect(putdurex)
function breakitdown(key)
	key = key:lower()
	if key == "r" and not using then
		using = true
		hittd = false
		humanoidofplr.WalkSpeed = 25
		local rhandclone = game.Workspace.CloneCharacter.Torso["Right Shoulder"]:Clone()
		local rhandweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
		rhandweld.Part0 = game.Workspace.CloneCharacter.Torso
		rhandweld.Part1 = game.Workspace.CloneCharacter["Right Arm"]
		rhandweld.C0 = CFrame.new(1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1)
		local lhandclone = game.Workspace.CloneCharacter.Torso["Left Shoulder"]:Clone()
		local lhandweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
		lhandweld.Part0 = game.Workspace.CloneCharacter.Torso
		lhandweld.Part1 = game.Workspace.CloneCharacter["Left Arm"]
		lhandweld.C0 = CFrame.new(-1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1)
		local llegclone = game.Workspace.CloneCharacter.Torso["Left Hip"]:Clone()
		game.Workspace.CloneCharacter.Torso["Left Hip"]:Remove()
		local llegweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
		llegweld.Part0 = game.Workspace.CloneCharacter.Torso
		llegweld.Part1 = game.Workspace.CloneCharacter["Left Leg"]
		llegweld.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0) * CFrame.new(0,-1,0)
		local rlegclone = game.Workspace.CloneCharacter.Torso["Right Hip"]:Clone()
		game.Workspace.CloneCharacter.Torso["Right Hip"]:Remove()
		local rlegweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
		rlegweld.Part0 = game.Workspace.CloneCharacter.Torso
		rlegweld.Part1 = game.Workspace.CloneCharacter["Right Leg"]
		rlegweld.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0) * CFrame.new(0,-1,0)
		local rootjointclone = game.Workspace.CloneCharacter.HumanoidRootPart.RootJoint:Clone()
		game.Workspace.CloneCharacter.HumanoidRootPart.RootJoint:Remove()
		local humanoidrootpart = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
		humanoidrootpart.Part0 = game.Workspace.CloneCharacter.HumanoidRootPart
		humanoidrootpart.Part1 = game.Workspace.CloneCharacter.Torso
		local heed = game.Workspace.CloneCharacter.Torso["Neck"]:Clone()
		local headweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
		headweld.Part0 = game.Workspace.CloneCharacter.Torso
		headweld.Part1 = game.Workspace.CloneCharacter.Head
		headweld.C0 = headweld.C0 * CFrame.new(0,1.5,0)
		game.Workspace.CloneCharacter.Torso.Neck:Remove()
		local sensoryee2 = Instance.new("Part", game.Workspace.CloneCharacter["Right Arm"])
		sensoryee2.Size = Vector3.new(2, 2, 2)
		sensoryee2.CanCollide = false
		sensoryee2.Transparency = 1
		sensoryee2:BreakJoints()
		local weldsensor = Instance.new("Weld", sensoryee2)
		weldsensor.Part0 = sensoryee2
		weldsensor.Part1 = game.Workspace.CloneCharacter["Right Arm"]
		weldsensor.C0 = CFrame.new(0,1,0)
		local doavariable1 = Instance.new("Sound", humanoidofplr.Parent.Head)
		doavariable1.SoundId = "rbxassetid://138152395"
		doavariable1:Play()
		doavariable1.Volume = 5
		local function udidit(part)
			sensoryee2:destroy()
			local humanoid = part.Parent:findFirstChildOfClass("Humanoid")
			if humanoid then
				hittd = true
				humanoidofplr.WalkSpeed = 0
				local doavariable = Instance.new("Sound", humanoidofplr.Parent.Head)
				doavariable.SoundId = "rbxassetid://130791919"
				doavariable:Play()
				doavariable.Volume = 7
				local aaaaaaaaaaaa = Instance.new("Sound", humanoid.Parent.Head)
				aaaaaaaaaaaa.SoundId = "rbxassetid://987502413"
				aaaaaaaaaaaa.Volume = 7
				aaaaaaaaaaaa.EmitterSize = 45
				doavariable1:Stop()
				humanoid.Parent.Torso.CFrame = humanoid.Parent.Torso.CFrame * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
				for i = 1,8 do
					for i = 0,0.8 , 0.055 do
						humanoid.Parent.Torso.CFrame = humanoid.Parent.Torso.CFrame:lerp(humanoidofplr.Parent["Right Leg"].CFrame * CFrame.new(0,-2,0) * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0),i)
						llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.533370972, -0.971249819, -0.439774513, 0.970297515, 0.22100696, 0.0983963758, -0.241920963, 0.886412144, 0.394651204, 1.19328513e-06, -0.406732708, 0.91354841),i)
						rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(1.32126427, -1.83161235, 2.86102295e-06, 0.766053081, -0.642779768, 1.1920929e-07, 0.642779469, 0.766052485, -8.56816769e-08, 3.62461279e-08, -1.42261811e-07, 1.00000107),i)
						lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.92326164, 0.362828255, 0, 0.173659727, 0.984807372, 1.1920929e-07, -0.984806776, 0.173659831, -8.56816769e-08, 1.05081646e-07, 1.02518563e-07, 1.00000107),i)
						rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.94856071, 0.0934052467, 9.53674316e-07, 0.469490677, -0.8829391, 1.1920929e-07, 0.882938683, 0.46949023, -8.56816769e-08, -1.96840375e-08, -1.45481067e-07, 1.00000107),i)
						humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0.65600872, 1.07517529, -0.112188339, -0.327925265, 0.518796742, 0.789512634, 0.102082126, 0.850284696, -0.51633215, -0.939182222, -0.0887248442, -0.331792682):inverse(),i)
						headweld.C0 = headweld.C0:lerp(CFrame.new(-1.90734863e-06, 1.5, 0, -0.0697436929, 1.04308128e-07, -0.997570992, -9.27482589e-08, 1.00000095, -9.80788286e-08, 0.997570515, -8.56816769e-08, -0.0697440952),i)
						game:GetService("RunService").RenderStepped:wait()
					end
					pepsihit:Play()
					for i = 0, 0.5 , 0.055 do
						humanoid.Parent.Torso.CFrame = humanoid.Parent.Torso.CFrame:lerp(humanoidofplr.Parent.Torso.CFrame * CFrame.new(0,8,0) * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0),i)
						game:GetService("RunService").RenderStepped:wait()
					end
					for i = 0,0.8 , 0.055 do
						humanoid.Parent.Torso.CFrame = humanoid.Parent.Torso.CFrame:lerp(humanoidofplr.Parent["Right Leg"].CFrame * CFrame.new(0,-2,0) * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0),i)
						llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.533370972, -0.971249819, -0.439774513, 0.970297515, 0.22100696, 0.0983963758, -0.241920963, 0.886412144, 0.394651204, 1.19328513e-06, -0.406732708, 0.91354841),i)
						rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(1.32126427, -1.83161235, 2.86102295e-06, 0.766053081, -0.642779768, 1.1920929e-07, 0.642779469, 0.766052485, -8.56816769e-08, 3.62461279e-08, -1.42261811e-07, 1.00000107),i)
						lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.92326164, 0.362828255, 0, 0.173659727, 0.984807372, 1.1920929e-07, -0.984806776, 0.173659831, -8.56816769e-08, 1.05081646e-07, 1.02518563e-07, 1.00000107),i)
						rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.94856071, 0.0934052467, 9.53674316e-07, 0.469490677, -0.8829391, 1.1920929e-07, 0.882938683, 0.46949023, -8.56816769e-08, -1.96840375e-08, -1.45481067e-07, 1.00000107),i)
						humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0.612094879, 1.08399725, 0.221855164, 0.0772710443, 0.484065533, -0.87161392, -0.241601631, 0.857262373, 0.454676479, 0.967294872, 0.175449952, 0.183192551):inverse(),i)
						headweld.C0 = headweld.C0:lerp(CFrame.new(-1.90734863e-06, 1.5, 0, -0.0697436929, 1.04308128e-07, -0.997570992, -9.27482589e-08, 1.00000095, -9.80788286e-08, 0.997570515, -8.56816769e-08, -0.0697440952),i)
						game:GetService("RunService").RenderStepped:wait()
					end
					pepsihit:Play()
					for i = 0, 0.5 , 0.05 do
						humanoid.Parent.Torso.CFrame = humanoid.Parent.Torso.CFrame:lerp(humanoidofplr.Parent.Torso.CFrame * CFrame.new(0,8,0) * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0),i)
						game:GetService("RunService").RenderStepped:wait()
					end
				end
				llegweld.C0 = CFrame.new(-0.906621933, -1.96817839, 3.81469727e-06, 0.939697921, 0.342017353, -1.15483999e-07, -0.342018157, 0.939700484, -1.54780309e-06, 4.20854008e-07, -1.4939601e-06, 1.00000584)
				rlegweld.C0 = CFrame.new(1.89274311, -0.858413935, 7.62939453e-06, 0.10452839, -0.994525194, -1.15483999e-07, 0.994527876, 0.104528576, -1.54780309e-06, -1.55139548e-06, -4.69373873e-08, 1.00000584)
				lhandweld.C0 = CFrame.new(-1.78488255, 0.126835346, 0, 0.913546026, 0.406735331, 1.15483552e-07, -0.406735331, 0.913546026, 1.54779377e-06, 5.24042946e-07, -1.46095226e-06, 1)
				rhandweld.C0 = CFrame.new(2.22284222, 0.414411545, 0, -0.406726152, -0.913553655, -1.15483999e-07, 0.913556159, -0.406727403, -1.54780309e-06, -1.36702647e-06, 7.35030596e-07, 1.00000584)
				humanoidrootpart.C0 = CFrame.new(0, 0, 0, 0.0323647447, 0.374601871, -0.926624477, -0.013075971, 0.927188933, 0.374372125, 0.999392211, 5.49364394e-08, 0.0349063426):inverse()
				headweld.C0 = CFrame.new(0, 1.50000882, 0, 0.0349099413, 5.30404058e-08, -0.999393761, -1.5450081e-06, 1.00000596, -1.07041799e-07, 0.999396384, -1.54780309e-06, 0.0349102654)
				aaaaaaaaaaaa:Play()
				pepsihit:Play()
				doavariable:Stop()
				BOOM:Play()
				local woosh = Instance.new("BodyVelocity", humanoid.Parent.Torso)
				woosh.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
				woosh.Velocity = humanoidofplr.Parent.Torso.CFrame.rightVector * 150
				humanoidofplr.WalkSpeed = 25
				wait(0.5)
				humanoidrootpart:destroy()
				rlegweld:destroy()
				llegweld:destroy()
				lhandweld:destroy()
				rhandweld:destroy()
				headweld:destroy()
				heed.Parent = game.Workspace.CloneCharacter.Torso
				rootjointclone.Parent = game.Workspace.CloneCharacter.HumanoidRootPart
				lhandclone.Parent = game.Workspace.CloneCharacter.Torso
				rhandclone.Parent = game.Workspace.CloneCharacter.Torso
				llegclone.Parent = game.Workspace.CloneCharacter.Torso
				rlegclone.Parent = game.Workspace.CloneCharacter.Torso
				using = false
				wait(2)
				woosh:destroy()
			end
		end
		sensoryee2.Touched:connect(udidit)
		for i = 0,1 , 0.05 do
			llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.533370972, -0.971249819, -0.439774513, 0.970297515, 0.22100696, 0.0983963758, -0.241920963, 0.886412144, 0.394651204, 1.19328513e-06, -0.406732708, 0.91354841),i)
			rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(1.32126427, -1.83161235, 2.86102295e-06, 0.766053081, -0.642779768, 1.1920929e-07, 0.642779469, 0.766052485, -8.56816769e-08, 3.62461279e-08, -1.42261811e-07, 1.00000107),i)
			lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.92326164, 0.362828255, 0, 0.173659727, 0.984807372, 1.1920929e-07, -0.984806776, 0.173659831, -8.56816769e-08, 1.05081646e-07, 1.02518563e-07, 1.00000107),i)
			rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.94856071, 0.0934052467, 9.53674316e-07, 0.469490677, -0.8829391, 1.1920929e-07, 0.882938683, 0.46949023, -8.56816769e-08, -1.96840375e-08, -1.45481067e-07, 1.00000107),i)
			humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0.612094879, 1.08399725, 0.221855164, 0.0772710443, 0.484065533, -0.87161392, -0.241601631, 0.857262373, 0.454676479, 0.967294872, 0.175449952, 0.183192551):inverse(),i)
			headweld.C0 = headweld.C0:lerp(CFrame.new(-1.90734863e-06, 1.5, 0, -0.0697436929, 1.04308128e-07, -0.997570992, -9.27482589e-08, 1.00000095, -9.80788286e-08, 0.997570515, -8.56816769e-08, -0.0697440952),i)
			game:GetService("RunService").RenderStepped:wait()
		end
		wait(2)
		if not hittd then
			using = false
			sensoryee2:destroy()
			humanoidofplr.WalkSpeed = 25
			doavariable1:Stop()
			humanoidrootpart:destroy()
			rlegweld:destroy()
			llegweld:destroy()
			lhandweld:destroy()
			rhandweld:destroy()
			headweld:destroy()
			heed.Parent = game.Workspace.CloneCharacter.Torso
			rootjointclone.Parent = game.Workspace.CloneCharacter.HumanoidRootPart
			lhandclone.Parent = game.Workspace.CloneCharacter.Torso
			rhandclone.Parent = game.Workspace.CloneCharacter.Torso
			llegclone.Parent = game.Workspace.CloneCharacter.Torso
			rlegclone.Parent = game.Workspace.CloneCharacter.Torso
		end
	end
end
mouse.KeyDown:connect(breakitdown)
while true do
	if humanoidofplr.Health < 1 then
		humanoidofplr.WalkSpeed = 0
		humanoidofplr.JumpPower = 0
		local AaaAaAAa = Instance.new("Sound", humanoidofplr.Parent.Head)
		AaaAaAAa.SoundId = "rbxassetid://205335029"
		AaaAaAAa:Play()
		AaaAaAAa.Volume = 10
		workspace.CurrentCamera.CameraSubject = humanoidofplr.Parent.Head
		local rhandclone = game.Workspace.CloneCharacter.Torso["Right Shoulder"]:Clone()
		local rhandweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
		rhandweld.Part0 = game.Workspace.CloneCharacter.Torso
		rhandweld.Part1 = game.Workspace.CloneCharacter["Right Arm"]
		rhandweld.C0 = CFrame.new(1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1)
		local lhandclone = game.Workspace.CloneCharacter.Torso["Left Shoulder"]:Clone()
		local lhandweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
		lhandweld.Part0 = game.Workspace.CloneCharacter.Torso
		lhandweld.Part1 = game.Workspace.CloneCharacter["Left Arm"]
		lhandweld.C0 = CFrame.new(-1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1)
		local llegclone = game.Workspace.CloneCharacter.Torso["Left Hip"]:Clone()
		game.Workspace.CloneCharacter.Torso["Left Hip"]:Remove()
		local llegweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
		llegweld.Part0 = game.Workspace.CloneCharacter.Torso
		llegweld.Part1 = game.Workspace.CloneCharacter["Left Leg"]
		llegweld.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0) * CFrame.new(0,-1,0)
		local rlegclone = game.Workspace.CloneCharacter.Torso["Right Hip"]:Clone()
		game.Workspace.CloneCharacter.Torso["Right Hip"]:Remove()
		local rlegweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
		rlegweld.Part0 = game.Workspace.CloneCharacter.Torso
		rlegweld.Part1 = game.Workspace.CloneCharacter["Right Leg"]
		rlegweld.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0) * CFrame.new(0,-1,0)
		local rootjointclone = game.Workspace.CloneCharacter.HumanoidRootPart.RootJoint:Clone()
		game.Workspace.CloneCharacter.HumanoidRootPart.RootJoint:Remove()
		local humanoidrootpart = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
		humanoidrootpart.Part0 = game.Workspace.CloneCharacter.HumanoidRootPart
		humanoidrootpart.Part1 = game.Workspace.CloneCharacter.Torso
		local heed = game.Workspace.CloneCharacter.Torso["Neck"]:Clone()
		local headweld = Instance.new("Weld", game.Workspace.CloneCharacter.Torso)
		headweld.Part0 = game.Workspace.CloneCharacter.Torso
		headweld.Part1 = game.Workspace.CloneCharacter.Head
		headweld.C0 = headweld.C0 * CFrame.new(0,1.5,0)
		game.Workspace.CloneCharacter.Torso.Neck:Remove()
		if humanoidofplr.Parent.Head:findFirstChild("face") then
			humanoidofplr.Parent.Head.face.Texture = "http://www.roblox.com/asset/?id=61517715"
		end
		local dedvel = Instance.new("BodyVelocity", humanoidofplr.Parent.Torso)
		dedvel.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		dedvel.Velocity = humanoidofplr.Parent.Torso.CFrame.lookVector * -20 + Vector3.new(0,25,0)
		for i = 0,0.8 , 0.03 do
			headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 0.207910627, 9.06495843e-26, -0.978150249, 2.5521228e-26, 1, 9.65691966e-26, 0.978150249, -4.58170414e-26, 0.207910627),i)
			humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 9.53674316e-07, -2.53730178, 1, 3.07971317e-27, -7.06819371e-28, 7.06819371e-28, 2.7418323e-06, 1, 3.08256605e-27, -1, 2.74183299e-06):inverse(),i)
			game:GetService("RunService").RenderStepped:wait()
		end
		dedvel:destroy()
		wait(7)
		humanoidofplr.Parent:BreakJoints()
		humanoidofplr.Parent.Head.Died.Volume = 10
		humanoidofplr.Parent.Head.Died:Play()
	end
	wait()
end