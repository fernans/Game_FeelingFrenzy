--------------------------------------------------------------------------------
--  Handler.......... : onFadeOutScoreSplash
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Main.onFadeOutScoreSplash (  )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    local sceneObj = scene.getTaggedObject ( application.getCurrentUserScene ( ), "sceneAI" )
    local sceneAI = object.getAIModelNameAt ( sceneObj, 0 )
    if (not this.FREE ( )) then
        object.sendEvent ( sceneObj, sceneAI, "onFadeOutScoreSplash")
    else --FREE
        object.sendEvent ( sceneObj, sceneAI, "onFadeOutScoreSplashFREE" )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
