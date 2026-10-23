-- Trong file main.lua, ví dụ đặt trong love.load()
function love.load()
    -- Chuyển sang chế độ cửa sổ 1920x1080 và có thể phóng to
    local success = love.window.setMode(1920, 1080, {
        resizable = true,
        vsync = 1 -- Bật vsync để chống xé hình
    })
end

function love.draw() {
}