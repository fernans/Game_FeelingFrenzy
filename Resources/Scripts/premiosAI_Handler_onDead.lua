--------------------------------------------------------------------------------
--  Handler.......... : onDead
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function premiosAI.onDead (  )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    local inGameAI = scene.getTaggedObject ( application.getCurrentUserScene ( ), "sceneAI" )
    object.sendEvent ( inGameAI , "inGameAI", "onClearPrize" )
	scene.destroyRuntimeObject ( application.getCurrentUserScene ( ), this.getObject ( ) )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
