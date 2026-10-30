x = 200
y = 0
v = 10
diem = 0

function love.load()

end

function love.update()
    y = y + v

    if y > 500 then
        v = -10
    if y > 500 then
end

function love.draw()

    love.graphics.setColor(1, 0, 0)
    love.graphics.circle("fill", x, y, 50)

end