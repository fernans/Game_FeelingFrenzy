--------------------------------------------------------------------------------
--  Handler.......... : onSetBackground
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Main.onSetBackground ( _set )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    local sceneObj = scene.getTaggedObject ( application.getCurrentUserScene ( ), "sceneAI" )
    local sceneAI = object.getAIModelNameAt ( sceneObj, 0 )
    object.sendEvent ( sceneObj, sceneAI, "onSetBackground", _set )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
