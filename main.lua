-- Title: TouchAndDrag
-- Name: Your Name
-- Course: ICS2O/3C
-- Write what this program does

-- hide the status bar
--***INSERT CODE TO HIDE THE STATUS BAR

-- FILL IN COMMENT HERE
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- FILL IN COMMENT HERE
local blueGirl = display.newImageRect("Images/blueGirl.png", 150, 150)

-- FILL IN COMMENT HERE
local blueGirlWidth = blueGirl.width

-- FILL IN COMMENT HERE
local blueGirlHeight = blueGirl.height

-- my boolean variable to keep track of which object I touched first
local alreadyTouchedBlueGirl = false

-- FILL IN COMMENT HERE
blueGirl.x = 300
blueGirl.y = 200

-- Function: BlueGirlListener
-- Input: touch listener
-- Output: none
-- Description: when blue girl is touched, move her
local function BlueGirlListener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedYellowGirl == false) then
			alreadyTouchedBlueGirl = true	
		end
	end

	if  ( (touch.phase == "moved") and (alreadyTouchedBlueGirl == true) ) then
		blueGirl.x = touch.x 
		blueGirl.y = touch.y
	end

	if (touch.phase == "ended") then
		alreadyTouchedBlueGirl = false	
		alreadyTouchedYellowGirl = false	
	end
end

-- add the respective listeners to each object
blueGirl:addEventListener("touch", BlueGirlListener)

