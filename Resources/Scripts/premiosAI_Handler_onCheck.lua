--------------------------------------------------------------------------------
--  Handler.......... : onCheck
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function premiosAI.onCheck ( _x, _y )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    local tx,ty,tz = object.getTranslation ( this.getObject ( ), object.kGlobalSpace )
    
    local d=math.vectorLength ( math.vectorSubtract ( tx,ty,tz, _x,_y,0 ) )
    if (d<0.15) then 
        this.sendEvent("onExplotar") 
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
