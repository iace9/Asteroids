Game = class()

function Game:init()
    
    self.gScore = 0
    self.lives = 3
    
end

function Game:collision(newPosition)
    
    tolerance = Ship.size / 2
    
    if (newPosition.x >= WIDTH - tolerance) or (newPosition.x <= 0 + tolerance) then
        return true
    end
    
    return false
end

function Game:score()
    
    self.gScore = self.gScore + 1
    print ("Score: " .. self.gScore)
    pushStyle()
    
end

function Game:getScore()
    
    return self.gScore
    
end

function Game:takeLife()
    self.lives = self.lives - 1
end

function Game:draw()
    text("Score: "..self.gScore, 70
    , HEIGHT-30)
    text("Lives: "..self.lives, 68
    , HEIGHT-55)
end

function Game:Over()
    AsteroidA:init(9999, 999999)
    AsteroidB:init(9999,999999)
    AsteroidC:init(9999,999999)
    Ship:init(9999,0)
    text("GAME OVER",WIDTH/2,HEIGHT/2)
    text("Score: "..Game.gScore, WIDTH/2,(HEIGHT/2)-25)
    
end



