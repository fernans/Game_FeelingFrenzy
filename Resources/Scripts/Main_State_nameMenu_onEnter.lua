--------------------------------------------------------------------------------
--  State............ : nameMenu
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Main.nameMenu_onEnter ( )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    this.state ( "nameMenu" )
    local hUser = application.getCurrentUser ( )
    -- create the mainMenu HUD
    hud.destroyTemplateInstance ( hUser, "nameSplash" )
    hud.newTemplateInstance ( hUser, "nameSplash", "nameSplash" )
    --musica
    local hScene = application.getCurrentUserScene ( )
    music.playAdditional ( hScene, "musicB", 0.5 )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
