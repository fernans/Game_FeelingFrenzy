--------------------------------------------------------------------------------
--  Handler.......... : onSetBackground
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function inGameAI.onSetBackground ( _set )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    if (_set) then
        scene.setBackgroundTexture ( application.getCurrentUserScene(), hashtable.get ( this.levelValues ( ), "background" ) )
    else
        scene.setBackgroundTexture ( application.getCurrentUserScene(), "black" )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
