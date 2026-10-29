--------------------------------------------------------------------------------
--  State............ : playing
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function inGameAI.playing_onLoop ( )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    local current=this.score ( )
	local hComp = hud.getComponent ( application.getCurrentUser ( ), "marcador.puntos" )
    local hCompB = hud.getComponent ( application.getCurrentUser ( ), "marcador.puntosB" )
    if (hComp) then
        local text= hud.getLabelText ( hComp )
        local numb = string.toNumber ( text )
        if (numb) then
            if (numb~=current) then
                local step=math.floor( (current-numb )/2)
                numb=numb+step
                if (math.abs ( numb-current )<2) then numb=current end
                hud.setLabelText ( hComp, ""..numb )
                
                hud.setLabelText ( hCompB, ""..numb )
            end
        end
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
