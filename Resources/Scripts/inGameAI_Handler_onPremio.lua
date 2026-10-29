--------------------------------------------------------------------------------
--  Handler.......... : onPremio
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function inGameAI.onPremio ( t )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    sound.stop ( this.getObject ( ), 6)
    sound.play ( this.getObject ( ), 6, 1, false, 1 )
    if (t==0) then --gota azul
        this.sendEvent ( "onAddAI", "gotaAzulAI" )
        sound.stop ( this.getObject ( ), 7)
        sound.play ( this.getObject ( ), 7, 1, false, 1 )
    elseif (t==1) then --gota negra
        this.sendEvent ( "onAddAI", "gotaNegraAI" )
        sound.stop ( this.getObject ( ), 8)
        sound.play ( this.getObject ( ), 8, 1, false, 1 )
    elseif (t==2) then --grande
        object.sendEvent ( this.player ( ), "playerAI", "onCrecer" )
    elseif (t==3) then --pek
        object.sendEvent ( this.player ( ), "playerAI", "onEncoger" )
    elseif (t==4) then --zero
        local anterior=this.happiness ( )
        this.happiness ( 0 )
        this.setMarcadorBarra (  )
        this.setAnimKimochi ( 0-anterior )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
