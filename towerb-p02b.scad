use <towerb.scad>;

difference(){
  towerb_mold();
  translate([0,0,50]) cutter(120);
  translate([-1,-1,-1]) cube([131,882,170]);
}