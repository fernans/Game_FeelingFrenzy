--------------------------------------------------------------------------------
--  Handler.......... : onMouseMove
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Main.onMouseMove ( nPointX, nPointY, nDeltaX, nDeltaY, nRayPntX, nRayPntY, nRayPntZ, nRayDirX, nRayDirY, nRayDirZ )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	-- This handler is called when the mouse is moved.
	--
    if (this.state ( )=="inGame") then
        local sceneObj = scene.getTaggedObject ( application.getCurrentUserScene ( ), "sceneAI" )
        local sceneAI = object.getAIModelNameAt ( sceneObj, 0 )
        object.sendEvent ( sceneObj, sceneAI, "onMouseMove", nPointX, nPointY, nDeltaX, nDeltaY, nRayPntX, nRayPntY, nRayPntZ, nRayDirX, nRayDirY, nRayDirZ  )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
