local x = 200
local y = 0
local speed = 10

local trangthai = 0

function love.load()
end

function love.update(dt) -- hàm cập nhật
    
    if y == 700 then
        trangthai = 1
        elseif y == 0 then
            trangthai = 0
    end

    if trangthai == 1 then
        speed = -10
        elseif trangthai == 0 then
            speed = 10
    end

   

    y = y + speed
end

function love.draw() -- hàm vẽ

    love.graphics.setColor(0, 1, 0.7)
    love.graphics.print("\n\n hello world!!!", 0, 0)

    love.graphics.setColor(0.7, 0.1, 0.9)
    love.graphics.circle("fill", x, y, 50)
end