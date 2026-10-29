--------------------------------------------------------------------------------
--  Handler.......... : onPause
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Main.onPause ( v )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
	local sceneObj = scene.getTaggedObject ( application.getCurrentUserScene ( ), "sceneAI" )
    local sceneAI = object.getAIModelNameAt ( sceneObj, 0 )
    object.sendEvent ( sceneObj, sceneAI, "onPause", v )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
