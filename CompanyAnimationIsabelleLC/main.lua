-- Title: CompanyAnimation
-- Name: Isabelle LC
-- Course: ICS20/3C
-- This Program.. displays my group's company logo, Turbo Games.
-----------------------------------------------------------------------------
-- HIDE STATUS BAR
-----------------------------------------------------------------------------
-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)
---------------------------------------------------------------------------------------
-- BACKGROUND
---------------------------------------------------------------------------------------

-- background
local background = display.newImage("Images/background.png", 0, 0)

-- set the x and y position
background.x = display.contentCenterX
background.y = display.contentCenterY

-- set the width and height
background.width = display.contentWidth
background.height = display.contentHeight

background:toBack()
--------------------------------------------------------------------------------------------------
-- LOCAL VARIABLES & OBJECTS & SOUNDS
-------------------------------------------------------------------------------------------
-- scroll speed
scrollSpeed = 6
------------------------------------------------------------------------------------------------
-- logo
local companyLogo = display.newImage("Images/CompanyLogoIsabelleLC@2x.png", 25, 25)
companyLogo:scale(0.09, 0.09)
companyLogo.isVisible = true
--------------------------------------------------------------------------------------------------------
-- Background Sound
local backgroundSound = audio.loadSound("Sounds/sound.mp3")
local backgroundSoundChannel
------------------------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
--------------------------------------------------------------------------------------
local function HideCompanyLogo()
	companyLogo.isVisible = false
end
---------------------------------------------------------------------------------------------------
backgroundSoundChannel = audio.play(backgroundSound)
companyLogo.alpha = 1

-- set the x and y
companyLogo.x = 1024
companyLogo.y = display.contentHeight/2

-- function: MoveCompanyLogo
local function MoveCompanyLogo(event)
	-- add the scroll speed to the x-value
	companyLogo.x = companyLogo.x - scrollSpeed
	-- scale the image by 100.2% (x) and 100.2% (y)
	companyLogo:scale(1.025, 1.025)

	timer.performWithDelay(2000, HideCompanyLogo)
end
------------------------------------------------------------------------------------------------------------
-- CALL FUNCTIONS
------------------------------------------------------------------------------------------------------------------
Runtime:addEventListener("enterFrame", MoveCompanyLogo)
