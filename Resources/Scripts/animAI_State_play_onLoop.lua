--------------------------------------------------------------------------------
--  State............ : play
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function animAI.play_onLoop ( )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
	
    local dt=application.getLastFrameTime ( )
    local c=this.current ( )
    c=c+dt
    while (c>this.lastTime ( )) do
        if (this.next ( )~= nil) then
            this.setAnim ( this.next() )
            c=0
        else -- loop
            c=c-this.lastTime ( )
        end
    end
    this.current ( c )
    local f=math.floor ( c*this.FPS ( ) )
    local s=this.prefix ( ).. string.format ( "%02d", f )

    shape.overrideMeshMaterialEffectMap0 ( this.getObject ( ), s, shape.kMapTypeTexture )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
