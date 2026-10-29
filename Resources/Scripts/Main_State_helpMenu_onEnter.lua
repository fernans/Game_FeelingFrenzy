--------------------------------------------------------------------------------
--  State............ : helpMenu
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Main.helpMenu_onEnter ( )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
	this.state ( "helpMenu" )
    local hUser = application.getCurrentUser ( )
    -- create the mainMenu HUD
    hud.destroyTemplateInstance ( hUser, "helpMenu" )
    hud.newTemplateInstance ( hUser, "helpMenu", "helpMenu" )
    
    --musica
    --local hScene = application.getCurrentUserScene ( )
    --music.playAdditional ( hScene, "musicB", 0.5 )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
