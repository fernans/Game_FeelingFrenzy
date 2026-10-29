--------------------------------------------------------------------------------
--  Handler.......... : onExplotar
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function premiosAI.onExplotar (  )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    if (this.active ( )) then
        log.message ( "explotar" )
        this.active ( false )
        local f=this.getObject ( )
        object.sendEvent ( f, "animAI", "onSetAnim", "explotar" )
        object.postEvent ( f, 0.5, "premiosAI", "onDead" )
        
        local t=this.tipo ( )
        user.sendEvent ( application.getCurrentUser ( ), "Main", "onPremio", t )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
