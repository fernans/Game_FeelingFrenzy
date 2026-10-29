--------------------------------------------------------------------------------
--  Handler.......... : onMouseButtonDown
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function inGameAI.onMouseButtonDown ( nButton, nPointX, nPointY, nRayPntX, nRayPntY, nRayPntZ, nRayDirX, nRayDirY, nRayDirZ )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	-- This handler is called when a mouse button is pressed.
	--
	--log.message( " --- MouseDown ---" )
    if (hud.getComponentAtPoint ( application.getCurrentUser ( ), (nPointX+1)*50, (nPointY+1)*50 ) == nil) then
        nPointX=nPointX*application.getCurrentUserViewportAspectRatio ( )
        object.sendEvent ( this.player ( ), "playerAI", "onSetTarget", nPointX, this.Y ( ), 0 )
        this.buttonDown ( true )
        
        --comprobar premios
        if (this.currentPrize ( )~=nil) then
            object.sendEvent(this.currentPrize ( ), "premiosAI", "onCheck", nPointX, nPointY)
        end
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
