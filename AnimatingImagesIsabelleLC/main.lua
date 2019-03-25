-- Title: AnimatingImages
-- Name: IsabelleLC
-- Course: ICS20/3C
-- This programs displays three moving images, moving in 
-- different directions across the screen.
---------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- global variables
scrollSpeed = 4

-- background image with the width and height
local backgroundImage = display.newImageRect("Images/forest4.jpg", 2048, 1536)

-- character images with width and height
local character1 = display.newImageRect("Images/character1.png", 200, 200)
local character2 = display.newImageRect("Images/character2.png", 200, 200)
local character3 = display.newImageRect("Images/character3.png", 200, 200)
local character4 = display.newImageRect("Images/chibi.png", 200 ,200)
local areaText
local textSize = 63

-- display text on screen
areaText = display.newText("What you dream, is what you live", 0,0, Arial, textSize)

-- set the color of the text
areaText:setTextColor(51/255, 25/255, 0/255)

-- anchor the text and set its (x,y) position
areaText.anchorX = 0
areaText.anchorY = 0
areaText.y = 600
areaText.x = 50

-- display text on screen
areaText = display.newText("What you dream, is what you live", 0,0, Arial, textSize)

-- set the color of the text
areaText:setTextColor(255/255, 255/255, 204/255)

-- anchor the text and set its (x,y) position
areaText.anchorX = 0
areaText.anchorY = 0
areaText.y = 600
areaText.x = 57
----------------------------------------------------------------------------------------
-- set the image to be transparent
character1.alpha = 0

-- set the initial x any y position of the image
character1.x = 1200
character1.y = 200

-- Function: MoveCharacter1
local function MoveCharacter1(event)
	-- add the scroll speed to the x-value of the ship
	character1.x = character1.x - scrollSpeed
	-- change transparency of image so that it fades
	character1.alpha = character1.alpha + 0.03
	angle = math.rad(30)
	character1.x = character1.x - math.sin(90)
	character1.y = character1.y + math.cos(0)
end

-- MoveCharacter1 will be called over and over
Runtime:addEventListener("enterFrame", MoveCharacter1)
-----------------------------------------------------------------------------------------

-- anchor the text and set its (x,y) position
areaText.anchorX = 0
areaText.anchorY = 0
areaText.y = 600
areaText.x = 57
----------------------------------------------------------------------------------------
-- set the image to be transparent
character2.alpha = 0

-- set the initial x any y position of the image
character2.x = 1200
character2.y = 700

-- Function: MoveCharacter2
local function MoveCharacter2(event)
	-- add the scroll speed to the x-value of the ship
	character2.x = character2.x - scrollSpeed
	-- change transparency of image so that it fades
	character2.alpha = character2.alpha + 0.02
	angle = math.rad(30)
	character2.x = character2.x + math.sin(90)
	character2.y = character2.y - math.cos(0)
end

-- MoveCharacter2 will be called over and over
Runtime:addEventListener("enterFrame", MoveCharacter2)
-----------------------------------------------------------------------------------------

-- set the image to be transparent
character3.alpha = 0

-- set the initial x any y position of the image
character3.x = 512
character3.y = 0

-- Function: MoveCharacter3
local function MoveCharacter3(event)
	-- add the scroll speed to the x-value of the ship
	character3.x = character3.x - scrollSpeed
	-- change transparency of image so that it fades
	character3.alpha = character3.alpha + 0.03
	angle = math.rad(90)
	character3.x = character3.x + math.sin(1600)
	character3.y = character3.y + math.cos(0)
end

-- MoveCharacter3 will be called over and over
Runtime:addEventListener("enterFrame", MoveCharacter3)
-----------------------------------------------------------------------------------------

-- set the image to be transparent
character4.alpha = 1

-- set initial x and y position of the images
character4.x = 500
character4.y = 900

-- function: MoveCharacter4
local function MoveCharacter4(event)
	-- add the scroll speed to the x-value
	character4.x = character4.x - scrollSpeed
	-- scale the imagfe by 100.2% (x) and 100.2% (y)
	character4:scale(1.002, 1.002)
end

-- moveCharacter4 will be called over and over again
Runtime:addEventListener("enterFrame", MoveCharacter4)