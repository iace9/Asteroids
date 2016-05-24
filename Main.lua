-- Asteroid Dodge

-- Use this function to perform your initial setup
function setup()
    displayMode(FULLSCREEN)
    print("Game Start!")
    session = Game:init()
    ShipA = Ship:init(WIDTH/2,0)
    RockA = AsteroidA:init( math.random(0,WIDTH), math.random(20,300) )
    RockB = AsteroidB:init( math.random(0,WIDTH), math.random(20,300) )
    RockC = AsteroidC:init( math.random(0,WIDTH), math.random(20,300) )
    
    
end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    background(31, 31, 46, 255)
    
    Ship:draw()
    AsteroidA:draw() 
    AsteroidB:draw()
    AsteroidC:draw()
    Game:draw()
    
    if(Game.lives <= 0) then
        sound(SOUND_SHOOT, 29366)
        Game:Over()
    end
    
end

