slicesize = 25.5;

module cutter()
{
    translate([-5,-5,25.5]) cube([280,900,131]);
    translate([-5,-5,-131])    cube([280,900,131]);
}

module towera(){

import("/Volumes/homes/gwest/cnc/rocketstove/Sidewinder/01.stl");
}

module towera_mold()
{
  difference(){
    cube([260,880,111]);
    translate([210+25,840+20,-74+10-1]) rotate([90,-90,0]) towera();
    }
}

difference(){
    towera_mold();
    translate([0,0,4*25.5]) cutter();
}