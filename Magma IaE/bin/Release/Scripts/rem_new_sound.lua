local rem = game:GetService("TestService"):FindFirstChild("cc08a74f251d")

rem:FireServer([[ 
local sound = Instance.new("Sound", game:GetService("Players").Hmm465.Character)
sound.Name = "audio"
sound.SoundId = "rbxassetid://2706362962"
sound.Volume = 2
sound.Pitch = 1
sound.Looped = false
sound:Play()
]])