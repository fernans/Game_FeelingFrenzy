--------------------------------------------------------------------------------
--  Handler.......... : onSensorCollision
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function feelingAI.onSensorCollision ( nSensorID, hTargetObject, nTargetSensorID )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	-- This handler is called when a sensor collision occurs.
	--
    
    if (nTargetSensorID==1) then
	-- remove target object
        this.dead ( )
        local p=scene.createRuntimeObject ( application.getCurrentUserScene ( ), "puntos" )	
        object.matchTranslation ( p, this.getObject ( ), object.kGlobalSpace )
        object.sendEvent ( p, "puntosAI", "onSet", table.getAt (this.puntosAnims ( ),this.ID ( )).."_" )
        
        --object.sendEvent ( p, "animAI", "onAddAnim", "puntos", table.getAt ( this.puntosAnims ( ),this.ID ( )) ,36, 25 )
        --object.sendEvent ( p, "animAI", "onSetAnim", "puntos" )
        --object.sendEvent ( p, "animAI", "onPlay" )
        
        local gameAI=scene.getTaggedObject ( application.getCurrentUserScene ( ), "sceneAI" )
        object.sendEvent ( gameAI, "inGameAI", "onAddScore", this.score ( ) )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
