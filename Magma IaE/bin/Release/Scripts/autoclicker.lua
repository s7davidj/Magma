--Made by depp#1894, this script was made in 2020, DM depp#1894 for bugs
local UserIS = game:GetService("UserInputService")
local HotKey = "J"
local Toggle = false

UserIS.InputBegan:Connect(function(LocalInput)
if LocalInput.KeyCode == Enum.KeyCode[HotKey] then
Toggle = not Toggle
while wait() do
if Toggle == true then
mouse1click(MOUSE_CLICK)
else
mouse1click(MOUSE_UP)
end
end
end
end)