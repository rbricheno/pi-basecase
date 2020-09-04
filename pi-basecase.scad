$fn=100;
module case() {
	difference() {
		// The plate itself
		union() {
			translate([0,-35.86,0])
			cube([76.6,71.72,3]);

			translate([-5,-30.86,0])
			cube([10,61.72,3]);

			translate([51.6,-30.86,0])
			cube([30,61.72,3]);

			// The rounded corners
			translate([0,-30.86,0])
			cylinder(d=10, h=3);
			translate([76.6,-30.86,0])
			cylinder(d=10, h=3);
			translate([0,30.86,0])
			cylinder(d=10, h=3);
			translate([76.6,30.86,0])
			cylinder(d=10, h=3);
		}
		// If you wanted the plate *without*
      // rounded corners,
      // it would be:
      // cube([86.6,71.72,3]);

		// The screw holes
		// for the pi
		translate([0,-24.5,-5])
		cylinder(d=2.75, h=10);
		translate([58,-24.5,-5])
		cylinder(d=2.75, h=10);
		translate([0,24.5,-5])
		cylinder(d=2.75, h=10);
		translate([58,24.5,-5])
		cylinder(d=2.75, h=10);

		// The screw holes
		// for the ssd
		translate([0,-30.86,-5])
		cylinder(d=3.1, h=10);
		translate([76.6,-30.86,-5])
		cylinder(d=3.1, h=10);
		translate([0,30.86,-5])
		cylinder(d=3.1, h=10);
		translate([76.6,30.86,-5])
		cylinder(d=3.1, h=10);


		// The hexagonal cutouts
		for (i=[0]) {
			for(j=[5:9]) {
				translate([7+i*18,-70 + j*10,-5])
				cylinder(d=9, h=10, $fn=6);
			}
		}

		for (i=[1:2]) {
			for(j=[4:10]) {
				translate([7+i*18,-70 + j*10,-5])
				cylinder(d=9, h=10, $fn=6);
			}
		}

		for (i=[3]) {
			for(j=[6:8]) {
				translate([7+i*18,-70 + j*10,-5])
				cylinder(d=9, h=10, $fn=6);
			}
		}

		for (i=[0:1]) {
			for(j=[4:9]) {
				translate([7 + 9 +i*18,-70 + 5 + j*10,-5])
				cylinder(d=9, h=10, $fn=6);
			}
		}

		for (i=[2]) {
			for(j=[5:8]) {
				translate([7 + 9 +i*18,-70 + 5 + j*10,-5])
				cylinder(d=9, h=10, $fn=6);
			}
		}

		for (i=[3]) {
			for(j=[4:9]) {
				translate([7 + 9 +i*18,-70 + 5 + j*10,-5])
				cylinder(d=9, h=10, $fn=6);
			}
		}
	}
}


// Projection, used to make the DXF
// for laser cutting.
// projection(cut = true) case();

// Or if you want it 3D printed:
case();

// Or in two parts
// (superglue together) for
// printing on printers with a
// very small print bed:
// 
//color("red")
//difference() {
//case();
//translate([62,-50,-5])
//cube([20,100,20]);
//translate([54,-50,-5])
//cube([20,100,6.5]);
//}
//
//color("green")
//translate([0,0,-1])
//difference() {
//case();
//translate([-10,-50,-5])
//cube([64,100,20]);
//translate([-10,-50,1.5])
//cube([72,100,6.5]);
//}