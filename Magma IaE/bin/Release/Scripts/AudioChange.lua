game.Workspace.audio:Destroy()
sound = Instance.new("Sound", game.Workspace);
		sound.Name = "audio";
		sound.SoundId = "rbxassetid://2371543268";
		sound.Volume = 2;
		sound.Pitch = 1;
		sound.Looped = false;
		sound:Play();
		wait();
game.Players.LocalPlayer.Character.Humanoid.Health = 0