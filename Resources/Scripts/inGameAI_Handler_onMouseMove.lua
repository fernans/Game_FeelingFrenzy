--------------------------------------------------------------------------------
--  Handler.......... : onMouseMove
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function inGameAI.onMouseMove ( nPointX, nPointY, nDeltaX, nDeltaY, nRayPntX, nRayPntY, nRayPntZ, nRayDirX, nRayDirY, nRayDirZ )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	-- This handler is called when the mouse is moved.
	--
    if (hud.getComponentAtPoint ( application.getCurrentUser ( ), (nPointX+1)*50, (nPointY+1)*50 ) == nil) then
        if (this.buttonDown ( )) then
            nPointX=nPointX*application.getCurrentUserViewportAspectRatio ( )
            object.sendEvent ( this.player ( ), "playerAI", "onSetTarget", nPointX, this.Y ( ), 0 )
        end
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
