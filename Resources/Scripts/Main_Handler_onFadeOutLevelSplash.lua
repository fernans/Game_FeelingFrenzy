--------------------------------------------------------------------------------
--  Handler.......... : onFadeOutLevelSplash
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Main.onFadeOutLevelSplash (  )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    local sceneObj = scene.getTaggedObject ( application.getCurrentUserScene ( ), "sceneAI" )
    if (sceneObj) then
        local sceneAI = object.getAIModelNameAt ( sceneObj, 0 )
        object.sendEvent ( sceneObj, sceneAI, "onFadeOutLevelSplash")
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
