local newWalkspeed = 50

game.Players.PlayedAdded:Connect(function(player)
   player.CharacterAdded:Connect(function(character)
      character:WaitForChild("Humanoid").WalkSpeed = newWalkspeed
   end)
end)
