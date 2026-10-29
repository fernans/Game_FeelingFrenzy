--------------------------------------------------------------------------------
--  State............ : main
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function gotaAzulAI.main_onLoop ( )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    local dt=application.getLastFrameTime ( )
	local t=this.time ( )
    local c=this.count ( )
    t=t-dt;
    if (t<0) then
        t=this.originalTime ( )
        c=c-1
        this.count ( c )
        if (c>=0) then
            this.sendEvent ( "onCreateFeeling", ((4-c)/4)-0.5 )
        end
    end
    this.time ( t )
    if (c<0) then
        object.removeAIModel ( this.getObject ( ), "gotaAzulAI" )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
