--------------------------------------------------------------------------------
--  State............ : main
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function crecerAI.main_onLoop ( )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    local dt=application.getLastFrameTime ( )
	local x=this.currentlScale ( )
    local fs=this.finalScale ( )
    if (x<fs) then
        x=math.interpolate ( x, fs, dt*10 )
        if (math.abs ( x-fs )<0.01) then x=fs end
        this.currentlScale ( x )
        object.sendEvent ( this.getObject ( ), "playerAI", "onUpdateScale", x )

        local f=this.flash ( )
        f=f+10
        if (f>100) then f=0 end
        if (x==fs) then
            this.stay ( )
            f=0
        end
        this.flash ( f )
        shape.overrideMeshMaterialEmissive ( this.getObject ( ), 255,255,255, f/100 )
        
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
