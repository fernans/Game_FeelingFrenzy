--------------------------------------------------------------------------------
--  Function......... : setAnim
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function animAI.setAnim ( _name )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    this.current ( 0 )
    
    if _name~=nil and hashtable.contains ( this.anim_name ( ), _name ) then
        this.name ( _name )
        this.prefix ( hashtable.get ( this.anim_name ( ), _name ))
        
        this.last ( hashtable.get ( this.anim_last ( ), _name ))
        this.FPS ( hashtable.get ( this.anim_fps ( ), _name ))
        this.next ( hashtable.get ( this.anim_next ( ), _name ))
        
        this.lastTime ( (this.last ( )+1)/this.FPS ( ))
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
