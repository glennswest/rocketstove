use <towera.scad>;

// 200 x 170 x infinite
//  cube([260,880,130]);

difference(){
  towera_mold();
  translate([0,0,0]) cutter(50);
  translate([-1,-1,-1]) cube([131,882,132]);
}