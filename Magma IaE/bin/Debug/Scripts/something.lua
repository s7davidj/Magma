local DoorsEnabled = false
local toggledoor = false
local UnhappyCustomers = false
local togglecustom = false
local BoxEnabled = false
local togglebox = false
local ParanoiaEnabled = false
local togglepara = false
local PlayerService = game:GetService("Players")
function spookcontroller()
    while wait() do
        if ParanoiaEnabled == true then
            local x = workspace.Houses:GetDescendants()
            for _,v in pairs(x) do
                if v.Name == "FrontDoor" then
                    v.ClickDetector.Detector:FireServer()
                    wait(math.random(1,5)/10)
                end
            end
            local x = workspace.Cars:GetChildren()
            for _,v in pairs(x) do
                if v.Hood2 then
                    v.Hood2.ClickDetector.Detector:FireServer()
                    wait()
                end
            end
            local x = workspace:GetChildren()
            for _,v in pairs(x) do
                if v.Name == "Gate" then
                    if v.ClickDetector then
                        v.ClickDetector.Detector:FireServer()
                        wait()
                    end
                end
            end
            local x = PlayerService:GetPlayers()
            for _,v in pairs(x) do
                if v.Character ~= nil then
                    workspace.Main.ChangeFace:FireServer(v.Character.Head.face, "rbxassetid://76690153")
                    wait(.1)
                end
            end
        end
    end
end
local spookthread = coroutine.create(spookcontroller)
coroutine.resume(spookthread)
function doorcontroller()
    while wait() do
        if DoorsEnabled == true then   
                local x = workspace.Ovens:GetChildren()
            for _,v in pairs(x) do
                    wait(math.random(1,3)/10)
                    v.Door.ClickDetector.Detector:FireServer()
            end
        end
    end
end
local doorthread = coroutine.create(doorcontroller)
coroutine.resume(doorthread)
function boxcontroller()
    while wait(.1) do
        if BoxEnabled == true then
            if workspace.AllBox:FindFirstChild("BoxOpen") then
                workspace.GameService.CloseBox:FireServer(workspace.AllBox:FindFirstChild("BoxOpen"))
            end
        end
    end
end
local boxthread = coroutine.create(boxcontroller)
coroutine.resume(boxthread)
function HandleCustomer(obj)
    while wait(math.random(1,10)/10) do
        if obj then
            if UnhappyCustomers == true then
                workspace.GameService.OrderCompleted:FireServer(obj, true, workspace.Register1)
            end
        else
            break
        end
    end
end
workspace.Customers.ChildAdded:connect(function(v)
    local CustomerThread = coroutine.create(HandleCustomer)
    coroutine.resume(CustomerThread,v)
end)
 
local scr = Instance.new("ScreenGui")
local fr = Instance.new("Frame")
fr.Draggable = true
fr.Active = true
fr.Size = UDim2.new(.3,0,.3,0)
fr.BackgroundColor3 = Color3.new(.2,.2,.2)
fr.Parent = scr
local title = Instance.new("TextLabel")
title.BackgroundTransparency = 1
title.TextScaled = true
title.Size = UDim2.new(1,0,.1,0)
title.TextColor3 = Color3.new(1,1,1)
title.TextTransparency = .6
title.Font = 4
title.Text = "Haunted Pizza Place"
title.Parent = fr
local coreframe = Instance.new("Frame")
coreframe.BackgroundTransparency = .6
coreframe.BackgroundColor3 = Color3.new(.1,.1,.1)
coreframe.Position = UDim2.new(.05,0,0.1,0)
coreframe.Size = UDim2.new(.9,0,.9,0)
coreframe.Parent = fr
local TDB = Instance.new("TextButton")
TDB.BackgroundColor3 = Color3.new(.8,.8,.8)
TDB.BackgroundTransparency = .6
TDB.Position = UDim2.new(.05,0,.05,0)
TDB.Size = UDim2.new(.9,0,.15,0)
TDB.TextScaled = true
TDB.TextTransparency = .6
TDB.TextColor3 = Color3.new(1,1,1)
TDB.Text = "Toggle Oven Doors"
TDB.BorderColor3 = Color3.new(1,0,0)
TDB.Parent = coreframe
local TCB = TDB:Clone()
TCB.Position = UDim2.new(.05,0,.3,0)
TCB.Text = "Toggle Unhappy Customers"
TCB.Parent = coreframe
local TBB = TDB:Clone()
TBB.Position = UDim2.new(.05,0,.55,0)
TBB.Text = "Toggle Closing Boxes"
TBB.Parent = coreframe
local TPB = TDB:Clone()
TPB.Position = UDim2.new(.05,0,.8,0)
TPB.Text = "Toggle Mass Paranoia"
TPB.Parent = coreframe
 
 
TDB.MouseButton1Down:connect(function()
    if toggledoor == false then
        toggledoor = true
        DoorsEnabled = true
        TDB.BorderColor3 = Color3.new(0,1,0)
    else
        toggledoor = false
        DoorsEnabled = false
        TDB.BorderColor3 = Color3.new(1,0,0)
    end
end)
 
TCB.MouseButton1Down:connect(function()
    if togglecustom == false then
        togglecustom = true
        UnhappyCustomers = true
        TCB.BorderColor3 = Color3.new(0,1,0)
    else
        togglecustom = false
        UnhappyCustomers = false
        TCB.BorderColor3 = Color3.new(1,0,0)
    end
end)
 
TBB.MouseButton1Down:connect(function()
    if togglebox == false then
        togglebox = true
        BoxEnabled = true
        TBB.BorderColor3 = Color3.new(0,1,0)
    else
        togglebox = false
        BoxEnabled = false
        TBB.BorderColor3 = Color3.new(1,0,0)
    end
end)
 
TPB.MouseButton1Down:connect(function()
    if togglepara == false then
        togglepara = true
        ParanoiaEnabled = true
        TPB.BorderColor3 = Color3.new(0,1,0)
    else
        togglepara = false
        ParanoiaEnabled = false
        TPB.BorderColor3 = Color3.new(1,0,0)
    end
end)
 
 
scr.Parent = PlayerService.LocalPlayer.PlayerGui
