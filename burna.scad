

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

module hole()
{
    cylinder(r=4.22/2,h=142,$fn=100);
    translate([0,0,141-4])  cylinder(r=10/2,h=5,$fn=100);
    cylinder(r=9.6/2,h=5,$fn=5);
    
}

module burna_mold()
{
  difference(){
    cube([280,305,140]);
    translate([-235,6.4,342]) rotate([360-90,0,0]) burna();
    holes();
    }
}

module burna_thin_screws()
{
    // Left Side
    translate([174,120-6,56]) rotate([-30,44,0]) translate([0,0,-9]) cylinder(r=3.5,h=20);
    translate([174,120-6,56]) rotate([-30,44,0]) translate([0,0,6.5]) cylinder(r=5,h=8);
    
    translate([174,120-10,56+45]) rotate([-30,44,0]) translate([0,0,-9-35]) cylinder(r=3.5,h=20);
    translate([174,120-10,56+45]) rotate([-30,44,0]) translate([0,0,5.5-34]) cylinder(r=5,h=8);
    
    translate([174,120-13,56+88]) rotate([-30,44,0]) translate([0,0,-9-72]) cylinder(r=3.5,h=20);
    translate([174,120-13,56+88]) rotate([-30,44,0]) translate([0,0,5.5-71]) cylinder(r=5,h=8);

    // Bottom Edge
    translate([174+12,144,56]) rotate([0,0,0]) translate([0,0,-9-8.5]) cylinder(r=3.5,h=20);
    translate([174+12,144,56]) rotate([0,0,0]) translate([0,0,6-8.5]) cylinder(r=5,h=8); 
 
    translate([174+12,144,56]) rotate([0,0,0]) translate([0,30,-9-8.5]) cylinder(r=3.5,h=20);
    translate([174+12,144,56]) rotate([0,0,0]) translate([0,30,6-8.5]) cylinder(r=5,h=8);    
 
    translate([174+12,144,56]) rotate([0,0,0]) translate([0,60,-9-8.5]) cylinder(r=3.5,h=20);
    translate([174+12,144,56]) rotate([0,0,0]) translate([0,60,6-8.5]) cylinder(r=5,h=8); 

    translate([174+12,144,56]) rotate([0,0,0]) translate([0,90,-9-8.5]) cylinder(r=3.5,h=20);
    translate([174+12,144,56]) rotate([0,0,0]) translate([0,90,6-8.5]) cylinder(r=5,h=8);   
  
    translate([174+12,144,56]) rotate([0,0,0]) translate([0,90,-9-8.5]) cylinder(r=3.5,h=20);
    translate([174+12,144,56]) rotate([0,0,0]) translate([0,90,6-8.5]) cylinder(r=5,h=8);  

    translate([174+12,144,56]) rotate([0,0,0]) translate([0,120,-9-8.5]) cylinder(r=3.5,h=20);
    translate([174+12,144,56]) rotate([0,0,0]) translate([0,120,6-8.5]) cylinder(r=5,h=8); 

    translate([174+12,144,56]) rotate([0,0,0]) translate([0,150,-9-8.5]) cylinder(r=3.5,h=20);
    translate([174+12,144,56]) rotate([0,0,0]) translate([0,150,6-8.5]) cylinder(r=5,h=8);   

   // Right Side
    translate([174,310,56]) rotate([0,45,0]) translate([0,0,-9]) cylinder(r=3.5,h=20);
    translate([174,310,56]) rotate([0,45,0]) translate([0,0,5]) cylinder(r=5,h=8); 
 
    translate([174,310,56+45]) rotate([0,45,0]) translate([0,0,-9-35]) cylinder(r=3.5,h=20);
    translate([174,310,56+45]) rotate([0,45,0]) translate([0,0,7-34]) cylinder(r=5,h=8);  
    
    translate([174,310,56+88]) rotate([0,45,0]) translate([0,0,-9-92+31]) cylinder(r=3.5,h=20);
    translate([174,310,56+88]) rotate([0,45,0]) translate([0,0,3-91+31]) cylinder(r=5,h=8);  

}


module burna_mold_thin()
{
  difference(){
    cube([185+6,314+3,112.655]);
    translate([-235-40,6.4,342-3]) rotate([360-90,0,0]) burna();
    translate([0,50,0]) rotate([90,90,0]) translate([0,76,-270]) cylinder(r=68,h=180,$fn=100);
    translate([115-15,-10,140]) rotate([0,45,0])  cube([130,340,90]);
    translate([230,-50,0]) rotate([0,0,45]) translate([-100,0,-5]) cube([250,150,150]);
    burna_thin_screws();
    }
}

module burna_mold_thin_bottom()
{
    difference(){
       burna_mold_thin();
       translate([115-15,-10,140-8]) rotate([0,45,0])  cube([130,340,20]);
    }
        
}

module burna_mold_thin_top()
{
    // front panel is 5.658 thick
    difference(){
       burna_mold_thin();
       translate([115-15,-10,140-8]) rotate([0,45,0]) translate([-70,0,-200])  cube([250,340,200]);
    }
        
}


//burna();
//burna_mold();


//burna_mold_thin();
//burna_mold_thin_bottom();
//burna_mold_thin_top();