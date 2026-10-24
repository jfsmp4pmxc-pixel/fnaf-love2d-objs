-- khai báo biến --
local x = 200
local y = 500
local v = 5

-- hàm thiết lập --
function love.load()
end

-- hàm cập nhật --
function love.update()

    y = y + v -- cập nhật vị trí --

    if y > 500 then
        love.graphics.setColor(1, 0, 0)
    end

    if y > 700 then
end

-- hàm vẽ --
function love.draw()
    love.graphics.circle("fill", x, y, 50)
end








