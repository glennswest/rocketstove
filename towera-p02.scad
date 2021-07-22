use <towera.scad>;

difference(){
  towera_mold();
  translate([0,0,50]) cutter(120);
 // translate([66,20,20]) cube([126,840,70]);  
}