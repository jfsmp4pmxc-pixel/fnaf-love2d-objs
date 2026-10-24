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

-- 

-- hàm thiết lập game --
function love.load()
end

-- hàm cập nhật game --
function love.update(dt)
end

-- hàm vẽ --
function love.draw() 
end