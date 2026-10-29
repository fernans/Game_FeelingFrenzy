--------------------------------------------------------------------------------
--  Handler.......... : onEncoger
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function playerAI.onEncoger (  )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    local permitido = true
    for i=1,object.getAIModelCount ( this.getObject ( ) ) do
        local n=object.getAIModelNameAt ( this.getObject ( ), i-1 ) 
        if (n=="crecerAI" or n=="encogerAI") then
            permitido = false
        end
    end
    if permitido then
        object.addAIModel ( this.getObject ( ), "encogerAI" )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
