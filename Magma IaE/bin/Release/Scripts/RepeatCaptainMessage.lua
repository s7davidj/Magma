game:GetService("RunService").RenderStepped:Connect(function()
game:GetService("RunService").RenderStepped:wait(1)
local CaptainMessage = game:GetService("ReplicatedStorage").RemoteEvents.Gui.CaptainMessage
CaptainMessage:FireServer(
"hahahahahahahahaha"
)
end)