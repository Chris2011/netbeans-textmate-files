// door_stopper_simple ();

module door_stopper_simple ()
{
    height = 20  ;
    length = 125 ;
    width= 40 ;
    half_width  = width / 2;
    
    borders = 10; // 1 cm on each side

    top_cube_length = length - 4 * borders;
    top_cube_width  = width - 2 * borders;
    top_cube_height = height ;  // make it big enough
    top_z = height/2 + 4 ; // adjust manually ;)

    tip_cut_pos = length/2 - 0.5;

    difference() {
	translate ([-length/2.0, 0, 0]) {
    	    polyhedron (	
	    		points = [[0, -half_width, height], [0, half_width, height], [0, half_width, 0], [0, -half_width, 0], [length, -half_width, 0], [length, half_width, 0]],
			triangles = [[0,3,2], [0,2,1], [3,0,4], [1,2,5], [0,5,4], [0,1,5],  [5,2,4], [4,2,3], ]);
	}

	// top inset
	translate ([-1 * borders, 0, top_z]) {
	    # cube ([top_cube_length,
		     top_cube_width,
		     top_cube_height],
		    center=true) ;
	}
	// cut of the tip a bit

	translate ([tip_cut_pos, 0, 0]) {
	    # cube ([20,
		     width + 1,
		     height],
		    center=true) ;
	}
    }
}
