--------------------------------------------------------------------------------
--  State............ : mainMenu
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Main.mainMenu_onLoop ( )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    local bg=hud.getComponent ( this.getUser ( ), "mainMenu.bg" )
    
    
    local dt=application.getLastFrameTime ( )
    local f=this.frame ( ) -- seconds
    f=f+dt
    while (f>1) do --12 frames... a 12 fps = 1 sec.
            f=f-1
    end
    this.frame ( f )
    local f=math.floor ( f*4 ) --pasar de tiempo (sec) a frames
    
    f=f*3 --cada 3 frames 0=0 1=3 2=6 3=9
    
    if (not this.FREE ( )) then
        hud.setComponentBackgroundImage ( bg, "pantalla_main_"..string.format ( "%02d", f ) )
    end
    
	--multipista
    --local anim_cat=hud.getComponent ( this.getUser ( ), "mainMenu.anim_cat" )
    --hud.setComponentBackgroundImage ( anim_cat, "ppal_cat_"..string.format ( "%02d", f ) )
    --local anim_bug=hud.getComponent ( this.getUser ( ), "mainMenu.anim_bug" )
    --hud.setComponentBackgroundImage ( anim_bug, "ppal_bug_"..string.format ( "%02d", f ) )
    --local anim_cloud=hud.getComponent ( this.getUser ( ), "mainMenu.anim_cloud" )
    --hud.setComponentBackgroundImage ( anim_cloud, "ppal_cloud_"..string.format ( "%02d", f ) )
    --local anim_huggs=hud.getComponent ( this.getUser ( ), "mainMenu.anim_huggs" )
    --hud.setComponentBackgroundImage ( anim_huggs, "ppal_huggs_"..string.format ( "%02d", f ) )
    
    --local anim_estrella=hud.getComponent( this.getUser(), "mainMenu.estrella" )
    --hud.setComponentRotation ( anim_estrella, f*2 )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
