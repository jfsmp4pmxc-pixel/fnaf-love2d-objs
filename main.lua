local x = 0
local y = 0


function love.load()
    print("hello world!!!")
end

function love.draw()
    love.graphics.circle("fill", x, y, 50)
    -- love.graphics.clear() --
end