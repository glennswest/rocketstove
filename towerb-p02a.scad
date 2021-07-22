use <towerb.scad>;

difference(){
  towerb_mold();
  translate([0,0,50]) cutter(120);
  translate([130,-1,-1]) cube([260,882,170]); 
}