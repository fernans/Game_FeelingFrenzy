--------------------------------------------------------------------------------
--  State............ : playing
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function inGameAI.playing_onEnter ( )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    this.happiness ( 0 )
    local slider=hud.getComponent ( application.getCurrentUser ( ) ,"marcador.barraFace" )
    hud.setComponentBackgroundImage ( slider, "mini_"..this.sPrefix ( ).."_normal" )
    hud.setComponentPosition ( slider, 50, 50 )
    local sliderMain=hud.getComponent ( application.getCurrentUser ( ), "marcador.root" )
    hud.setComponentVisible ( sliderMain, true )
    local puntos = hud.getComponent ( application.getCurrentUser ( ), "marcador.puntos" )
    hud.setLabelText ( puntos, ""..this.score ( ) )
    local puntosB = hud.getComponent ( application.getCurrentUser ( ), "marcador.puntosB" )
    hud.setLabelText ( puntosB, ""..this.score ( ) )
    --mostrar player
    object.sendEvent ( this.player ( ), "playerAI", "onSetTrembling", 0 )
    object.sendEvent ( this.player ( ), "animAI", "onSetAnim", "normal" )
    object.setVisible ( this.player ( ), true )
    object.sendEvent ( this.player ( ), "playerAI", "onSetTarget", 0,this.Y ( ),0 )
    --musica
    local hScene = application.getCurrentUserScene ( )
    music.playAdditional ( hScene, hashtable.get(this.levelValues ( ),"music" ), 0.5 )
    music.setVolume ( hScene, 0.3 , 0 )
    --lanzar primer Feeling
    object.sendEvent(this.getObject ( ), object.getAIModelNameAt ( this.getObject ( ), 0),"onCreateFeeling")
    --lanzar primer Premio
    object.sendEvent (this.getObject ( ), object.getAIModelNameAt ( this.getObject ( ),0),"onCreatePrize", true )
    ----
    this.isPlaying ( true )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
