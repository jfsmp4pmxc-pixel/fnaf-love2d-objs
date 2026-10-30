x = 200
y = 0
v = 2000
diem = 0
soLanThucThi = 0
soLanTrongGiay = 0
mocThoiGian = 0

function love.load()
    love.window.setVSync(0) 
    mocThoiGian = love.timer.getTime()
end

function love.update()
    y = y + v

    if y > 700 then
        v = -2000
    end

    if y > 700 then
        diem = diem + 1
    end


    if y == 0 then
        v = 2000
    end

    if y == 0 then
        diem = diem + 1
    end

    soLanThucThi = soLanThucThi + 1

    local hienTai = love.timer.getTime()
    if hienTai - mocThoiGian >= 1.0 then
        soLanTrongGiay = soLanThucThi
        soLanThucThi = 0             
        mocThoiGian = hienTai 
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

    love.graphics.print("UPS: " .. soLanTrongGiay, 10, 50)

end








