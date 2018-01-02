difference() {

	// Outside outline
	square([50,100]);

	// Sensor hole
   for(x = [40 : 5 : 85]) {
		translate([25, x, 0]) { circle(6, $fn=50); }
	}

	// Screw holes
	translate([8,5,0]) { circle(2.5, $fn=50); }
	translate([42,5,0]) { circle(2.5, $fn=50); }
}
