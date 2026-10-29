--------------------------------------------------------------------------------
--  Handler.......... : onSet
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function puntosAI.onSet ( prefix )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    local p=this.getObject ( )
    object.rotate ( p, 180,0,-90, object.kGlobalSpace )
    object.sendEvent ( p, "animAI", "onAddAnim", "puntos", prefix ,39, 25 ) --last frame, fps
    object.postEvent ( p, 1.6, "puntosAI", "onDead") -- 40/25 = 1,6 seg.
    --this.framesLimit ( 35 * 2 )
    object.sendEvent ( p, "animAI", "onSetAnim", "puntos" )
    object.sendEvent ( p, "animAI", "onPlay" )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
