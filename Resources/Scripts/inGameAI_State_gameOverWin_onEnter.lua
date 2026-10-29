--------------------------------------------------------------------------------
--  State............ : gameOverWin
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function inGameAI.gameOverWin_onEnter ( )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    local hUser = application.getCurrentUser ( )
    hud.destroyTemplateInstance ( hUser, "gameOverWinSplash" )
    hud.newTemplateInstance ( hUser, "gameOverWinSplash", "gameOverWinSplash" )  
    --local cscore = hud.getComponent ( hUser, "gameOverWinSplash.score" )
    --hud.setLabelText ( cscore, ""..this.score ( ) )
    --local cscoreB = hud.getComponent ( hUser, "gameOverWinSplash.scoreB" )
    --hud.setLabelText ( cscoreB, ""..this.score ( ) )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
