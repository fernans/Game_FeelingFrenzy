--------------------------------------------------------------------------------
--  Function......... : setAnimKimochi
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function inGameAI.setAnimKimochi ( _score )
--------------------------------------------------------------------------------
	
        --lanzar animaciones
        local status="normal"
        if (this.happiness ( )<0) then status="enfado" end
        if (this.happiness ( )<-5) then status="muyenfado" end
        
        if (_score>0) then --premios
            if (this.happiness ( )==0) then
                -- salimos de enfado (a normal)
                object.sendEvent ( this.player ( ), "animAI", "onSetAnim", "enfado_upgrade")
                object.sendEvent ( this.player ( ), "playerAI", "onSetTrembling", 0 );
                sound.stop ( this.getObject ( ), 4)
                sound.play ( this.getObject ( ), 2, 1, false, 1 )
            elseif (this.happiness ( )==-5) then
                -- salimos de muyenfado (a enfado)
                object.sendEvent ( this.player ( ), "animAI", "onSetAnim", "muyenfado_upgrade")
                object.sendEvent ( this.player ( ), "playerAI", "onSetTrembling", 1 );
                sound.stop ( this.getObject ( ), 2)
                sound.play ( this.getObject ( ), 2, 1, false, 1 )
            else -- alegria (temp)
                object.sendEvent ( this.player ( ), "animAI", "onSetAnim", status.."_smile")
                sound.stop ( this.getObject ( ), 0)
                sound.play ( this.getObject ( ), 0, 1, false, 1 )
            end
        else --castigos
            if (this.happiness ( )==-1) then
                -- entramos en enfado (desde normal)
                object.sendEvent ( this.player ( ), "animAI", "onSetAnim", "normal_downgrade")
                object.sendEvent ( this.player ( ), "playerAI", "onSetTrembling", 1 );
                sound.stop ( this.getObject ( ), 3)
                sound.play ( this.getObject ( ), 3, 1, false, 1 )
            elseif (this.happiness ( )==-6) then
                -- entramos en muyenfado (desde enfado)
                object.sendEvent ( this.player ( ), "animAI", "onSetAnim", "enfado_downgrade")
                object.sendEvent ( this.player ( ), "playerAI", "onSetTrembling", 2 );
                sound.stop ( this.getObject ( ), 3)
                sound.play ( this.getObject ( ), 3, 1, false, 1 )
            else -- tristeza (temp)
                object.sendEvent ( this.player ( ), "animAI", "onSetAnim", status.."_hit")
                sound.stop ( this.getObject ( ), 1)
                sound.play ( this.getObject ( ), 1, 1, false, 1 )
            end
        end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
