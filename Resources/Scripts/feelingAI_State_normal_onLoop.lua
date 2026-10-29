--------------------------------------------------------------------------------
--  State............ : normal
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function feelingAI.normal_onLoop ( )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    -- balanceo lateral
    local f=this.latFase ( )+application.getLastFrameTime ( )
    this.latFase ( f )
    local intensity=math.cos ( f * 360 * this.latFreq ( ) )*this.latForce ( )
    --log.message ( f.." _ "..intensity )
    dynamics.addForce ( this.getObject ( ), intensity,0,0, object.kGlobalSpace )
    
    --comprobar si fin de playing... para matar premio
    local inGameAI = scene.getTaggedObject ( application.getCurrentUserScene ( ), "sceneAI" )
    local var = object.getAIVariable ( inGameAI, "inGameAI", "isPlaying" )
	local x,y,z=object.getTranslation ( this.getObject ( ), object.kGlobalSpace )
    if (y<-1 or not var) then
        this.dead ( )
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
