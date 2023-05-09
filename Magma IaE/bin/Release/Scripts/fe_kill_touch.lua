-- Don't edit script unless you know what you're doing. If you wanna add this into a script, please give credits and message me on discord that you added it in a script at Cyclically#4905

local LocalPlayer = game:GetService("Players").LocalPlayer
local target = game.Players.LocalPlayer
local torsoname = "Torso"
if LocalPlayer.Character:FindFirstChild("Humanoid").RigType == Enum.HumanoidRigType.R15 then
    torsoname = "UpperTorso"
end
if target.Character ~= nil then
    local savepos = LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
    LocalPlayer.Character:FindFirstChild(torsoname).Anchored = true
    local tool = Instance.new("Tool", LocalPlayer.Backpack)
    local hat = LocalPlayer.Character:FindFirstChildOfClass("Accessory")
    local hathandle = hat.Handle
    hathandle.Parent = tool
    hathandle.Massless = true
    tool.GripPos = Vector3.new(0, 9e99, 0)
    tool.Parent = LocalPlayer.Character
    repeat wait() until LocalPlayer.Character:FindFirstChildOfClass("Tool") ~= nil
    tool.Grip = CFrame.new(Vector3.new(0, 0, 0))
    LocalPlayer.Character:FindFirstChild(torsoname).Anchored = false
    repeat
        LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = target.Character:FindFirstChild("HumanoidRootPart").CFrame
        wait()
    until target.Character == nil 
LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools()
    hathandle.Parent = hat
    hathandle.Massless = false
    tool:Destroy()
end