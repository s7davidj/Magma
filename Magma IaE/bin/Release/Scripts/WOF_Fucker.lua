local alphabet = "abcdefghijklmnopqrstuvwxyz"
local RemoteEvent = game:GetService("ReplicatedStorage").RemoteEvent

function guess(letter)
    RemoteEvent:FireServer(
        "Letter Guess",
        letter:upper()
    )
end

for i=1,#alphabet do
    local currentLetter = alphabet:sub(i, i)
    guess(currentLetter)
end