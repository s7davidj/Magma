local Player = game:GetService("Players").LocalPlayer
repeat wait(.1) until Player.Character
local Character = Player.Character
Character.Archivable = true
local IsInvis = false
local IsRunning = true
local InvisibleCharacter = Character:Clone()
InvisibleCharacter.Parent = game:GetService'Lighting'
local Void = workspace.FallenPartsDestroyHeight
InvisibleCharacter.Name = ""
local CF

Player.CharacterAdded:Connect(function()
    if Player.Character == InvisibleCharacter then return end
    repeat wait(.1) until Player.Character:FindFirstChildWhichIsA'Humanoid'
    if IsRunning == false then
        IsInvis = false
        IsRunning = true
        Character = Player.Character
        Character.Archivable = true
        InvisibleCharacter = Character:Clone()
        InvisibleCharacter.Name = ""
        InvisibleCharacter:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
            Respawn()
        end)
        for i,v in pairs(InvisibleCharacter:GetDescendants())do
            if v:IsA("BasePart") then
                if v.Name == "HumanoidRootPart" then
                    v.Transparency = 1
                else
                    v.Transparency = .5
                end
            end
        end
    end
end)

local Fix = game:GetService("RunService").Stepped:Connect(function()
    pcall(function()
        local IsInteger
        if tostring(Void):find'-' then
            IsInteger = true
        else
            IsInteger = false
        end
        local Pos = Player.Character.HumanoidRootPart.Position
        local Pos_String = tostring(Pos)
        local Pos_Seperate = Pos_String:split(', ')
        local X = tonumber(Pos_Seperate[1])
        local Y = tonumber(Pos_Seperate[2])
        local Z = tonumber(Pos_Seperate[3])
        if IsInteger == true then
            if Y <= Void then
                Respawn()
            end
        elseif IsInteger == false then
            if Y >= Void then
                Respawn()
            end
        end
    end)
end)

for i,v in pairs(InvisibleCharacter:GetDescendants())do
    if v:IsA("BasePart") then
        if v.Name == "HumanoidRootPart" then
            v.Transparency = 1
        else
            v.Transparency = .5
        end
    end
end

Player.Chatted:Connect(function(c)
    if c:lower() == '/e invis' or c:lower() == ';invis' then
        TurnInvisible()
    end
    if c:lower() == '/e vis' or c:lower() == ';vis' then
        TurnVisible()
    end
end)

function Respawn()
    IsRunning = false
    if IsInvis == true then
        pcall(function()
            Player.Character = Character
            wait()
            Character.Parent = workspace
            Character:FindFirstChildWhichIsA'Humanoid':Destroy()
            IsInvis = false
            InvisibleCharacter.Parent = nil
        end)
    elseif IsInvis == false then
        pcall(function()
            Player.Character = Character
            wait()
            Character.Parent = workspace
            Character:FindFirstChildWhichIsA'Humanoid':Destroy()
            IsInvis = false
        end)
    end
end

InvisibleCharacter:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
    Respawn()
end)

function FixCam()
    workspace.CurrentCamera.CameraSubject = Player.Character:FindFirstChildWhichIsA'Humanoid'
    workspace.CurrentCamera.CFrame = CF
end

function freezecam(arg)
    if arg == true then
        workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
    else
        workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
    end
end

function TurnInvisible()
    if IsInvis == true then return end
    IsInvis = true
    CF = workspace.CurrentCamera.CFrame
    local CF_1 = Player.Character.HumanoidRootPart.CFrame
    Character:MoveTo(Vector3.new(0,math.pi*1000000,0))
    freezecam(true)
    wait(.2)
    freezecam(false)
    InvisibleCharacter = InvisibleCharacter
    Character.Parent = game:GetService'Lighting'
    InvisibleCharacter.Parent = workspace
    InvisibleCharacter.HumanoidRootPart.CFrame = CF_1
    Player.Character = InvisibleCharacter
    FixCam()
    Player.Character.Animate.Disabled = true
    Player.Character.Animate.Disabled = false
end

function FixScript()
    --[[Character = nil
    InvisibleCharacter = nil
    if IsInvis == true then
        repeat wait() until IsInvis == false
    end
    if not Player.Character.Head:FindFirstChildWhichIsA("Motor6D") then
        repeat wait() warn('Bruh you\'re dead lol') until Player.Character.Head:FindFirstChildWhichIsA("Motor6D")
        local LCharacter = Player.Character
        LCharacter.Archivable = true
        local LnvisibleCharacter = LCharacter:Clone()
        InvisibleCharacter = LnvisibleCharacter
        InvisibleCharacter.Parent = game:GetService'Lighting'
        for i,v in pairs(InvisibleCharacter:GetDescendants())do
            if v:IsA("BasePart") then
                v.Transparency = .5
            end
        end
    end
    IsRunning = true]]
end

function TurnVisible()
    if IsInvis == false then return end
    CF = workspace.CurrentCamera.CFrame
    Character = Character
    local CF_1 = Player.Character.HumanoidRootPart.CFrame
    Character.HumanoidRootPart.CFrame = CF_1
    InvisibleCharacter.Parent = game:GetService'Lighting'
    Player.Character = Character
    Character.Parent = workspace
    IsInvis = false
    FixCam()
    Player.Character.Animate.Disabled = true
    Player.Character.Animate.Disabled = false
end