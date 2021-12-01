

slicesize = 25.5;
// 200 x 170 x infinite

module cutter(cutsize)
{
    translate([-5,-5,cutsize]) cube([280,400,131]);
    translate([-5,-5,-131])    cube([280,400,131]);
}

module burna(){

import("/Volumes/homes/gwest/3dprint/rocketstove/Sidewinder/03.stl");
}


module burna_mold()
{
  difference(){
    translate([-235,6.4,342]) rotate([360-90,0,0]) scale([1.1,1.1,1.1]) burna();  
   // translate([-235,6.4,342]) rotate([360-90,0,0]) burna();
   
    }
}


//burna();
burna_mold();
//front_plate();
//back_plate();