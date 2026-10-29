--------------------------------------------------------------------------------
--  Handler.......... : onApplicationWillQuit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Main.onApplicationWillQuit (  )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	-- This handler is called when the application is about to quit.
	-- No more script will be called after it.
	--
    local hUser = application.getCurrentUser ( )
	hud.callAction ( hUser, "mainMenu.soundBye" )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
