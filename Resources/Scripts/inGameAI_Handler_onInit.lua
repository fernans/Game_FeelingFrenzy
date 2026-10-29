--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function inGameAI.onInit (  )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	-- This handler is called once, at AI instance initialization.
	--
    this.init ( )
    
    hud.destroyTemplateInstance ( application.getCurrentUser ( ), "marcador" )
    hud.newTemplateInstance ( application.getCurrentUser ( ), "marcador", "marcador" )
    local slider=hud.getComponent ( application.getCurrentUser ( ), "marcador.root" )
    hud.setComponentVisible ( slider, false )
    hud.setSoundBank ( application.getCurrentUser ( ), "sbHUD" )
    
	local p = scene.getTaggedObject ( application.getCurrentUserScene ( ), "player" )
    if (p~=nil) then
        this.player ( p )
        -- crear tabla de valores de level
        --this.setLevel ( this.level ( ) )
        --object.sendEvent ( p, "animAI", "onSetAnim", "normal" )
        --object.sendEvent ( p, "animAI", "onPlay" )
        --object.setVisible ( p, false )
    end
    
     --this.postEvent ( 3, "onPause", true )
    
    ----------------- forzar textos en memoria
    --for f = 0,35
    --do
    --    local s="01_curious__"..string.format ( "%03d", f )
    --    application.forceResourceToStayLoaded ( s, application.kResourceTypeTexture, true )
    --end
    --
    
    -- loading...
    log.warning ( "destroy inGameAI.onInit" )
    hud.destroyTemplateInstance ( application.getCurrentUser ( ), "loading" )
    --
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
