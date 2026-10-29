--------------------------------------------------------------------------------
--  Handler.......... : onSetParams
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function feelingAI.onSetParams ( _ID, _score, _mass, _damping, _latForce, _latFreq )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    if (_ID~=nil) then this.ID ( _ID ) end
    if (_score~=nil) then this.score ( _score ) end
	if (_mass~=nil) then this.mass ( _mass ) end
    if (_damping~=nil) then this.damping ( _damping ) end
    if (_latForce~=nil) then this.latForce ( _latForce ) end
    if (_latFreq~=nil) then this.latFreq ( _latFreq ) end
    
    -- update dynamics
    local f=this.getObject ( )
    --dynamics.createSphereBody ( f, 0.5 )
    --dynamics.enableDynamics ( f, true )
    --dynamics.enableGravity ( f, true )
    dynamics.setMass ( f, this.mass ( ) )
    dynamics.setLinearDamping ( f, this.damping ( ) )
    
    --local tx=math.random ( -0.5, 0.5 )
    --object.translate ( f, tx, 1, 0, object.kGlobalSpace )
    --object.rotate ( f, 180,0,-90, object.kGlobalSpace )
    
    --sensor.add ( f, sensor.kShapeTypeSphere )
    --sensor.setSphereRadiusAt ( f, 0, 0.25 )
    --sensor.setIDAt ( f, 0, 0 )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
