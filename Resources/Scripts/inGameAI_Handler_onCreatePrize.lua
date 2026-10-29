--------------------------------------------------------------------------------
--  Handler.......... : onCreatePrize
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function inGameAI.onCreatePrize ( first )
--------------------------------------------------------------------------------
	
	if (first~=true) then
        --create Prize
        if (this.isPlaying ( ) and not this.inPause ( ) and this.currentPrize ( )==nil) then
            local f=scene.createRuntimeObject ( application.getCurrentUserScene(), "prize" )
            
            --wich Prize
            local id=math.floor (math.random ( 0, 5)) --0..4
            object.sendEvent(f,"premiosAI", "onSet", id)
            
            local animPrefix = table.getAt ( this.prizeAnims(), id )
            
            object.sendEvent ( f, "animAI", "onAddAnim", "normal", animPrefix.."_loop_", 20, 25)
            object.sendEvent ( f, "animAI", "onAddAnim", "explotar", animPrefix.."_explode_",13,25 )
            object.sendEvent ( f, "animAI", "onSetAnim", "normal" )
            object.sendEvent ( f, "animAI", "onPlay" )
            
            this.currentPrize ( f )
        end
    end
    -- launch NEXT PRIZE
    if (this.isPlaying ( )) then
        local next=hashtable.get ( this.levelValues ( ), "prizeStep" )
        object.postEvent(this.getObject ( ), next, object.getAIModelNameAt ( this.getObject ( ), 0),"onCreatePrize")
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
