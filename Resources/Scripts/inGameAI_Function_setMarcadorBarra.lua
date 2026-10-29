--------------------------------------------------------------------------------
--  Function......... : setMarcadorBarra
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function inGameAI.setMarcadorBarra ( )
--------------------------------------------------------------------------------
	local h=this.happiness ( )
    local slider=hud.getComponent ( application.getCurrentUser ( ) ,"marcador.barraFace" )
    hud.setComponentPosition ( slider, 50+(h*5), 50 )
    --if (h~=oldh) then --cambio de cara
        local estado=""
        if (h<-4) then estado="veryangry"
        elseif (h<-1) then estado="angry"
        elseif (h<2) then estado="normal"
        elseif (h<5) then estado="happy"
        else estado="veryhappy"
        end
        hud.setComponentBackgroundImage ( slider, "mini_"..this.sPrefix ( ).."_"..estado )
    --end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
