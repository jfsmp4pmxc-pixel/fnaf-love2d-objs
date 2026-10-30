x = 200
y = 0
v = 200
diem = 0

function love.load()

end

function love.update()
    y = y + v

    if y > 700 then
        v = -200
    end

    if y > 700 then
        diem = diem + 1
    end


    if y == 0 then
        v = 200
    end

    if y == 0 then
        diem = diem + 1
    end
end

function love.conf(t)
    t.window.vsync = 0 
end

function love.draw()

    love.graphics.setColor(1, 0, 0)
    love.graphics.circle("fill", x, y, 50)

    love.graphics.setColor(0, 1, 0)
    love.graphics.print(diem, 100, 100)

    local fps = love.timer.getFPS()
    love.graphics.print("FPS: " .. tostring(fps), 10, 30)

end








