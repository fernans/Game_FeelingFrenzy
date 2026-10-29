--------------------------------------------------------------------------------
--  Handler.......... : onCreateFeeling
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function gotaAzulAI.onCreateFeeling ( x )
--------------------------------------------------------------------------------
    
        local feelingAnims = object.getAIVariable ( this.getObject ( ), "inGameAI", "feelingAnims" )
        
        --buenos
        local scoref=10*math.floor ( math.random(1,10) );
        local id = math.random ( 0, 5 )
        local animPrefix = table.getAt ( feelingAnims, id)
        local damp=math.random ( 10, 20 )
        --malo
        --local scoref=-100
        --local id = math.random ( 6, 10 )
        --local animPrefix=table.getAt ( feelingAnims, id )

        local f=scene.createRuntimeObject ( application.getCurrentUserScene(), "feeling" )
        
        object.sendEvent ( f, "animAI", "onAddAnim", "normal", animPrefix.."_", 24, 25)
        object.sendEvent ( f, "animAI", "onSetAnim", "normal" )
        object.sendEvent ( f, "animAI", "onPlay" )
        object.sendEvent ( f, "feelingAI", "onSetX", x )
        object.sendEvent ( f, "feelingAI", "onSetParams", id, scoref, nil, damp, 0, 0 ) -- nil=mass

--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
