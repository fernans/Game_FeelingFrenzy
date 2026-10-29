--------------------------------------------------------------------------------
--  State............ : aboutMenu
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Main.aboutMenu_onEnter ( )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    this.state ( "aboutMenu" )
    local hUser = application.getCurrentUser ( )
    -- create the mainMenu HUD
    hud.destroyTemplateInstance ( hUser, "aboutMenu" )
    hud.newTemplateInstance ( hUser, "aboutMenu", "aboutMenu" )
    
    --musica
    --local hScene = application.getCurrentUserScene ( )
    --music.playAdditional ( hScene, "musicB", 0.5 )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
