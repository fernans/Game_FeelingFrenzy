--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function anims.onEnterFrame (  )
--------------------------------------------------------------------------------
	
	local t=this.target ( )
    local o=this.getObject ( )
    if (t~=nil) then
        local d=application.getLastFrameTime ( )
        d=d*2
        local tx,ty,tz = object.getTranslation ( t, object.kGlobalSpace )
        object.translateTo ( o, tx,ty,tz, object.kGlobalSpace, d )
        tx,ty,tz = object.getRotation ( t, object.kGlobalSpace )
        object.rotateTo ( o, tx,ty,tz, object.kGlobalSpace, d )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
