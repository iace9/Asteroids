Ship = class()

function Ship:init(x,y)
    self.position = vec2(x,150)
    self.size = 100
    self.body = physics.body(CIRCLE, 100)
end

function Ship:draw()
    sprite("Space Art:Red Ship",self.position.x, self.position.y)
    
    moveVector = vec2(Gravity.x,0)
    self:move(moveVector*15)
    pushStyle()
end

function Ship:move(direction)
    newPosition = self.position + direction
    
    if Game:collision(newPosition) then
        -- Is hitting wall, do nothing
    else 
        self.position = newPosition
    end
    
    -- self.position = newPosition
    
end

function Ship:touched(touch)
    -- Codea does not automatically call this method
end
