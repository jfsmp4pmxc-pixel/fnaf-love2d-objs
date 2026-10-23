local x = 200
local y = 0
local i = 0

function love.load()
    print("hello world!!!")
end

function love.update(dt)
    
   if y > 700 then
        y = 0
   end

    y = y + 5
end

function love.draw()
    love.graphics.c
    love.graphics.circle("fill", x, y, 50)
    -- love.graphics.clear() --
end