-- vùng khai báo biến --

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
function Ball:init(x, y, color)
    self.x = x 
    self.y = y
    self.r = r 
    self.color = color
end

function Ball:draw()
    love.graphics.setColor(self.color)
    love.graphics.circle("fill", self.x, self.y, self.r)
end

-- hàm thiết lập game --
function love.load()
end

-- hàm cập nhật game --
function love.update(dt)
end

-- hàm vẽ --
function love.draw() 
    Ball(100, 100, 1)
end