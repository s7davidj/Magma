
local prefix = ":"

local msg = (prefix .. "clean "):rep(10000)

for i = 1, 100 do
    game.Players:Chat(msg)
end