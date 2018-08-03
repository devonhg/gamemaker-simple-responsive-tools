///@param X The x location to initiate the view
///@param Y The y location to initiate the view
///@param Wview The width of the view
///@param Hview The height of the view
///@param *Scale how large to scale the port, 1 by default
///@param *Obj The object to follow
 
/*
    This script initiates a global called global.cam. Using this global you can manipulate the camera.
   
    Ideally, put this script in the "room_start" event.
 
    Learn more about this script here: https://www.youtube.com/watch?v=2Jbaf2qfmy4
*/
show_debug_message( "===ini_camera.gml: Cameras Initiated" ); 

#region Set our variables
    var scale = 1;
    var obj = -1;
    var view_index = 0;
 
    var xx = argument[0];
    var yy = argument[1];
    var wview = argument[2];
    var hview = argument[3];
    var wport = wview;
    var hport = hview;
 
    if argument_count > 4 scale = argument[4];
    if argument_count > 5 obj = argument[5];
#endregion
 
#region Handle our view
    if !view_enabled{ view_enabled = true; }
    view_set_visible(view_index, true);
    view_set_wport(view_index, wport);
    view_set_hport(view_index, hport);
#endregion
 
#region Create and Set Our Camera
    if( variable_global_exists("cam") ){ camera_destroy( global.cam ); }
    global.cam = camera_create_view(0,0,wport,hport,0,obj,-1,-1,0,0);
    view_camera[view_index] = global.cam;
#endregion
 
#region Set our Window and App Surface
    window_set_rectangle(
        (display_get_width() - view_wport[view_index] * scale) * .5,
        (display_get_height() - view_hport[view_index] * scale ) * .5,
        view_wport[view_index]* scale,
        view_hport[view_index]* scale
    );
    surface_resize(application_surface, view_wport[view_index] * scale, view_hport[view_index] * scale);
#endregion