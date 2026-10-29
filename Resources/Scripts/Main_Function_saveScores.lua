--------------------------------------------------------------------------------
--  Function......... : saveScores
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Main.saveScores ( score, level, name)
--------------------------------------------------------------------------------
	
    -- set last on the table (no push down needed)
    if (score>table.getAt ( this.bestScores(), 0 )) then
        table.setAt ( this.bestScores ( ), 0, score )
        table.setAt ( this.bestLevels ( ), 0, level )
        table.setAt ( this.bestNames ( ), 0, name )
        -- check next scores (if over, swap values)
        for i = 0, 3 --from 0 to 3 (up to the second position)
        do
            local v1 = table.getAt ( this.bestScores(), i ) --current position
            local v2 = table.getAt ( this.bestScores(), i+1 ) --better position
            if (v1>v2) then -- swap values
                table.swap ( this.bestScores ( ), i, i+1 )
                --table.setAt ( this.bestScores(), i, v2 )
                --table.setAt ( this.bestScores(), i+1, v1 )
                table.swap ( this.bestLevels ( ), i, i+1 )
                --local l1 = table.getAt ( this.bestLevels ( ), i )   --current level
                --local l2 = table.getAt ( this.bestLevels ( ), i+1 ) --better level
                --table.setAt ( this.bestLevels ( ), i, l2 )
                --table.setAt ( this.bestLevels ( ), i+1, l1 )
                table.swap ( this.bestNames ( ), i, i+1 )
                --local n1 = table.getAt ( this.bestNames ( ), i )    --current name
                --local n2 = table.getAt ( this.bestNames ( ), i+1 )  --better name
                --table.setAt ( this.bestNames ( ), i, n2 )
                --table.setAt ( this.bestNames ( ), i+1, n1 )
            end
        end
    end
    --if not > than the last... do not enters in the bestScores table
    
    -- save scores from table bestScores
    for i = 0, 4 do
        local s=table.getAt ( this.bestScores(),i )
        application.setCurrentUserEnvironmentVariable ( "score"..i, s )
        local l=table.getAt ( this.bestLevels(),i )
        application.setCurrentUserEnvironmentVariable ( "level"..i, l)
        local n=table.getAt ( this.bestNames(),i )
        application.setCurrentUserEnvironmentVariable ( "name"..i, n )
    end
    application.saveCurrentUserEnvironment ( )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
