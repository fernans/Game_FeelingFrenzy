--------------------------------------------------------------------------------
--  Function......... : refreshScores
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Main.refreshScores ( )
--------------------------------------------------------------------------------
	
    this.state ( "scoresSplash" )
    local hUser = application.getCurrentUser ( )
    -- create the mainMenu HUD
    hud.destroyTemplateInstance ( hUser, "bestScores" )
    hud.newTemplateInstance ( hUser, "bestScores", "bestScores" )
    
    -- fill in the scores labels
    for i=0,4 do
        local cscore = hud.getComponent ( hUser, "bestScores.lScore"..i )
        local clevel = hud.getComponent ( hUser, "bestScores.lLevel"..i )
        local cname = hud.getComponent ( hUser, "bestScores.lName"..i )
        if (table.getAt ( this.bestLevels ( ),i) > 0 ) then
            hud.setLabelText ( cscore, ""..table.getAt ( this.bestScores ( ), i ) )
            hud.setLabelText ( clevel, ""..table.getAt ( this.bestLevels ( ), i ) )
            hud.setLabelText ( cname, ""..table.getAt ( this.bestNames ( ), i ) )
            hud.setComponentVisible ( cscore, true )
            hud.setComponentVisible ( clevel, true )
            hud.setComponentVisible ( cname, true )
        else    --no entry (hide)
            hud.setComponentVisible ( cscore, false )
            hud.setComponentVisible ( clevel, false )
            hud.setComponentVisible ( cname, false )
        end
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
