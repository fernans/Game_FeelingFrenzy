--------------------------------------------------------------------------------
--  State............ : gameOverWinFREE
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function inGameAI.gameOverWinFREE_onEnter ( )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    local hUser = application.getCurrentUser ( )
    hud.destroyTemplateInstance ( hUser, "gameOverWinSplash" )
    hud.newTemplateInstance ( hUser, "gameOverWinSplashFREE", "gameOverWinSplash" ) 
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
