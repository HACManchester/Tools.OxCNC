difference() {

	// Outside outline
	square([20,110]);

	// Screw holes
	translate([15,5,0]) { circle(2.5, $fn=50); }
	translate([15,50,0]) { circle(2.5, $fn=50); }

	// Sensor hole
	translate([10,100,0]) { circle(6, $fn=50); }
}
