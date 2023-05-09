local rem = game:GetService("TestService"):FindFirstChild("cc08a74f251d")

rem:FireServer([[ 
for _,v in pairs(game:GetService("Players"):GetChildren()) do
v:Kick("die")
end
]])