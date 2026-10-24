
local function class(parent)
    local cls = {}
    cls.__index = cls
    if parent then setmetatable(cls, {__index = parent}) end
    cls.new = function(...)
        local obj = setmetatable({}, cls)
        if obj.init then obj:init(...) end
        return obj
    end
    return cls
end

local Ball = class()

-- đối tượng Ball --
function Ball:init(x, y, r, color)
    self.x = x 
    self.y = y
    self.r = r 
    self.color = color
end

function Ball:draw()
    love.graphics.setColor(self.color)
    love.graphics.circle("fill", self.x, self.y, self.r)
    love.graphics.setColor(1, 1, 1)
end

local ball
-- hàm thiết lập game --
function love.load()
    ball = Ball:new(100, 100, 50 {1, 0, 0})
end

-- hàm cập nhật game --
function love.update(dt)
end

-- hàm vẽ --
function love.draw() 
    ball.dr
end