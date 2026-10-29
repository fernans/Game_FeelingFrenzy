--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function playerAI.onInit (  )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	-- This handler is called once, at AI instance initialization.
	--
    
    -- current (mi posicion actual)
    local c=scene.createRuntimeObject ( application.getCurrentUserScene ( ), "dummy" )
    this.current ( c )
    object.matchTranslation ( c, this.getObject ( ), object.kGlobalSpace )
    
    -- objet sensor (colisiones)
    local s=scene.createRuntimeObject ( application.getCurrentUserScene ( ), "dummy" )
    object.setParent ( s, this.getObject ( ), false )
    this.sensor ( s )
    sensor.add ( s, sensor.kShapeTypeSphere )
    sensor.setIDAt ( s, 0, 1 )
    
    --this.sendEvent ( "onSetSensor", 0,0,0, this.sensorRadius ( ) )
   
   -- target (posicion destino... traslado suave)
    local t=scene.createRuntimeObject ( application.getCurrentUserScene ( ), "dummy" )
    this.target ( t )
    object.matchTranslation ( t, this.getObject ( ), object.kGlobalSpace )
    
    -- objeto con dinamicas
    local d=scene.createRuntimeObject ( application.getCurrentUserScene ( ), "dummy" )
    this.dyn ( d )
    
    dynamics.createSphereBody ( d, 0.1 )
    dynamics.enableDynamics ( d, true )
    dynamics.enableGravity ( d, true )
    dynamics.setOffset ( d, 0, 1, 0 )
    dynamics.createHingeJoint ( d, nil, "ball" )
    dynamics.setHingeJointAnchor ( d, "ball",0,1,0, object.kLocalSpace )
    dynamics.setHingeJointAxis ( d, "ball", 0,0,1,object.kLocalSpace )
    dynamics.setMass ( d, this.mass ( ) )
    dynamics.setLinearDamping ( d, this.damping ( ) )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
