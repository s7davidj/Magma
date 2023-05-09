local player = game.Players.LocalPlayer
local UIS = game:GetService("UserInputService")

UIS.InputBegan:connect(
    function(input, gameProcessedEvent)
        if gameProcessedEvent then
            return
        end --If player is typing return
        if input.UserInputType == Enum.UserInputType.Keyboard then --If player is using a KeyBoard
            if input.KeyCode == Enum.KeyCode.Period then -- Connects when the key is touched
                game.Workspace.CurrentCamera:PanUnits(1)
            end
        end
    end
)

local player = game.Players.LocalPlayer
local UIS = game:GetService("UserInputService")

UIS.InputBegan:connect(
    function(input, gameProcessedEvent)
        if gameProcessedEvent then
            return
        end --If player is typing return
        if input.UserInputType == Enum.UserInputType.Keyboard then --If player is using a KeyBoard
            if input.KeyCode == Enum.KeyCode.Comma then -- Connects when the key is touched
                game.Workspace.CurrentCamera:PanUnits(-1)
            end
        end
    end
)
