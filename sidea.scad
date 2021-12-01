slicesize = 25.5;
// 200 x 170 x infinite
// cube([360,310,165]);
module cutter(cutsize)
{
    translate([-5,-5,cutsize]) cube([370,330,165]);
    translate([-5,-5,-165])    cube([370,330,165]);
}

module sidea(){

import("/Volumes/homes/gwest/cnc/rocketstove/Sidewinder/08.stl");
}

module hole()
{
    cylinder(r=4.22/2,h=142,$fn=100);
    translate([0,0,141-4])  cylinder(r=10/2,h=5,$fn=100);
    cylinder(r=9.6/2,h=5,$fn=5);
    
}
module holes()
{
    for ( i = [35 : 100 : 875] ){
      translate([10,i,-1]) hole();
      translate([250,i,-1]) hole();  
    //  translate([130-25,i,15]) rotate([0,90,0]) cylinder(r=9.6,h=50);  
    //  translate([130-25,i,130-3]) rotate([0,90,0]) cylinder(r=9.6,h=50); 
      
      
    } 
    translate([8,42,15]) rotate([90,0,0]) cylinder(r=4.22/2,h=50);
    translate([360-8,42,15]) rotate([90,0,0]) cylinder(r=4.22/2,h=50); 
    translate([360-8,42,165-15]) rotate([90,0,0]) cylinder(r=4.22/2,h=50);
    translate([8,42,165-15]) rotate([90,0,0]) cylinder(r=4.22/2,h=50); 
    
    translate([8,330,15]) rotate([90,0,0]) cylinder(r=4.22/2,h=50);
    translate([360-8,330,15]) rotate([90,0,0]) cylinder(r=4.22/2,h=50); 
    translate([360-8,330,165-15]) rotate([90,0,0]) cylinder(r=4.22/2,h=50);
    translate([8,330,165-15]) rotate([90,0,0]) cylinder(r=4.22/2,h=50); 
    
    translate([180+15,330,15]) rotate([90,0,0]) cylinder(r=4.22/2,h=50);
    translate([180-15,330,15]) rotate([90,0,0]) cylinder(r=4.22/2,h=50);
    translate([180+15,330,165-15]) rotate([90,0,0]) cylinder(r=4.22/2,h=50);
    translate([180-15,330,165-15]) rotate([90,0,0]) cylinder(r=4.22/2,h=50);  
    
    translate([180-15,10,15]) rotate([90,0,0]) cylinder(r=4.22/2,h=50);
    translate([180,10,15]) rotate([90,0,0]) cylinder(r=4.22/2,h=50);
    translate([180-15,10,65]) rotate([90,0,0]) cylinder(r=4.22/2,h=50);
    translate([180,10,65]) rotate([90,0,0]) cylinder(r=4.22/2,h=50);  
       
}
module sidea_mold()
{
  difference(){
    cube([360,310,165]);
    translate([15,-1,10]) rotate([-90,-90,0]) sidea();
    holes();
    }
}

module cshole()
{
    cylinder(r=4.5/2,h=20);
    cylinder(r=10/2,h=5);
    
}
module front_plate()
{
    difference(){
        cube([300,10,140]);
        translate([15,12,15]) rotate([90,0,0]) cshole();
        translate([260-15,12,15]) rotate([90,0,0]) cshole();
        translate([260-15,12,140-15]) rotate([90,0,0]) cshole();
        translate([15,12,140-15]) rotate([90,0,0]) cshole();
        
        translate([160-15,12,15]) rotate([90,0,0]) cshole();
        translate([115,12,15]) rotate([90,0,0]) cshole();
        translate([160-15,12,65]) rotate([90,0,0]) cshole();
        translate([115,12,65]) rotate([90,0,0]) cshole();  
        
        translate([430+25,50,-354+11]) rotate([90,-90,0]) sidea();
    }
    
}

module back_plate()
{
    difference(){
        cube([260,10,140]);
        translate([15,12,15]) rotate([90,0,0]) cshole();
        translate([260-15,12,15]) rotate([90,0,0]) cshole();
        translate([260-15,12,140-15]) rotate([90,0,0]) cshole();
        translate([15,12,140-15]) rotate([90,0,0]) cshole();
        
        translate([160-15,12,15]) rotate([90,0,0]) cshole();
        translate([115,12,15]) rotate([90,0,0]) cshole();
        translate([160-15,12,65]) rotate([90,0,0]) cshole();
        translate([115,12,65]) rotate([90,0,0]) cshole();  
        
    }
    
}

//sidea();
sidea_mold();
//front_plate();
//back_plate();