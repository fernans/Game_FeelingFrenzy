--------------------------------------------------------------------------------
--  Handler.......... : onHUDoption
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Main.onHUDoption ( targetState )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
	if (targetState=="mainMenu") then
        this.mainMenu ( )
    elseif (targetState=="nameSplash") then
        this.nameMenu( )
    elseif (targetState=="levelMenu") then
        this.levelMenu ( )
    elseif (targetState=="helpMenu") then
        this.helpMenu ( )
    elseif (targetState=="buy") then
        this.buyMenu( )
    elseif (targetState=="bestScores") then
        this.scoresSplash ( )
    elseif (targetState=="inGame") then
        this.inGame ( )
    elseif (targetState=="aboutMenu") then
        this.aboutMenu( )
    else
    log.warning ( "no correct targetState: "..targetState )
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
