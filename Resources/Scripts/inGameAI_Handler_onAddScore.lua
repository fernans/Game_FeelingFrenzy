--------------------------------------------------------------------------------
--  Handler.......... : onAddScore
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function inGameAI.onAddScore ( _score )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    if (this.isPlaying ( ) and not this.inPause ( )) then
    
        local s=this.score ( )
        s=s+_score
        if (s<0) then s=0 end
        this.score ( s )
        log.message ( "score: "..s.." (".._score..")" )
        local h=this.happiness ( )
        local oldh=h
        if (_score>0) then h=h+1 else h=h-1 end
        this.happiness ( h )
        
        this.setMarcadorBarra (  )
        
        this.setAnimKimochi ( _score )
        
        --sonidos de near_win y near_loose
        if (_score>0 and this.happiness ( )==9) then --near win
            sound.stop ( this.getObject ( ), 4)
            sound.play ( this.getObject ( ), 4, 1, false, 1 )
        end
        if (_score<0 and this.happiness ( )==-9) then --near loose
            sound.stop ( this.getObject ( ), 5)
            sound.play ( this.getObject ( ), 5, 1, false, 1 )
        end
       
        -- ----- pasar de nivel
        if (this.happiness ( )==10) then
            this.isPlaying ( false )
            local l=this.level ( )+1
            --if (l<=4) then
                this.level(l)
                user.sendEvent ( application.getCurrentUser ( ), "Main", "onSetLevel", l, s ) --notificar a que nivel he llegado
                this.scoreSplash ( )
        end
        
        -- ----- perder
        if (this.happiness ( )==-10) then
            this.isPlaying ( false )
            this.gameOverLoose ( )
            user.sendEvent ( application.getCurrentUser ( ), "Main", "onGameOver")
        end
    
    end -- if this.isPlaying ( )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
