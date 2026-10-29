--------------------------------------------------------------------------------
--  State............ : grow
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function puntosAI.grow_onLoop ( )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    --local gv=this.growVel ( )
    --local gt=this.growTo ( )
	local dt=application.getLastFrameTime ( )
    --gv=gv*dt
    --local x,y,z = object.getScale ( this.getObject ( ) )
    --x = math.interpolate ( x, gt, gv )
    --object.setScale ( this.getObject ( ), x,x,x )
    --object.rotate ( this.getObject ( ), 0,0, 120*dt ,object.kLocalSpace)
    object.translate ( this.getObject ( ), 0,0.3*dt,0, object.kGlobalSpace )
    
    --local o=shape.getMeshOpacity ( this.getObject ( ) )
    --o=math.interpolate ( o, 0, 5*dt )
    --shape.setMeshOpacity ( this.getObject ( ), o )
    
    
    --if ((gt-x)<0.2) then
    --if (this.frames ( )>=this.framesLimit ( )) then
        --this.dead ( )
    --end
    --this.frames ( this.frames ( )+1)
   
   -- shape.setMeshOpacity ( this.getObject ( ), 100 )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
