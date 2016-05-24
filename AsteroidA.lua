AsteroidA = class()

function AsteroidA:init(x,size)
    
    self.position = vec2(x,600)
    self.size = size
    self.body = physics.body(CIRCLE, size)
    
end

function AsteroidA:draw()
    sprite("Space Art:Asteroid Large",self.position.x, self.position.y, self.size, self.size)
    self:move()
    pushStyle()
end

function shipCollision(x1,  y1,  w1,  h1,  x2,  y2,  w2,  h2) 
    local ax2, bx2, ay2, by2 = x1 + w1, x2 + w2, y1 + h1, y2 + h2
    return ax2 > x2 and bx2 > x1 and ay2 > y2 and by2 > y2
end


function AsteroidA:move()
    
    self.position = self.position + vec2(0,math. random(-10,-1))
    
    if self.position.y <= 0 then
        Game:score()
        sound(SOUND_PICKUP, 27497)
        AsteroidA:init(math.random(0,WIDTH), math.random(20,300))
    end
    
    if shipCollision(Ship.position.x,  Ship.position.y,  Ship.size,  Ship.size,  self.position.x,  self.position.y,  self.size,  self.size) then
        sound(SOUND_SHOOT, 40063)
        AsteroidA:init(math.random(0,WIDTH), math.random(20,300))
        Ship:init(WIDTH/2,0)
        Game:takeLife()
    end

end
