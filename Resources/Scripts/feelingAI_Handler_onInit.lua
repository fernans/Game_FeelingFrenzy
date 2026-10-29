--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function feelingAI.onInit (  )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	-- This handler is called once, at AI instance initialization.
	--
    local f=this.getObject ( )

    dynamics.createSphereBody ( f, 0.5 )
    dynamics.enableDynamics ( f, true )
    dynamics.enableGravity ( f, true )
    dynamics.setMass ( f, this.mass ( ) )
    dynamics.setLinearDamping ( f, this.damping ( ) )
    
    local tx=math.random ( -0.5, 0.5 )
    object.translate ( f, tx, 1, 0, object.kGlobalSpace )
    object.rotate ( f, 180,0,-90, object.kGlobalSpace )
    
    sensor.add ( f, sensor.kShapeTypeSphere )
    sensor.setSphereRadiusAt ( f, 0, 0.25 )
    sensor.setIDAt ( f, 0, 0 )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
