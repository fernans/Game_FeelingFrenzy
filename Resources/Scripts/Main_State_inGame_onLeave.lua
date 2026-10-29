--------------------------------------------------------------------------------
--  State............ : inGame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Main.inGame_onLeave ( )
--------------------------------------------------------------------------------
    -- loading...
    log.warning ( "destroy inGame_onLeave" )
    hud.destroyTemplateInstance ( application.getCurrentUser ( ), "loading" )
    --
    this.state ( "none" )
	application.setCurrentUserScene ( "none" )
    hud.destroyTemplateInstance ( application.getCurrentUser ( ), "marcador" )
    -- guardar info en Environment
    if (this.lastScore ( )>0) then
        log.message ( "onLeave: score="..this.lastScore ( ) )
        log.message ( "onLeave: level="..this.currentlevel ( )-1 )
        log.message ( "onLeave: name="..this.currentName ( ))
        this.saveScores ( this.lastScore ( ), this.currentlevel ( )-1, this.currentName ( ))
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
