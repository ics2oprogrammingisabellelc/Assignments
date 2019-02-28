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

