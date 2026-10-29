--------------------------------------------------------------------------------
--  Handler.......... : onSetTarget
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function playerAI.onSetTarget ( x, y, z )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    if (this.target ( )) then
        object.setTranslation ( this.target ( ), x, y ,z, object.kGlobalSpace )
	end
    
    if (this.dyn ( )) then
        local tx,ty,tz = object.getTranslation ( this.target ( ), object.kGlobalSpace )
        local sx,sy,sz = object.getTranslation ( this.current ( ), object.kGlobalSpace )
        local diffx=tx-sx
        dynamics.addForce ( this.dyn ( ), -diffx*this.force ( ),0,0, object.kLocalSpace )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
