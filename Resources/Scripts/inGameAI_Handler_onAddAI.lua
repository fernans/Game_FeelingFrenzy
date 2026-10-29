--------------------------------------------------------------------------------
--  Handler.......... : onAddAI
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function inGameAI.onAddAI ( model  )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    local valido=true
    for i=0, object.getAIModelCount ( this.getObject ( ) ) do
        if (object.getAIModelNameAt ( this.getObject ( ),i )==model) then
            valido=false
        end
    end
    if (valido) then
        object.addAIModel ( this.getObject ( ), model )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
