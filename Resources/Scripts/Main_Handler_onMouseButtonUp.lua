--------------------------------------------------------------------------------
--  Handler.......... : onMouseButtonUp
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Main.onMouseButtonUp ( nButton, nPointX, nPointY, nRayPntX, nRayPntY, nRayPntZ, nRayDirX, nRayDirY, nRayDirZ )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	-- This handler is called when a mouse button is released.
	--
    if (this.state ( )=="inGame") then
        local sceneObj = scene.getTaggedObject ( application.getCurrentUserScene ( ), "sceneAI" )
        local sceneAI = object.getAIModelNameAt ( sceneObj, 0 )
        object.sendEvent ( sceneObj, sceneAI, "onMouseButtonUp", nButton, nPointX, nPointY, nRayPntX, nRayPntY, nRayPntZ, nRayDirX, nRayDirY, nRayDirZ )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
