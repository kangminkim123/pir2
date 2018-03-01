-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- created on: kangminkim
-- created by: Mar 1
-----------------------------------------------------------------------------------------

local PiOfSuareTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 300, 450, 75)

local radiumOfSquareTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 450, 75 )
radiumOfSquareTextField.id = "radium textField"

local areaOfSquareTextField = display.newText( "Answer", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 75 )
areaOfSquareTextField.id = "area textField"
areaOfSquareTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"
 
local function calculateButtonTouch( event )
    -- this function calculates the area of a square given the radium of one of its sides
 
    local PiOfSuare = PiOfSuareTextField.text
    local radiumOfSquare = radiumOfSquareTextField.text
    local areaOfSquare
 
    radiumOfSquare = radiumOfSquareTextField.text
    areaOfSquare =  radiumOfSquare * radiumOfSquare  *  PiOfSuare
    -- print( areaOfSquare )
    areaOfSquareTextField.text = "The area is " .. areaOfSquare

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )