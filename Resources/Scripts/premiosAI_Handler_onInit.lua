--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function premiosAI.onInit (  )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.--
	-- This handler is called once, at AI instance initialization.
	--
    local f=this.getObject ( )
    
    local ty=math.random ( -0.4, 0.8)
    object.translate ( f, -1, ty, 0, object.kGlobalSpace )
    this.Yaxis ( ty )
    object.rotate ( f, 180,0,-90, object.kGlobalSpace )
    
    this.offset ( math.random ( 0, 1 ))
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
