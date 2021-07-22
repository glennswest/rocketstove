use <burna.scad>;

difference(){
  burna_mold();
  translate([0,0,90]) cutter(120);
  translate([130,-1,-1]) cube([260,882,170]); 
}