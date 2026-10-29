--------------------------------------------------------------------------------
--  State............ : levelMenu
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Main.levelMenu_onEnter ( )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
	this.state ( "levelMenu" )
    local hUser = application.getCurrentUser ( )
    -- create the mainMenu HUD
    hud.destroyTemplateInstance ( hUser, "levelMenu" )
    if (not this.FREE ( )) then
        hud.newTemplateInstance ( hUser, "levelMenu", "levelMenu" )
    else --FREE
        hud.newTemplateInstance ( hUser, "levelMenuFREE", "levelMenu" )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
