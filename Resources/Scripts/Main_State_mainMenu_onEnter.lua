--------------------------------------------------------------------------------
--  State............ : mainMenu
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Main.mainMenu_onEnter ( )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
	this.state ( "mainMenu" )
    local hUser = application.getCurrentUser ( )
    -- create the mainMenu HUD
    hud.destroyTemplateInstance ( hUser, "mainMenu" )
    if (not this.FREE ( )) then
        hud.newTemplateInstance ( hUser, "mainMenu", "mainMenu" )
    else --FREE
        hud.newTemplateInstance ( hUser, "mainMenuFREE", "mainMenu" )
    end
    
    if (this.firstTime ( )) then
        this.firstTime ( false )
        --lanzar sonido "Kimochis" solo una vez (33)
        hud.callAction ( hUser, "mainMenu.soundWellcome" )
    end
    --if ( hud.isActionRunning ( hUser, "splash.fadeIn" ) )
    --then
    --        hud.stopAction ( hUser,  "splash.fadeIn" )
    --end
    --local clevel = hud.getComponent ( hUser, "splash.level" )
    --hud.setLabelText ( clevel, ""..this.level ( ) )   
    --local cscore = hud.getComponent ( hUser, "splash.score" )
    --hud.setLabelText ( cscore, ""..this.score ( ) )
    --hud.callAction ( hUser,  "splash.fadeIn" )
    
    --musica
    local hScene = application.getCurrentUserScene ( )
    music.playAdditional ( hScene, "musicA", 0.5 )
    music.setVolume ( hScene, 0.3, 0 )
    
    --if (application.mightBeCracked ( )) then
    --    log.warning ( "PIRATON!" )
    --    hud.newTemplateInstance ( this.getUser ( ), "piraton", "piraton" )
    --else
    --    log.warning ( "no esta pirateado" )
    --end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
