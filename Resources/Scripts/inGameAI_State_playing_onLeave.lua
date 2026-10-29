--------------------------------------------------------------------------------
--  State............ : playing
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function inGameAI.playing_onLeave ( )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
	this.isPlaying ( false )
    local slider=hud.getComponent ( application.getCurrentUser ( ) ,"marcador.root" )
    hud.setComponentVisible ( slider, false )
    --ocultar player
    object.setVisible ( this.player ( ), false )
    object.sendEvent ( this.player ( ), "animAI", "onStop" )
    --parar musica
    music.stop ( application.getCurrentUserScene ( ), 0.5 )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
