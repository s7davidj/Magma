G.ANNOYING = true
local SpamMessage = "F"
local spamstring = SpamMessage
local chatspamenabled = true
-- idk wtf u would fire these for lol but ok
-- Paygammy#0001 now add me lol
-- my nuts are sweating O_O
spawn(function()
    for i,v in next,(game:GetService("ReplicatedStorage"):GetDescendants()) do
        if v:IsA("RemoteEvent") then
            v:FireServer()
        end
    end
end)
while _G.ANNOYING do
    game:GetService("RunService").Stepped:Wait()
    local SHIT = game
    for i,v in next,(SHIT:GetDescendants()) do
        if v:IsA("Sound") then
            v:Play()
        end
    end
    if chatspamenabled then
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(spamstring, "All")
    end
end