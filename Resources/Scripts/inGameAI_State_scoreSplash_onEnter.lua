--------------------------------------------------------------------------------
--  State............ : scoreSplash
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function inGameAI.scoreSplash_onEnter ( )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    local hUser = application.getCurrentUser ( )
    hud.destroyTemplateInstance ( hUser, "scoreSplash" )
    hud.newTemplateInstance ( hUser, "scoreSplash", "scoreSplash" )
    local bg = hud.getComponent ( hUser, "scoreSplash.background" )
    hud.setComponentBackgroundImage ( bg, "pantalla_"..this.sPrefix ( ).."_won" ) 
    local cscore = hud.getComponent ( hUser, "scoreSplash.score" )
    hud.setLabelText ( cscore, ""..this.score ( ) )
    local cscoreB = hud.getComponent ( hUser, "scoreSplash.scoreB" )
    hud.setLabelText ( cscoreB, ""..this.score ( ) )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
