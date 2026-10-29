--------------------------------------------------------------------------------
--  State............ : gameOverLoose
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function inGameAI.gameOverLoose_onEnter ( )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    local hUser = application.getCurrentUser ( )
    hud.destroyTemplateInstance ( hUser, "gameOverLooseSplash" )
    hud.newTemplateInstance ( hUser, "gameOverLooseSplash", "gameOverLooseSplash" )
    local bg = hud.getComponent ( hUser, "gameOverLooseSplash.background" )
    hud.setComponentBackgroundImage ( bg, "pantalla_"..this.sPrefix ( ).."_lost" )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
