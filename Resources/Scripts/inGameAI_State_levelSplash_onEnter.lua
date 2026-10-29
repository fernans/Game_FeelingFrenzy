--------------------------------------------------------------------------------
--  State............ : levelSplash
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function inGameAI.levelSplash_onEnter ( )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    this.setLevel ( this.level ( ) )
    
    local hUser = application.getCurrentUser ( )
    hud.destroyTemplateInstance ( hUser, "levelSplash" )
    hud.newTemplateInstance ( hUser, "levelSplash", "levelSplash" )
    local bg = hud.getComponent ( hUser, "levelSplash.background" )
    hud.setComponentBackgroundImage ( bg, "pantalla_"..this.sPrefix ( ).."_splash" )
    --local soundAction= hud.getAction ( hUser, "levelSplash.sound" )
    --hud.pushActionCommandRuntimeArgument ( soundAction , this.level ( )+6 ) --6..7..8..9
	hud.callAction ( hUser, "levelSplash.sound", this.level ( )+5 )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
