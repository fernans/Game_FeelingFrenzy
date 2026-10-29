--------------------------------------------------------------------------------
--  Handler.......... : onCreateFeeling
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function inGameAI.onCreateFeeling (  )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    if (this.isPlaying ( ) and not this.inPause ( )) then
        
        local f=scene.createRuntimeObject ( application.getCurrentUserScene(), "feeling" )
        
        -- init "feeling" params (acording level hashtable)
        local l=this.levelValues ( )
        
        -- good or bad
        local scoref=0
        local animPrefix
        local id
                
        local latForce=math.random ( hashtable.get ( l,"latForceMin" ), hashtable.get ( l,"latForceMax" ) )
        local mass=0.1*latForce
        local latFreq=math.random ( hashtable.get ( l,"latFreqMin" ), hashtable.get ( l,"latFreqMax" ) )
        local damp=math.random ( hashtable.get ( l, "dampingMin" ), hashtable.get ( l, "dampingMax" ) )
       
        if (math.random (0,100) < hashtable.get ( l, "goodPercentage" ) ) then
            --bueno
            scoref=10*math.floor ( math.random(1,10) );
            id = math.random ( 0, 5 )
            animPrefix=table.getAt ( this.feelingAnims ( ), id )
        else
            --malo
            scoref=-50
            id = math.random ( 6, 10 )
            animPrefix=table.getAt ( this.feelingAnims ( ), id )
            latForce=0
        end

        object.sendEvent ( f, "feelingAI", "onSetParams", id, scoref, nil, damp, latForce, latFreq ) -- nil=mass
        --set anim (visible feedback)
        
        object.sendEvent ( f, "animAI", "onAddAnim", "normal", animPrefix.."_", 24, 25)
        object.sendEvent ( f, "animAI", "onSetAnim", "normal" )
        object.sendEvent ( f, "animAI", "onPlay" )

    end -- if this.isPlaying ( )
    -- launch next CreateFeeling (based on the level timeStep)
        -- it doesnt matter if we are "inPause"... (if paused... next evet will be ignored also
    if (this.isPlaying ( )) then
        local next=hashtable.get ( this.levelValues ( ), "timeStep" )
        object.postEvent(this.getObject ( ), next, "inGameAI" ,"onCreateFeeling")
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
