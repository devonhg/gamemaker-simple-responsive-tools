draw_set_color(c_white);
draw_set_halign( fa_center );
draw_set_valign( fa_middle );

	//Draw Base Box
		draw_rectangle( responsive_x(.5), responsive_y( 4 ), responsive_x( 11.5 ), responsive_y(4)+100, false );

	//Set up a breakpoint
		var _bp = 0;
		if( camera_get_view_width(view_camera[view_current]) < 300 ){
			_bp = -.1; 
		}

	//Draw the content
		draw_set_color( c_black);
		draw_line_width( responsive_x( .5 )-1, responsive_y(4.8), responsive_x( 11.5 ), responsive_y(4.8), 3 );
		responsive_text( responsive_x( 6 ), responsive_y( 4 )+15, alert_title, responsive_y(.5 + _bp), responsive_x(10), c_black );
		responsive_text( responsive_x( 6 ), responsive_y( 4 )+50, alert_description, responsive_y(.4 + _bp), responsive_x(10), c_black );
		responsive_text( responsive_x( 6 ), responsive_y( 4 )+85, "Press any key to continue", responsive_y(.4 + _bp), responsive_x(10), c_black );

draw_set_color( -1 );
draw_set_halign( -1 );
draw_set_valign( -1 );