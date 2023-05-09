-- Objects

local RobloxianHighschoolGUIv5 = Instance.new("ScreenGui")
local Topframe = Instance.new("Frame")
local Mainframe = Instance.new("Frame")
local AllBodyConfigFrame = Instance.new("Frame")
local AllBodyInputBox = Instance.new("TextBox")
local AllBodyChangeButton = Instance.new("TextButton")
local AllBodyConfigInfo = Instance.new("TextLabel")
local BodyConfigFrame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local BodyChangeButton = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local UpperLegHeightBox = Instance.new("TextBox")
local TextLabel_4 = Instance.new("TextLabel")
local LowerLegHeightBox = Instance.new("TextBox")
local UpperArmHeightBox = Instance.new("TextBox")
local TextLabel_5 = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local UpperTorsoHeightBox = Instance.new("TextBox")
local TextLabel_7 = Instance.new("TextLabel")
local LowerTorsoHeightBox = Instance.new("TextBox")
local LowerArmHeightBox = Instance.new("TextBox")
local HandHeightBox = Instance.new("TextBox")
local TextLabel_8 = Instance.new("TextLabel")
local FootHeightBox = Instance.new("TextBox")
local TextLabel_9 = Instance.new("TextLabel")
local TextLabel_10 = Instance.new("TextLabel")
local TextLabel_11 = Instance.new("TextLabel")
local TextLabel_12 = Instance.new("TextLabel")
local TextLabel_13 = Instance.new("TextLabel")
local TextLabel_14 = Instance.new("TextLabel")
local UpperTorsoWidthBox = Instance.new("TextBox")
local UpperLegWidthBox = Instance.new("TextBox")
local TextLabel_15 = Instance.new("TextLabel")
local TextLabel_16 = Instance.new("TextLabel")
local LowerTorsoWidthBox = Instance.new("TextBox")
local LowerLegWidthBox = Instance.new("TextBox")
local TextLabel_17 = Instance.new("TextLabel")
local TextLabel_18 = Instance.new("TextLabel")
local HandWidthBox = Instance.new("TextBox")
local UpperArmWidthBox = Instance.new("TextBox")
local TextLabel_19 = Instance.new("TextLabel")
local TextLabel_20 = Instance.new("TextLabel")
local LowerArmWidthBox = Instance.new("TextBox")
local FootWidthBox = Instance.new("TextBox")
local HeadScaleBox = Instance.new("TextBox")
local TextLabel_21 = Instance.new("TextLabel")
local TextLabel_22 = Instance.new("TextLabel")
local ExtraStuffFrame = Instance.new("Frame")
local ChatColorFrame = Instance.new("Frame")
local BlackChat = Instance.new("TextButton")
local WhiteChat = Instance.new("TextButton")
local BlueChat = Instance.new("TextButton")
local YellowChat = Instance.new("TextButton")
local RedChat = Instance.new("TextButton")
local GreenChat = Instance.new("TextButton")
local RainbowChat = Instance.new("TextButton")
local WeirdMemeCreature = Instance.new("TextButton")
local Titan = Instance.new("TextButton")
local SlenderMan = Instance.new("TextButton")
local Spongebob = Instance.new("TextButton")
local CrashGame = Instance.new("TextButton")
local TextLabel_23 = Instance.new("TextLabel")
local DeleteGUI = Instance.new("TextButton")
local TextLabel_24 = Instance.new("TextLabel")
local TextLabel_25 = Instance.new("TextLabel")
local ChangeSpeed = Instance.new("TextButton")
local WalkSpeedBox = Instance.new("TextBox")
local JumpPowerBox = Instance.new("TextBox")
local ChangeJumpPower = Instance.new("TextButton")
local TextLabel_26 = Instance.new("TextLabel")
local TextLabel_27 = Instance.new("TextLabel")
local OrangeHorizontal = Instance.new("Frame")
local AllBodyConfigTab = Instance.new("TextButton")
local BodyConfigTab = Instance.new("TextButton")
local OtherTab = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local Creds = Instance.new("TextLabel")

-- Properties

RobloxianHighschoolGUIv5.Name = "RobloxianHighschoolGUIv5"
RobloxianHighschoolGUIv5.Parent = game.CoreGui

Topframe.Name = "Topframe"
Topframe.Parent = RobloxianHighschoolGUIv5
Topframe.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
Topframe.BorderColor3 = Color3.new(0.14902, 0.14902, 0.14902)
Topframe.Position = UDim2.new(0.0815370157, 0, 0.131782979, 0)
Topframe.Size = UDim2.new(0, 345, 0, 16)
Topframe.Active = true
Topframe.Draggable = true

Mainframe.Name = "Mainframe"
Mainframe.Parent = Topframe
Mainframe.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
Mainframe.BorderColor3 = Color3.new(0.14902, 0.14902, 0.14902)
Mainframe.Position = UDim2.new(0, 0, 1, 0)
Mainframe.Size = UDim2.new(0, 345, 0, 258)

AllBodyConfigFrame.Name = "AllBodyConfigFrame"
AllBodyConfigFrame.Parent = Mainframe
AllBodyConfigFrame.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
AllBodyConfigFrame.BorderColor3 = Color3.new(0.14902, 0.14902, 0.14902)
AllBodyConfigFrame.Position = UDim2.new(0, 0, 0.0930232555, 0)
AllBodyConfigFrame.Size = UDim2.new(0, 345, 0, 234)

AllBodyInputBox.Name = "AllBodyInputBox"
AllBodyInputBox.Parent = AllBodyConfigFrame
AllBodyInputBox.BackgroundColor3 = Color3.new(1, 0.564706, 0.0313726)
AllBodyInputBox.BorderColor3 = Color3.new(0, 0, 0)
AllBodyInputBox.Position = UDim2.new(0.0410094634, 0, 0.103092782, 0)
AllBodyInputBox.Size = UDim2.new(0, 131, 0, 18)
AllBodyInputBox.Font = Enum.Font.SourceSans
AllBodyInputBox.Text = "Input"
AllBodyInputBox.TextColor3 = Color3.new(0, 0, 0)
AllBodyInputBox.TextSize = 14

AllBodyChangeButton.Name = "AllBodyChangeButton"
AllBodyChangeButton.Parent = AllBodyConfigFrame
AllBodyChangeButton.BackgroundColor3 = Color3.new(1, 0.47451, 0.0431373)
AllBodyChangeButton.BorderColor3 = Color3.new(0, 0, 0)
AllBodyChangeButton.Position = UDim2.new(0.121985048, 0, 0.266672134, 0)
AllBodyChangeButton.Size = UDim2.new(0, 79, 0, 15)
AllBodyChangeButton.Font = Enum.Font.SourceSans
AllBodyChangeButton.Text = "Change"
AllBodyChangeButton.TextColor3 = Color3.new(0, 0, 0)
AllBodyChangeButton.TextSize = 14
AllBodyChangeButton.MouseButton1Click:Connect(function()
		local OOF =
{
["assets"] =
{
[1] =
{
["drotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["scale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
}
},
[2] =
{
["drotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["scale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
}
},
[3] =
{
["drotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["scale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
}
},
[4] =
{
["drotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["scale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
}
},
[5] =
{
["drotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["scale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
}
}
},
["description"] = "",
["createdDate"] = 1000,
["lowerDesc"] = "",
["scales"] =
{
["LowerLegHeight"] = (AllBodyInputBox.Text),
["UpperTorsoWidth"] = (AllBodyInputBox.Text),
["UpperArmHeight"] = (AllBodyInputBox.Text),
["HandHeight"] = (AllBodyInputBox.Text),
["UpperLegWidth"] = (AllBodyInputBox.Text),
["LowerArmWidth"] = (AllBodyInputBox.Text),
["FootWidth"] = (AllBodyInputBox.Text),
["LowerArmHeight"] = (AllBodyInputBox.Text),
["UpperArmWidth"] = (AllBodyInputBox.Text),
["FootHeight"] = (AllBodyInputBox.Text),
["LowerTorsoWidth"] = (AllBodyInputBox.Text),
["UpperTorsoHeight"] = (AllBodyInputBox.Text),
["HandWidth"] = (AllBodyInputBox.Text),
["HeadScale"] = (AllBodyInputBox.Text),
["UpperLegHeight"] = (AllBodyInputBox.Text),
["LowerTorsoHeight"] = (AllBodyInputBox.Text),
["LowerLegWidth"] = (AllBodyInputBox.Text)
},
["name"] = "",
["outfitId"] = 1,
["isOutfit"] = true,
["collageSeed"] = 0,
["lowerName"] = ""
}
local Event = game:GetService("ReplicatedStorage").AvatarEditor.Remote.CommitCharacterAppearance
Event:FireServer(OOF)
end)

AllBodyConfigInfo.Name = "AllBodyConfigInfo"
AllBodyConfigInfo.Parent = AllBodyConfigFrame
AllBodyConfigInfo.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
AllBodyConfigInfo.BorderColor3 = Color3.new(0, 0, 0)
AllBodyConfigInfo.Position = UDim2.new(0.475362301, 0, 0.0405982919, 0)
AllBodyConfigInfo.Size = UDim2.new(0, 168, 0, 215)
AllBodyConfigInfo.Font = Enum.Font.SourceSans
AllBodyConfigInfo.Text = "This part of the GUI changes every body parts length and width all at the same time. This just makes you a simple titan. Just input a number into the box and then click \"Change\" "
AllBodyConfigInfo.TextColor3 = Color3.new(0, 0, 0)
AllBodyConfigInfo.TextScaled = true
AllBodyConfigInfo.TextSize = 14
AllBodyConfigInfo.TextWrapped = true

BodyConfigFrame.Name = "BodyConfigFrame"
BodyConfigFrame.Parent = Mainframe
BodyConfigFrame.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
BodyConfigFrame.BorderColor3 = Color3.new(0.14902, 0.14902, 0.14902)
BodyConfigFrame.Position = UDim2.new(0, 0, 0.0930232555, 0)
BodyConfigFrame.Size = UDim2.new(0, 345, 0, 234)

TextLabel.Parent = BodyConfigFrame
TextLabel.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
TextLabel.BorderColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.262357444, 0, 0.606030822, 0)
TextLabel.Size = UDim2.new(0, 76, 0, 10)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Foot"
TextLabel.TextColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel.TextSize = 14

BodyChangeButton.Name = "BodyChangeButton"
BodyChangeButton.Parent = BodyConfigFrame
BodyChangeButton.BackgroundColor3 = Color3.new(1, 0.47451, 0.0431373)
BodyChangeButton.BorderColor3 = Color3.new(0, 0, 0)
BodyChangeButton.Position = UDim2.new(0.750724614, 0, 0.820512831, 0)
BodyChangeButton.Size = UDim2.new(0, 76, 0, 22)
BodyChangeButton.Font = Enum.Font.SourceSans
BodyChangeButton.Text = "Change"
BodyChangeButton.TextColor3 = Color3.new(0, 0, 0)
BodyChangeButton.TextSize = 14
BodyChangeButton.MouseButton1Click:Connect(function()
		local OOF =
{
["assets"] =
{
[1] =
{
["drotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["scale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
}
},
[2] =
{
["drotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["scale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
}
},
[3] =
{
["drotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["scale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
}
},
[4] =
{
["drotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["scale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
}
},
[5] =
{
["drotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["scale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
}
}
},
["description"] = "",
["createdDate"] = 1000,
["lowerDesc"] = "",
["scales"] =
{
["LowerLegHeight"] = (LowerLegHeightBox.Text),
["UpperTorsoWidth"] = (UpperTorsoHeightBox.Text),
["UpperArmHeight"] = (UpperArmHeightBox.Text),
["HandHeight"] = (HandHeightBox.Text),
["UpperLegWidth"] = (UpperLegWidthBox.Text),
["LowerArmWidth"] = (LowerArmWidthBox.Text),
["FootWidth"] = (FootWidthBox.Text),
["LowerArmHeight"] = (LowerArmHeightBox.Text),
["UpperArmWidth"] = (UpperArmWidthBox.Text),
["FootHeight"] = (FootHeightBox.Text),
["LowerTorsoWidth"] = (LowerTorsoWidthBox.Text),
["UpperTorsoHeight"] = (UpperTorsoHeightBox.Text),
["HandWidth"] = (HandWidthBox.Text),
["HeadScale"] = (HeadScaleBox.Text),
["UpperLegHeight"] = (UpperLegHeightBox.Text),
["LowerTorsoHeight"] = (LowerTorsoHeightBox.Text),
["LowerLegWidth"] = (LowerLegWidthBox.Text)
},
["name"] = "",
["outfitId"] = 1,
["isOutfit"] = true,
["collageSeed"] = 0,
["lowerName"] = ""
}
local Event = game:GetService("ReplicatedStorage").AvatarEditor.Remote.CommitCharacterAppearance
Event:FireServer(OOF)
end)

TextLabel_2.Parent = BodyConfigFrame
TextLabel_2.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
TextLabel_2.BorderColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_2.Position = UDim2.new(0.0189274456, 0, 0.0306122452, 0)
TextLabel_2.Size = UDim2.new(0, 76, 0, 17)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Height"
TextLabel_2.TextColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_2.TextSize = 14

TextLabel_3.Parent = BodyConfigFrame
TextLabel_3.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
TextLabel_3.BorderColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.0410094634, 0, 0.126591653, 0)
TextLabel_3.Size = UDim2.new(0, 62, 0, 10)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Up Leg"
TextLabel_3.TextColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_3.TextSize = 14
TextLabel_3.TextWrapped = true

UpperLegHeightBox.Name = "UpperLegHeightBox"
UpperLegHeightBox.Parent = BodyConfigFrame
UpperLegHeightBox.BackgroundColor3 = Color3.new(1, 0.564706, 0.0313726)
UpperLegHeightBox.BorderColor3 = Color3.new(0, 0, 0)
UpperLegHeightBox.Position = UDim2.new(0.0223538037, 0, 0.197680861, 0)
UpperLegHeightBox.Size = UDim2.new(0, 76, 0, 15)
UpperLegHeightBox.Font = Enum.Font.SourceSans
UpperLegHeightBox.Text = "Input"
UpperLegHeightBox.TextColor3 = Color3.new(0, 0, 0)
UpperLegHeightBox.TextSize = 14

TextLabel_4.Parent = BodyConfigFrame
TextLabel_4.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
TextLabel_4.BorderColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.0223538037, 0, 0.288308948, 0)
TextLabel_4.Size = UDim2.new(0, 76, 0, 10)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "Low Leg"
TextLabel_4.TextColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_4.TextSize = 14

LowerLegHeightBox.Name = "LowerLegHeightBox"
LowerLegHeightBox.Parent = BodyConfigFrame
LowerLegHeightBox.BackgroundColor3 = Color3.new(1, 0.564706, 0.0313726)
LowerLegHeightBox.BorderColor3 = Color3.new(0, 0, 0)
LowerLegHeightBox.Position = UDim2.new(0.0223538037, 0, 0.353990823, 0)
LowerLegHeightBox.Size = UDim2.new(0, 76, 0, 15)
LowerLegHeightBox.Font = Enum.Font.SourceSans
LowerLegHeightBox.Text = "Input"
LowerLegHeightBox.TextColor3 = Color3.new(0, 0, 0)
LowerLegHeightBox.TextSize = 14

UpperArmHeightBox.Name = "UpperArmHeightBox"
UpperArmHeightBox.Parent = BodyConfigFrame
UpperArmHeightBox.BackgroundColor3 = Color3.new(1, 0.564706, 0.0313726)
UpperArmHeightBox.BorderColor3 = Color3.new(0, 0, 0)
UpperArmHeightBox.Position = UDim2.new(0.0226098262, 0, 0.518825948, 0)
UpperArmHeightBox.Size = UDim2.new(0, 76, 0, 15)
UpperArmHeightBox.Font = Enum.Font.SourceSans
UpperArmHeightBox.Text = "Input"
UpperArmHeightBox.TextColor3 = Color3.new(0, 0, 0)
UpperArmHeightBox.TextSize = 14

TextLabel_5.Parent = BodyConfigFrame
TextLabel_5.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
TextLabel_5.BorderColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_5.Position = UDim2.new(0.264472157, 0, 0.0280612241, 0)
TextLabel_5.Size = UDim2.new(0, 76, 0, 17)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "Height"
TextLabel_5.TextColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_5.TextSize = 14

TextLabel_6.Parent = BodyConfigFrame
TextLabel_6.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
TextLabel_6.BorderColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0.283655703, 0, 0.126591623, 0)
TextLabel_6.Size = UDim2.new(0, 62, 0, 10)
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.Text = "Up Torso"
TextLabel_6.TextColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_6.TextSize = 14
TextLabel_6.TextWrapped = true

UpperTorsoHeightBox.Name = "UpperTorsoHeightBox"
UpperTorsoHeightBox.Parent = BodyConfigFrame
UpperTorsoHeightBox.BackgroundColor3 = Color3.new(1, 0.564706, 0.0313726)
UpperTorsoHeightBox.BorderColor3 = Color3.new(0, 0, 0)
UpperTorsoHeightBox.Position = UDim2.new(0.264157325, 0, 0.197680861, 0)
UpperTorsoHeightBox.Size = UDim2.new(0, 76, 0, 15)
UpperTorsoHeightBox.Font = Enum.Font.SourceSans
UpperTorsoHeightBox.Text = "Input"
UpperTorsoHeightBox.TextColor3 = Color3.new(0, 0, 0)
UpperTorsoHeightBox.TextSize = 14

TextLabel_7.Parent = BodyConfigFrame
TextLabel_7.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
TextLabel_7.BorderColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0.262357444, 0, 0.442896396, 0)
TextLabel_7.Size = UDim2.new(0, 76, 0, 10)
TextLabel_7.Font = Enum.Font.SourceSans
TextLabel_7.Text = "Hand"
TextLabel_7.TextColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_7.TextSize = 14

LowerTorsoHeightBox.Name = "LowerTorsoHeightBox"
LowerTorsoHeightBox.Parent = BodyConfigFrame
LowerTorsoHeightBox.BackgroundColor3 = Color3.new(1, 0.564706, 0.0313726)
LowerTorsoHeightBox.BorderColor3 = Color3.new(0, 0, 0)
LowerTorsoHeightBox.Position = UDim2.new(0.264413357, 0, 0.353990823, 0)
LowerTorsoHeightBox.Size = UDim2.new(0, 76, 0, 15)
LowerTorsoHeightBox.Font = Enum.Font.SourceSans
LowerTorsoHeightBox.Text = "Input"
LowerTorsoHeightBox.TextColor3 = Color3.new(0, 0, 0)
LowerTorsoHeightBox.TextSize = 14

LowerArmHeightBox.Name = "LowerArmHeightBox"
LowerArmHeightBox.Parent = BodyConfigFrame
LowerArmHeightBox.BackgroundColor3 = Color3.new(1, 0.564706, 0.0313726)
LowerArmHeightBox.BorderColor3 = Color3.new(0, 0, 0)
LowerArmHeightBox.Position = UDim2.new(0.0194552522, 0, 0.677686989, 0)
LowerArmHeightBox.Size = UDim2.new(0, 76, 0, 15)
LowerArmHeightBox.Font = Enum.Font.SourceSans
LowerArmHeightBox.Text = "Input"
LowerArmHeightBox.TextColor3 = Color3.new(0, 0, 0)
LowerArmHeightBox.TextSize = 14

HandHeightBox.Name = "HandHeightBox"
HandHeightBox.Parent = BodyConfigFrame
HandHeightBox.BackgroundColor3 = Color3.new(1, 0.564706, 0.0313726)
HandHeightBox.BorderColor3 = Color3.new(0, 0, 0)
HandHeightBox.Position = UDim2.new(0.264669389, 0, 0.518825948, 0)
HandHeightBox.Size = UDim2.new(0, 76, 0, 15)
HandHeightBox.Font = Enum.Font.SourceSans
HandHeightBox.Text = "Input"
HandHeightBox.TextColor3 = Color3.new(0, 0, 0)
HandHeightBox.TextSize = 14

TextLabel_8.Parent = BodyConfigFrame
TextLabel_8.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
TextLabel_8.BorderColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Position = UDim2.new(0.0226098262, 0, 0.606030822, 0)
TextLabel_8.Size = UDim2.new(0, 76, 0, 10)
TextLabel_8.Font = Enum.Font.SourceSans
TextLabel_8.Text = "Low Arm"
TextLabel_8.TextColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_8.TextSize = 14

FootHeightBox.Name = "FootHeightBox"
FootHeightBox.Parent = BodyConfigFrame
FootHeightBox.BackgroundColor3 = Color3.new(1, 0.564706, 0.0313726)
FootHeightBox.BorderColor3 = Color3.new(0, 0, 0)
FootHeightBox.Position = UDim2.new(0.264157325, 0, 0.677686989, 0)
FootHeightBox.Size = UDim2.new(0, 76, 0, 15)
FootHeightBox.Font = Enum.Font.SourceSans
FootHeightBox.Text = "Input"
FootHeightBox.TextColor3 = Color3.new(0, 0, 0)
FootHeightBox.TextSize = 14

TextLabel_9.Parent = BodyConfigFrame
TextLabel_9.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
TextLabel_9.BorderColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_9.BorderSizePixel = 0
TextLabel_9.Position = UDim2.new(0.259202898, 0, 0.288308948, 0)
TextLabel_9.Size = UDim2.new(0, 76, 0, 10)
TextLabel_9.Font = Enum.Font.SourceSans
TextLabel_9.Text = "Low Torso"
TextLabel_9.TextColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_9.TextSize = 14

TextLabel_10.Parent = BodyConfigFrame
TextLabel_10.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
TextLabel_10.BorderColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_10.BorderSizePixel = 0
TextLabel_10.Position = UDim2.new(0.0226098262, 0, 0.442896396, 0)
TextLabel_10.Size = UDim2.new(0, 76, 0, 10)
TextLabel_10.Font = Enum.Font.SourceSans
TextLabel_10.Text = "Up Arm"
TextLabel_10.TextColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_10.TextSize = 14

TextLabel_11.Parent = BodyConfigFrame
TextLabel_11.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
TextLabel_11.BorderColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_11.Position = UDim2.new(0.510016859, 0, 0.0280612241, 0)
TextLabel_11.Size = UDim2.new(0, 76, 0, 17)
TextLabel_11.Font = Enum.Font.SourceSans
TextLabel_11.Text = "Width"
TextLabel_11.TextColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_11.TextSize = 14

TextLabel_12.Parent = BodyConfigFrame
TextLabel_12.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
TextLabel_12.BorderColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_12.Position = UDim2.new(0.750020564, 0, 0.0280612241, 0)
TextLabel_12.Size = UDim2.new(0, 76, 0, 17)
TextLabel_12.Font = Enum.Font.SourceSans
TextLabel_12.Text = "Width"
TextLabel_12.TextColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_12.TextSize = 14

TextLabel_13.Parent = BodyConfigFrame
TextLabel_13.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
TextLabel_13.BorderColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_13.BorderSizePixel = 0
TextLabel_13.Position = UDim2.new(0.527965963, 0, 0.126591653, 0)
TextLabel_13.Size = UDim2.new(0, 62, 0, 10)
TextLabel_13.Font = Enum.Font.SourceSans
TextLabel_13.Text = "Up Leg"
TextLabel_13.TextColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_13.TextSize = 14
TextLabel_13.TextWrapped = true

TextLabel_14.Parent = BodyConfigFrame
TextLabel_14.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
TextLabel_14.BorderColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_14.BorderSizePixel = 0
TextLabel_14.Position = UDim2.new(0.779307783, 0, 0.126591623, 0)
TextLabel_14.Size = UDim2.new(0, 62, 0, 10)
TextLabel_14.Font = Enum.Font.SourceSans
TextLabel_14.Text = "Up Torso"
TextLabel_14.TextColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_14.TextSize = 14
TextLabel_14.TextWrapped = true

UpperTorsoWidthBox.Name = "UpperTorsoWidthBox"
UpperTorsoWidthBox.Parent = BodyConfigFrame
UpperTorsoWidthBox.BackgroundColor3 = Color3.new(1, 0.564706, 0.0313726)
UpperTorsoWidthBox.BorderColor3 = Color3.new(0, 0, 0)
UpperTorsoWidthBox.Position = UDim2.new(0.751113892, 0, 0.197680891, 0)
UpperTorsoWidthBox.Size = UDim2.new(0, 76, 0, 15)
UpperTorsoWidthBox.Font = Enum.Font.SourceSans
UpperTorsoWidthBox.Text = "Input"
UpperTorsoWidthBox.TextColor3 = Color3.new(0, 0, 0)
UpperTorsoWidthBox.TextSize = 14

UpperLegWidthBox.Name = "UpperLegWidthBox"
UpperLegWidthBox.Parent = BodyConfigFrame
UpperLegWidthBox.BackgroundColor3 = Color3.new(1, 0.564706, 0.0313726)
UpperLegWidthBox.BorderColor3 = Color3.new(0, 0, 0)
UpperLegWidthBox.Position = UDim2.new(0.509310305, 0, 0.197680861, 0)
UpperLegWidthBox.Size = UDim2.new(0, 76, 0, 15)
UpperLegWidthBox.Font = Enum.Font.SourceSans
UpperLegWidthBox.Text = "Input"
UpperLegWidthBox.TextColor3 = Color3.new(0, 0, 0)
UpperLegWidthBox.TextSize = 14

TextLabel_15.Parent = BodyConfigFrame
TextLabel_15.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
TextLabel_15.BorderColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_15.BorderSizePixel = 0
TextLabel_15.Position = UDim2.new(0.509310305, 0, 0.288308948, 0)
TextLabel_15.Size = UDim2.new(0, 76, 0, 10)
TextLabel_15.Font = Enum.Font.SourceSans
TextLabel_15.Text = "Low Leg"
TextLabel_15.TextColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_15.TextSize = 14

TextLabel_16.Parent = BodyConfigFrame
TextLabel_16.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
TextLabel_16.BorderColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_16.BorderSizePixel = 0
TextLabel_16.Position = UDim2.new(0.746159434, 0, 0.288308948, 0)
TextLabel_16.Size = UDim2.new(0, 76, 0, 10)
TextLabel_16.Font = Enum.Font.SourceSans
TextLabel_16.Text = "Low Torso"
TextLabel_16.TextColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_16.TextSize = 14

LowerTorsoWidthBox.Name = "LowerTorsoWidthBox"
LowerTorsoWidthBox.Parent = BodyConfigFrame
LowerTorsoWidthBox.BackgroundColor3 = Color3.new(1, 0.564706, 0.0313726)
LowerTorsoWidthBox.BorderColor3 = Color3.new(0, 0, 0)
LowerTorsoWidthBox.Position = UDim2.new(0.751369834, 0, 0.353990823, 0)
LowerTorsoWidthBox.Size = UDim2.new(0, 76, 0, 15)
LowerTorsoWidthBox.Font = Enum.Font.SourceSans
LowerTorsoWidthBox.Text = "Input"
LowerTorsoWidthBox.TextColor3 = Color3.new(0, 0, 0)
LowerTorsoWidthBox.TextSize = 14

LowerLegWidthBox.Name = "LowerLegWidthBox"
LowerLegWidthBox.Parent = BodyConfigFrame
LowerLegWidthBox.BackgroundColor3 = Color3.new(1, 0.564706, 0.0313726)
LowerLegWidthBox.BorderColor3 = Color3.new(0, 0, 0)
LowerLegWidthBox.Position = UDim2.new(0.509310305, 0, 0.353990823, 0)
LowerLegWidthBox.Size = UDim2.new(0, 76, 0, 15)
LowerLegWidthBox.Font = Enum.Font.SourceSans
LowerLegWidthBox.Text = "Input"
LowerLegWidthBox.TextColor3 = Color3.new(0, 0, 0)
LowerLegWidthBox.TextSize = 14

TextLabel_17.Parent = BodyConfigFrame
TextLabel_17.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
TextLabel_17.BorderColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_17.BorderSizePixel = 0
TextLabel_17.Position = UDim2.new(0.509566307, 0, 0.442896396, 0)
TextLabel_17.Size = UDim2.new(0, 76, 0, 10)
TextLabel_17.Font = Enum.Font.SourceSans
TextLabel_17.Text = "Up Arm"
TextLabel_17.TextColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_17.TextSize = 14

TextLabel_18.Parent = BodyConfigFrame
TextLabel_18.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
TextLabel_18.BorderColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_18.BorderSizePixel = 0
TextLabel_18.Position = UDim2.new(0.749313951, 0, 0.442896396, 0)
TextLabel_18.Size = UDim2.new(0, 76, 0, 10)
TextLabel_18.Font = Enum.Font.SourceSans
TextLabel_18.Text = "Hand"
TextLabel_18.TextColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_18.TextSize = 14

HandWidthBox.Name = "HandWidthBox"
HandWidthBox.Parent = BodyConfigFrame
HandWidthBox.BackgroundColor3 = Color3.new(1, 0.564706, 0.0313726)
HandWidthBox.BorderColor3 = Color3.new(0, 0, 0)
HandWidthBox.Position = UDim2.new(0.751625896, 0, 0.518825948, 0)
HandWidthBox.Size = UDim2.new(0, 76, 0, 15)
HandWidthBox.Font = Enum.Font.SourceSans
HandWidthBox.Text = "Input"
HandWidthBox.TextColor3 = Color3.new(0, 0, 0)
HandWidthBox.TextSize = 14

UpperArmWidthBox.Name = "UpperArmWidthBox"
UpperArmWidthBox.Parent = BodyConfigFrame
UpperArmWidthBox.BackgroundColor3 = Color3.new(1, 0.564706, 0.0313726)
UpperArmWidthBox.BorderColor3 = Color3.new(0, 0, 0)
UpperArmWidthBox.Position = UDim2.new(0.509566307, 0, 0.518825948, 0)
UpperArmWidthBox.Size = UDim2.new(0, 76, 0, 15)
UpperArmWidthBox.Font = Enum.Font.SourceSans
UpperArmWidthBox.Text = "Input"
UpperArmWidthBox.TextColor3 = Color3.new(0, 0, 0)
UpperArmWidthBox.TextSize = 14

TextLabel_19.Parent = BodyConfigFrame
TextLabel_19.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
TextLabel_19.BorderColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_19.BorderSizePixel = 0
TextLabel_19.Position = UDim2.new(0.509566307, 0, 0.606030822, 0)
TextLabel_19.Size = UDim2.new(0, 76, 0, 10)
TextLabel_19.Font = Enum.Font.SourceSans
TextLabel_19.Text = "Low Arm"
TextLabel_19.TextColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_19.TextSize = 14

TextLabel_20.Parent = BodyConfigFrame
TextLabel_20.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
TextLabel_20.BorderColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_20.BorderSizePixel = 0
TextLabel_20.Position = UDim2.new(0.749313951, 0, 0.606030822, 0)
TextLabel_20.Size = UDim2.new(0, 76, 0, 10)
TextLabel_20.Font = Enum.Font.SourceSans
TextLabel_20.Text = "Foot"
TextLabel_20.TextColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_20.TextSize = 14

LowerArmWidthBox.Name = "LowerArmWidthBox"
LowerArmWidthBox.Parent = BodyConfigFrame
LowerArmWidthBox.BackgroundColor3 = Color3.new(1, 0.564706, 0.0313726)
LowerArmWidthBox.BorderColor3 = Color3.new(0, 0, 0)
LowerArmWidthBox.Position = UDim2.new(0.506411731, 0, 0.677686989, 0)
LowerArmWidthBox.Size = UDim2.new(0, 76, 0, 15)
LowerArmWidthBox.Font = Enum.Font.SourceSans
LowerArmWidthBox.Text = "Input"
LowerArmWidthBox.TextColor3 = Color3.new(0, 0, 0)
LowerArmWidthBox.TextSize = 14

FootWidthBox.Name = "FootWidthBox"
FootWidthBox.Parent = BodyConfigFrame
FootWidthBox.BackgroundColor3 = Color3.new(1, 0.564706, 0.0313726)
FootWidthBox.BorderColor3 = Color3.new(0, 0, 0)
FootWidthBox.Position = UDim2.new(0.751113832, 0, 0.677686989, 0)
FootWidthBox.Size = UDim2.new(0, 76, 0, 15)
FootWidthBox.Font = Enum.Font.SourceSans
FootWidthBox.Text = "Input"
FootWidthBox.TextColor3 = Color3.new(0, 0, 0)
FootWidthBox.TextSize = 14

HeadScaleBox.Name = "HeadScaleBox"
HeadScaleBox.Parent = BodyConfigFrame
HeadScaleBox.BackgroundColor3 = Color3.new(1, 0.564706, 0.0313726)
HeadScaleBox.BorderColor3 = Color3.new(0, 0, 0)
HeadScaleBox.Position = UDim2.new(0.387571156, 0, 0.84862715, 0)
HeadScaleBox.Size = UDim2.new(0, 76, 0, 15)
HeadScaleBox.Font = Enum.Font.SourceSans
HeadScaleBox.Text = "Input"
HeadScaleBox.TextColor3 = Color3.new(0, 0, 0)
HeadScaleBox.TextSize = 14

TextLabel_21.Parent = BodyConfigFrame
TextLabel_21.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
TextLabel_21.BorderColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_21.BorderSizePixel = 0
TextLabel_21.Position = UDim2.new(0.3884058, 0, 0.777777731, 0)
TextLabel_21.Size = UDim2.new(0, 76, 0, 10)
TextLabel_21.Font = Enum.Font.SourceSans
TextLabel_21.Text = "Head Scale"
TextLabel_21.TextColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_21.TextSize = 14

TextLabel_22.Parent = BodyConfigFrame
TextLabel_22.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
TextLabel_22.BorderSizePixel = 0
TextLabel_22.Position = UDim2.new(0.0202898551, 0, 0.777777791, 0)
TextLabel_22.Size = UDim2.new(0, 119, 0, 46)
TextLabel_22.Font = Enum.Font.SourceSans
TextLabel_22.Text = "'1' is the starting output"
TextLabel_22.TextColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_22.TextSize = 14
TextLabel_22.TextWrapped = true

ExtraStuffFrame.Name = "ExtraStuffFrame"
ExtraStuffFrame.Parent = Mainframe
ExtraStuffFrame.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
ExtraStuffFrame.BorderColor3 = Color3.new(0.14902, 0.14902, 0.14902)
ExtraStuffFrame.Position = UDim2.new(0, 0, 0.0930232704, 0)
ExtraStuffFrame.Size = UDim2.new(0, 345, 0, 234)

ChatColorFrame.Name = "ChatColorFrame"
ChatColorFrame.Parent = ExtraStuffFrame
ChatColorFrame.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
ChatColorFrame.BorderColor3 = Color3.new(1, 0.47451, 0.0431373)
ChatColorFrame.Position = UDim2.new(0.0173913036, 0, 0.055555556, 0)
ChatColorFrame.Size = UDim2.new(0, 125, 0, 158)

BlackChat.Name = "BlackChat"
BlackChat.Parent = ChatColorFrame
BlackChat.BackgroundColor3 = Color3.new(1, 0.47451, 0.0431373)
BlackChat.BorderSizePixel = 0
BlackChat.Position = UDim2.new(0.0480001494, 0, 0.0632911623, 0)
BlackChat.Size = UDim2.new(0, 114, 0, 15)
BlackChat.Font = Enum.Font.SourceSans
BlackChat.Text = "Black Chat"
BlackChat.TextColor3 = Color3.new(0, 0, 0)
BlackChat.TextSize = 14
BlackChat.MouseButton1Click:Connect(function()
	local color = Color3.new(0,0,0) --Color you want here!
local Event = game:GetService("ReplicatedStorage").ClientRequests.UpdateChatColorEvent
Event:FireServer(color)
end)

WhiteChat.Name = "WhiteChat"
WhiteChat.Parent = ChatColorFrame
WhiteChat.BackgroundColor3 = Color3.new(1, 0.47451, 0.0431373)
WhiteChat.BorderSizePixel = 0
WhiteChat.Position = UDim2.new(0.0399999619, 0, 0.197847694, 0)
WhiteChat.Size = UDim2.new(0, 114, 0, 15)
WhiteChat.Font = Enum.Font.SourceSans
WhiteChat.Text = "White Chat"
WhiteChat.TextColor3 = Color3.new(0, 0, 0)
WhiteChat.TextSize = 14
WhiteChat.MouseButton1Click:Connect(function()
	local color = Color3.new(255,255,255) --Color you want here!
local Event = game:GetService("ReplicatedStorage").ClientRequests.UpdateChatColorEvent
Event:FireServer(color)
end)

BlueChat.Name = "BlueChat"
BlueChat.Parent = ChatColorFrame
BlueChat.BackgroundColor3 = Color3.new(1, 0.47451, 0.0431373)
BlueChat.BorderSizePixel = 0
BlueChat.Position = UDim2.new(0.0399998575, 0, 0.325520188, 0)
BlueChat.Size = UDim2.new(0, 114, 0, 15)
BlueChat.Font = Enum.Font.SourceSans
BlueChat.Text = "Blue Chat"
BlueChat.TextColor3 = Color3.new(0, 0, 0)
BlueChat.TextSize = 14
BlueChat.MouseButton1Click:Connect(function()
	local color = Color3.new(0,0,255) --Color you want here!
local Event = game:GetService("ReplicatedStorage").ClientRequests.UpdateChatColorEvent
Event:FireServer(color)
end)

YellowChat.Name = "YellowChat"
YellowChat.Parent = ChatColorFrame
YellowChat.BackgroundColor3 = Color3.new(1, 0.47451, 0.0431373)
YellowChat.BorderSizePixel = 0
YellowChat.Position = UDim2.new(0.0400004387, 0, 0.592840791, 0)
YellowChat.Size = UDim2.new(0, 114, 0, 15)
YellowChat.Font = Enum.Font.SourceSans
YellowChat.Text = "Yellow Chat"
YellowChat.TextColor3 = Color3.new(0, 0, 0)
YellowChat.TextSize = 14
YellowChat.MouseButton1Click:Connect(function()
	local color = Color3.new(255,255,0) --Color you want here!
local Event = game:GetService("ReplicatedStorage").ClientRequests.UpdateChatColorEvent
Event:FireServer(color)
end)

RedChat.Name = "RedChat"
RedChat.Parent = ChatColorFrame
RedChat.BackgroundColor3 = Color3.new(1, 0.47451, 0.0431373)
RedChat.BorderSizePixel = 0
RedChat.Position = UDim2.new(0.0399999619, 0, 0.85856235, 0)
RedChat.Size = UDim2.new(0, 114, 0, 15)
RedChat.Font = Enum.Font.SourceSans
RedChat.Text = "Rainbow Chat"
RedChat.TextColor3 = Color3.new(0, 0, 0)
RedChat.TextSize = 14
RedChat.MouseButton1Click:Connect(function()
while true do
wait()
local r = (math.sin(workspace.DistributedGameTime/2)/2)+0.5
local g = (math.sin(workspace.DistributedGameTime)/2)+0.5
local b = (math.sin(workspace.DistributedGameTime*1.5)/2)+0.5
local color = Color3.new(r, g, b)
local Event = game:GetService("ReplicatedStorage").ClientRequests.UpdateChatColorEvent
Event:FireServer(color)
end
end)

GreenChat.Name = "GreenChat"
GreenChat.Parent = ChatColorFrame
GreenChat.BackgroundColor3 = Color3.new(1, 0.47451, 0.0431373)
GreenChat.BorderSizePixel = 0
GreenChat.Position = UDim2.new(0.0399999619, 0, 0.730614066, 0)
GreenChat.Size = UDim2.new(0, 114, 0, 15)
GreenChat.Font = Enum.Font.SourceSans
GreenChat.Text = "Green Chat"
GreenChat.TextColor3 = Color3.new(0, 0, 0)
GreenChat.TextSize = 14
GreenChat.MouseButton1Click:Connect(function()
	local color = Color3.new(0,255,0) --Color you want here!
local Event = game:GetService("ReplicatedStorage").ClientRequests.UpdateChatColorEvent
Event:FireServer(color)
end)

RainbowChat.Name = "RainbowChat"
RainbowChat.Parent = ChatColorFrame
RainbowChat.BackgroundColor3 = Color3.new(1, 0.47451, 0.0431373)
RainbowChat.BorderSizePixel = 0
RainbowChat.Position = UDim2.new(0.0400009155, 0, 0.464570731, 0)
RainbowChat.Size = UDim2.new(0, 114, 0, 15)
RainbowChat.Font = Enum.Font.SourceSans
RainbowChat.Text = "Red Chat"
RainbowChat.TextColor3 = Color3.new(0, 0, 0)
RainbowChat.TextSize = 14
RainbowChat.MouseButton1Click:Connect(function()
	local color = Color3.new(255,0,0) --Color you want here!
local Event = game:GetService("ReplicatedStorage").ClientRequests.UpdateChatColorEvent
Event:FireServer(color)
end)

WeirdMemeCreature.Name = "WeirdMemeCreature"
WeirdMemeCreature.Parent = ExtraStuffFrame
WeirdMemeCreature.BackgroundColor3 = Color3.new(1, 0.47451, 0.0431373)
WeirdMemeCreature.BorderSizePixel = 0
WeirdMemeCreature.Position = UDim2.new(0.420289844, 0, 0.055555556, 0)
WeirdMemeCreature.Size = UDim2.new(0, 86, 0, 19)
WeirdMemeCreature.Font = Enum.Font.SourceSans
WeirdMemeCreature.Text = "Weird Creature"
WeirdMemeCreature.TextColor3 = Color3.new(0, 0, 0)
WeirdMemeCreature.TextSize = 14
WeirdMemeCreature.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet(('https://hastebin.com/raw/xapitemipo.scala'),true))()
end)

Titan.Name = "Titan"
Titan.Parent = ExtraStuffFrame
Titan.BackgroundColor3 = Color3.new(1, 0.47451, 0.0431373)
Titan.BorderSizePixel = 0
Titan.Position = UDim2.new(0.710144937, 0, 0.055555556, 0)
Titan.Size = UDim2.new(0, 86, 0, 19)
Titan.Font = Enum.Font.SourceSans
Titan.Text = "Baghead Titan"
Titan.TextColor3 = Color3.new(0, 0, 0)
Titan.TextSize = 14
Titan.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet(('https://hastebin.com/raw/ozaloguzex.scala'),true))()
end)

SlenderMan.Name = "SlenderMan"
SlenderMan.Parent = ExtraStuffFrame
SlenderMan.BackgroundColor3 = Color3.new(1, 0.47451, 0.0431373)
SlenderMan.BorderSizePixel = 0
SlenderMan.Position = UDim2.new(0.710144937, 0, 0.162393168, 0)
SlenderMan.Size = UDim2.new(0, 86, 0, 19)
SlenderMan.Font = Enum.Font.SourceSans
SlenderMan.Text = "Slender Man"
SlenderMan.TextColor3 = Color3.new(0, 0, 0)
SlenderMan.TextSize = 14
SlenderMan.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet(('https://hastebin.com/raw/evujulanuj.bash'),true))()
end)

Spongebob.Name = "Spongebob"
Spongebob.Parent = ExtraStuffFrame
Spongebob.BackgroundColor3 = Color3.new(1, 0.47451, 0.0431373)
Spongebob.BorderSizePixel = 0
Spongebob.Position = UDim2.new(0.420289844, 0, 0.162393168, 0)
Spongebob.Size = UDim2.new(0, 86, 0, 19)
Spongebob.Font = Enum.Font.SourceSans
Spongebob.Text = "Spongebob"
Spongebob.TextColor3 = Color3.new(0, 0, 0)
Spongebob.TextSize = 14
Spongebob.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet(('https://pastebin.com/raw/giZvjxVj'),true))()
end)

CrashGame.Name = "CrashGame"
CrashGame.Parent = ExtraStuffFrame
CrashGame.BackgroundColor3 = Color3.new(1, 0.47451, 0.0431373)
CrashGame.BorderSizePixel = 0
CrashGame.Position = UDim2.new(0.420289844, 0, 0.380341887, 0)
CrashGame.Size = UDim2.new(0, 186, 0, 19)
CrashGame.Font = Enum.Font.SourceSans
CrashGame.Text = "Crash The Game"
CrashGame.TextColor3 = Color3.new(0, 0, 0)
CrashGame.TextSize = 14
CrashGame.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet(('https://hastebin.com/raw/abesoqiwek.scala'),true))()
end)

TextLabel_23.Parent = ExtraStuffFrame
TextLabel_23.BackgroundColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_23.BorderSizePixel = 0
TextLabel_23.Position = UDim2.new(0.379710138, 0, 0.337606847, 0)
TextLabel_23.Size = UDim2.new(0, 214, 0, 3)
TextLabel_23.Font = Enum.Font.SourceSans
TextLabel_23.Text = ""
TextLabel_23.TextSize = 14

DeleteGUI.Name = "DeleteGUI"
DeleteGUI.Parent = ExtraStuffFrame
DeleteGUI.BackgroundColor3 = Color3.new(1, 0.47451, 0.0431373)
DeleteGUI.BorderSizePixel = 0
DeleteGUI.Position = UDim2.new(0.420289844, 0, 0.504498422, 0)
DeleteGUI.Size = UDim2.new(0, 186, 0, 19)
DeleteGUI.Font = Enum.Font.SourceSans
DeleteGUI.Text = "Delete GUI"
DeleteGUI.TextColor3 = Color3.new(0, 0, 0)
DeleteGUI.TextSize = 14
DeleteGUI.MouseButton1Click:Connect(function()
	RobloxianHighschoolGUIv5:Remove()
end)

TextLabel_24.Parent = ExtraStuffFrame
TextLabel_24.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
TextLabel_24.BorderSizePixel = 0
TextLabel_24.Position = UDim2.new(0.014492752, 0, 0.754273474, 0)
TextLabel_24.Size = UDim2.new(0, 125, 0, 48)
TextLabel_24.Font = Enum.Font.SourceSans
TextLabel_24.Text = "Press \"Ctrl\" to toggle the visibility of the GUI"
TextLabel_24.TextColor3 = Color3.new(0.996078, 0.470588, 0.0431373)
TextLabel_24.TextScaled = true
TextLabel_24.TextSize = 14
TextLabel_24.TextWrapped = true

TextLabel_25.Parent = ExtraStuffFrame
TextLabel_25.BackgroundColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_25.BorderColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_25.BorderSizePixel = 0
TextLabel_25.Position = UDim2.new(0.379710138, 0, 0.619658113, 0)
TextLabel_25.Size = UDim2.new(0, 214, 0, 3)
TextLabel_25.Font = Enum.Font.SourceSans
TextLabel_25.Text = ""
TextLabel_25.TextSize = 14

ChangeSpeed.Name = "ChangeSpeed"
ChangeSpeed.Parent = ExtraStuffFrame
ChangeSpeed.BackgroundColor3 = Color3.new(1, 0.47451, 0.0431373)
ChangeSpeed.BorderColor3 = Color3.new(0, 0, 0)
ChangeSpeed.Position = UDim2.new(0.420289844, 0, 0.844017029, 0)
ChangeSpeed.Size = UDim2.new(0, 86, 0, 19)
ChangeSpeed.Font = Enum.Font.SourceSans
ChangeSpeed.Text = "Change"
ChangeSpeed.TextColor3 = Color3.new(0, 0, 0)
ChangeSpeed.TextSize = 14
ChangeSpeed.MouseButton1Click:Connect(function()
	game:GetService'Players'.LocalPlayer.Character.Humanoid.WalkSpeed = (WalkSpeedBox.Text)
end)

WalkSpeedBox.Name = "WalkSpeedBox"
WalkSpeedBox.Parent = ExtraStuffFrame
WalkSpeedBox.BackgroundColor3 = Color3.new(1, 0.564706, 0.0313726)
WalkSpeedBox.BorderSizePixel = 0
WalkSpeedBox.Position = UDim2.new(0.420289844, 0, 0.72863245, 0)
WalkSpeedBox.Size = UDim2.new(0, 86, 0, 16)
WalkSpeedBox.Font = Enum.Font.SourceSans
WalkSpeedBox.Text = "Input"
WalkSpeedBox.TextColor3 = Color3.new(0, 0, 0)
WalkSpeedBox.TextSize = 14

JumpPowerBox.Name = "JumpPowerBox"
JumpPowerBox.Parent = ExtraStuffFrame
JumpPowerBox.BackgroundColor3 = Color3.new(1, 0.564706, 0.0313726)
JumpPowerBox.BorderSizePixel = 0
JumpPowerBox.Position = UDim2.new(0.710144877, 0, 0.72863245, 0)
JumpPowerBox.Size = UDim2.new(0, 86, 0, 16)
JumpPowerBox.Font = Enum.Font.SourceSans
JumpPowerBox.Text = "Input"
JumpPowerBox.TextColor3 = Color3.new(0, 0, 0)
JumpPowerBox.TextSize = 14

ChangeJumpPower.Name = "ChangeJumpPower"
ChangeJumpPower.Parent = ExtraStuffFrame
ChangeJumpPower.BackgroundColor3 = Color3.new(1, 0.47451, 0.0431373)
ChangeJumpPower.BorderColor3 = Color3.new(0, 0, 0)
ChangeJumpPower.Position = UDim2.new(0.710144877, 0, 0.844017029, 0)
ChangeJumpPower.Size = UDim2.new(0, 86, 0, 19)
ChangeJumpPower.Font = Enum.Font.SourceSans
ChangeJumpPower.Text = "Change"
ChangeJumpPower.TextColor3 = Color3.new(0, 0, 0)
ChangeJumpPower.TextSize = 14
ChangeJumpPower.TextWrapped = true
ChangeJumpPower.MouseButton1Click:Connect(function()
	game:GetService'Players'.LocalPlayer.Character.Humanoid.JumpPower = (JumpPowerBox.Text)
end)

TextLabel_26.Parent = ExtraStuffFrame
TextLabel_26.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
TextLabel_26.BorderColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_26.Position = UDim2.new(0.420289844, 0, 0.632478654, 0)
TextLabel_26.Size = UDim2.new(0, 86, 0, 16)
TextLabel_26.Font = Enum.Font.SourceSans
TextLabel_26.Text = "Walk Speed"
TextLabel_26.TextColor3 = Color3.new(0.996078, 0.470588, 0.0431373)
TextLabel_26.TextSize = 14
TextLabel_26.TextWrapped = true

TextLabel_27.Parent = ExtraStuffFrame
TextLabel_27.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
TextLabel_27.BorderColor3 = Color3.new(1, 0.47451, 0.0431373)
TextLabel_27.Position = UDim2.new(0.710144877, 0, 0.632478654, 0)
TextLabel_27.Size = UDim2.new(0, 86, 0, 16)
TextLabel_27.Font = Enum.Font.SourceSans
TextLabel_27.Text = "Jump Power"
TextLabel_27.TextColor3 = Color3.new(0.996078, 0.470588, 0.0431373)
TextLabel_27.TextSize = 14
TextLabel_27.TextWrapped = true

OrangeHorizontal.Name = "OrangeHorizontal"
OrangeHorizontal.Parent = Topframe
OrangeHorizontal.BackgroundColor3 = Color3.new(1, 0.47451, 0.0431373)
OrangeHorizontal.BorderColor3 = Color3.new(1, 0.47451, 0.0431373)
OrangeHorizontal.Position = UDim2.new(0, 0, 1, 0)
OrangeHorizontal.Size = UDim2.new(0, 345, 0, 8)

AllBodyConfigTab.Name = "AllBodyConfigTab"
AllBodyConfigTab.Parent = OrangeHorizontal
AllBodyConfigTab.BackgroundColor3 = Color3.new(1, 0.47451, 0.0431373)
AllBodyConfigTab.BorderColor3 = Color3.new(0.14902, 0.14902, 0.14902)
AllBodyConfigTab.Position = UDim2.new(0, 0, 1, 0)
AllBodyConfigTab.Size = UDim2.new(0, 114, 0, 16)
AllBodyConfigTab.Font = Enum.Font.SourceSans
AllBodyConfigTab.Text = "All Body Config"
AllBodyConfigTab.TextColor3 = Color3.new(0, 0, 0)
AllBodyConfigTab.TextSize = 14
AllBodyConfigTab.TextWrapped = true

AllBodyConfigTab.MouseButton1Click:Connect(function()
	AllBodyConfigFrame.Visible = true
	BodyConfigFrame.Visible = false
	ExtraStuffFrame.Visible = false
end)

BodyConfigTab.Name = "BodyConfigTab"
BodyConfigTab.Parent = OrangeHorizontal
BodyConfigTab.BackgroundColor3 = Color3.new(1, 0.47451, 0.0431373)
BodyConfigTab.BorderColor3 = Color3.new(0.14902, 0.14902, 0.14902)
BodyConfigTab.Position = UDim2.new(0.330434769, 0, 1, 0)
BodyConfigTab.Size = UDim2.new(0, 117, 0, 16)
BodyConfigTab.Font = Enum.Font.SourceSans
BodyConfigTab.Text = "Body Config"
BodyConfigTab.TextColor3 = Color3.new(0, 0, 0)
BodyConfigTab.TextSize = 14
BodyConfigTab.TextWrapped = true

BodyConfigTab.MouseButton1Click:Connect(function()
	BodyConfigFrame.Visible = true
	AllBodyConfigFrame.Visible = false
	ExtraStuffFrame.Visible = false
end)

OtherTab.Name = "OtherTab"
OtherTab.Parent = OrangeHorizontal
OtherTab.BackgroundColor3 = Color3.new(1, 0.47451, 0.0431373)
OtherTab.BorderColor3 = Color3.new(0.14902, 0.14902, 0.14902)
OtherTab.Position = UDim2.new(0.669565201, 0, 1, 0)
OtherTab.Size = UDim2.new(0, 114, 0, 16)
OtherTab.Font = Enum.Font.SourceSans
OtherTab.Text = "Extra Stuff"
OtherTab.TextColor3 = Color3.new(0, 0, 0)
OtherTab.TextSize = 14
OtherTab.TextWrapped = true

OtherTab.MouseButton1Click:Connect(function()
	ExtraStuffFrame.Visible = true
	BodyConfigFrame.Visible = false
	AllBodyConfigFrame.Visible = false
end)


Title.Name = "Title"
Title.Parent = Topframe
Title.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
Title.BorderColor3 = Color3.new(0, 0, 0)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 101, 0, 11)
Title.Font = Enum.Font.SourceSans
Title.Text = "Robloxian Morpher"
Title.TextColor3 = Color3.new(1, 0.47451, 0.0431373)
Title.TextSize = 14

Creds.Name = "Creds"
Creds.Parent = Topframe
Creds.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
Creds.BorderColor3 = Color3.new(0, 0, 0)
Creds.BorderSizePixel = 0
Creds.Position = UDim2.new(0.797608674, 0, -0.09375, 0)
Creds.Size = UDim2.new(0, 70, 0, 12)
Creds.Font = Enum.Font.SourceSans
Creds.Text = "Psykek#3180"
Creds.TextColor3 = Color3.new(1, 0.47451, 0.0431373)
Creds.TextSize = 14

function onKeyPress(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.LeftControl then
		    if Topframe.Visible == false then
        Topframe.Visible = true
    else
        Topframe.Visible = false
    end
	end
end
 
game:GetService("UserInputService").InputBegan:connect(onKeyPress)