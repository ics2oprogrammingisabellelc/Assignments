-- Title: DisplayShapes
-- Name: Isabelle L-C
-- Course: ICS2O/3C
-- This program displays 3 shapes on the iPad of different colours with borders.
-- Underneath each shape is the name of it.

-- create my local variables
local areaText
local textSize = 45
local myTriangle
local verticesTriangle = { 0, -50, 50, 50, -50, 50 }

-- background image with width and height
local backgroundImage = display.newImageRect("Images/bg.jpg", 2048, 1536)

myTriangle = display.newPolygon(500, 500, verticesTriangle)

-- anchor the triangle in the top eft corner of the screen and set its (x,y) position
myTriangle.anchorX = 0.5
myTriangle.anchorY = 100

-- set the width of the border
myTriangle.strokeWidth = 10

-- set the color of the triangle
myTriangle:setFillColor(0, 0, 1)

-- set the color of the border
myTriangle:setStrokeColor(1, 1, 1)

-- create my local variables
local myParallelagram
local verticesParallelagram = { -25, -50, -25, 25, 35, 50, 50, -35 }

myParallelagram = display.newPolygon(800, 500, verticesParallelagram)

-- anchor the trapazoid in the top left corner of the screen and set its (x,y) position
myParallelagram.anchorX = 0.6
myParallelagram.anchorY = 100

-- set the width of border
myParallelagram.strokeWidth = 10

-- set the color of the parallelagram
myParallelagram:setFillColor(0, 1, 0)

-- set the colkor of the border
myParallelagram:setStrokeColor(1, 1, 1)

-- create my local variables
local myPentagon
local verticesPentagon = { -80, -50, -65, 80, 90, 60, 30, -95, 10, 30 }

myPentagon = display.newPolygon(200, 500, verticesPentagon)

-- anchor the trapazoid in the top left corner of the screen and set its (x,y) position
myPentagon.anchorX = 0.6
myPentagon.anchorY = 100

-- set the width of the border
myPentagon.strokeWidth = 10

-- set the color of my pentagon
myPentagon:setFillColor(1, 0, 0)

-- set the color of the border
myPentagon:setStrokeColor(1, 1, 1)

areaText = display.newText("Pentagon", 0,0, Arial, textSize)

-- anchor the text and set its (x,y) position
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 80
areaText.y = 550

-- set text color
areaText:setFillColor(1, 0, 0)

areaText = display.newText("Triangle", 0,0, Arial, textSize)

-- anchor the text and set its (x,y) position
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 416
areaText.y = 550

-- set text color
areaText:setFillColor(0, 0, 1)

areaText = display.newText("Parallelagram", 0,0, Arial, textSize)

-- anchor the text and set its (x,y) position
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 650
areaText.y = 550

-- set text color
areaText:setFillColor(0, 1, 0)

local newTextSize = 30
areaText = display.newText("Isabelle Loscher-Charette", 0,0, Arial, newTextSize)

-- anchor the text and set its (x,y) position
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 50
areaText.y = 25

-- set text color
areaText:setFillColor(1, 1, 1)