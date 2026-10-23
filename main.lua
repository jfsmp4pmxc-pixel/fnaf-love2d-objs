-- Trong file conf.lua
function love.conf(t)
    -- Đặt độ phân giải cửa sổ là 1280x720
    t.window.width = 1280
    t.window.height = 720
end

-- function love.load()
    -- Chuyển sang chế độ cửa sổ 1920x1080 và có thể phóng to
    -- local success = love.window.setMode(1920, 1080, {
        -- resizable = true,
        -- vsync = 1 -- Bật vsync để chống xé hình
--    })
-- end

function love.draw()
    love.graphics.setColor(1, 0, 0)
    love.graphics.circle("fill", 100, 100, 50)
end