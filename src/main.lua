












-- khai báo biến --
local x = 200
local y = 0
local v = 5

-- hàm thiết lập --
function love.load()
end

-- hàm cập nhật --
function love.update()
    y = y + v
end

-- hàm vẽ --
function love.draw()
    love.graphics.circle("fill", x, y, 50)
end