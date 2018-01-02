difference() {

	// Outside outline
	square([30,80]);

	// Screw holes
	translate([25,5,0]) { circle(2.5, $fn=50); }
	translate([25,45,0]) { circle(2.5, $fn=50); }

	// Sensor hole
	translate([10,70,0]) { circle(6, $fn=50); }

	// Clearance
	translate([20,50,0]) { square([35,100]); }
}
