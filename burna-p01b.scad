use <burna.scad>;

difference(){
  burna_mold();
  translate([0,0,90]) cutter(120);
  translate([-1,-1,-1]) cube([131,882,170]);
}