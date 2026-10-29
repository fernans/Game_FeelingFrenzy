--------------------------------------------------------------------------------
--  State............ : buyMenu
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Main.buyMenu_onEnter ( )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    this.state ( "buyMenu" )
    local hUser = application.getCurrentUser ( )
    -- create the buyMenu HUD
    hud.destroyTemplateInstance ( hUser, "buyMenu" )
    hud.newTemplateInstance ( hUser, "buyMenu", "buyMenu" )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
