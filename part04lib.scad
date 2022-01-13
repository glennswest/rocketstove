
module part04(){
import("/Volumes/homes/gwest/3dprint/rocketstove/Sidewinder/04.stl");
}

module hole()
{
      
    translate([0,0,0]) cylinder(r=3.4/2,h=30,$fn=128);
    translate([0,0,30-8]) cylinder(r=6/2,h=8,$fn=128); 
    
}

module mold04box(){
    cube([465,310,120]);
}

module tmold04base(){
    
  difference(){
    mold04box();    
    translate([8,5,105]) rotate([-90,0,0]) translate([100,-50,0])  part04();
    }
}

module tmold04()
{
 difference(){
  translate([465,-310,120]) rotate([0,180,0]) tmold04base();
  translate([-95,-315,110-6]) rotate([0,45,0]) cube([100,340,200]);
  translate([-25,-300,0]) rotate([0,0,45]) translate([250-20,-400-10,55]) cube([175+40,150,140]);
  // Door number 1
  mold04door1frame();  
  mold04door1screws();   
  }
}

  module mold04door1screws()
  {
      
    translate([-35,-116.1+.8,10]) rotate([90,0,0]) translate([348.5,57.1,192]) rotate([0,90,0]) hole();
    translate([-35,-116.1+.8,25]) rotate([90,0,0]) translate([348.5,57.1,192]) rotate([0,90,0]) hole();
    translate([-35,-116.1+.8,40]) rotate([90,0,0]) translate([348.5,57.1,192]) rotate([0,90,0]) hole();
    translate([-35,-116.1+.8,55]) rotate([90,0,0]) translate([348.5,57.1,192]) rotate([0,90,0]) hole();
      
   translate([10,-70.3,10]) rotate([90,0,0]) translate([453,57.1,92]) rotate([0,0,0]) hole();
   translate([10,-70.3,25]) rotate([90,0,0]) translate([453,57.1,92]) rotate([0,0,0]) hole(); 
   translate([10,-70.3,40]) rotate([90,0,0]) translate([453,57.1,92]) rotate([0,0,0]) hole(); 
   translate([10,-70.3,55]) rotate([90,0,0]) translate([453,57.1,92]) rotate([0,0,0]) hole();    
      
   translate([10,-116.1+.8,-20]) rotate([90,0,0]) translate([348.5,47.1+3,192]) rotate([-90,90,0]) hole(); 
   translate([-35+60,-116.1+.8,-20]) rotate([90,0,0]) translate([348.5,47.1+3,192]) rotate([-90,90,0]) hole(); 
   translate([-35+75,-116.1+.8,-20]) rotate([90,0,0]) translate([348.5,47.1+3,192]) rotate([-90,90,0]) hole(); 
   translate([-35+90,-116.1+.8,-20]) rotate([90,0,0]) translate([348.5,47.1+3,192]) rotate([-90,90,0]) hole();  
   translate([-35+105,-116.1+.8,-20]) rotate([90,0,0]) translate([348.5,47.1+3,192]) rotate([-90,90,0]) hole();  
   translate([-35+120,-116.1+.8,-20]) rotate([90,0,0]) translate([348.5,47.1+3,192]) rotate([-90,90,0]) hole(); 
   translate([-35+135,-116.1+.8,-20]) rotate([90,0,0]) translate([348.5,47.1+3,192]) rotate([-90,90,0]) hole();  
  

   translate([109,-100.3,-20]) rotate([90,0,0]) translate([353.5,50.1,192]) rotate([-90,90,0]) hole();  
   translate([109,-100.3+15,-20]) rotate([90,0,0]) translate([353.5,50.1,192]) rotate([-90,90,0]) hole(); 
   translate([109,-100.3+30,-20]) rotate([90,0,0]) translate([353.5,50.1,192]) rotate([-90,90,0]) hole();
   translate([109,-100.3+45,-20]) rotate([90,0,0]) translate([353.5,50.1,192]) rotate([-90,90,0]) hole();
   translate([109,-100.3+60,-20]) rotate([90,0,0]) translate([353.5,50.1,192]) rotate([-90,90,0]) hole();
   translate([109,-100.3+75,-20]) rotate([90,0,0]) translate([353.5,50.1,192]) rotate([-90,90,0]) hole();  
   translate([109,-100.3+90,-20]) rotate([90,0,0]) translate([353.5,50.1,192]) rotate([-90,90,0]) hole(); 
  
  }
  
  module mold04door1base()
  {
      translate([-25,-300,0]) rotate([0,0,45]) translate([245,-260.1,55]) cube([189,9,66]); 
      translate([-35,-115,0]) rotate([90,0,45]) translate([121.5-.2,47.1,390-1]) cube([189,8,102]);
      
      translate([-25,-300,0]) rotate([0,0,45]) translate([245+7,-260.1-10+3,50]) rotate([0,0,45]) cube([10,10,71]); 
      translate([-25,-300,0]) rotate([0,0,45]) translate([245+7+175,-260.1-10+3,50]) rotate([0,0,45]) cube([10,10,71]); 
  }
  
   module mold04door1frame()
  {
      //%mold04door1screws();
      
      difference(){
         mold04door1base();
         translate([-35,-116.1,-1]) rotate([90,0,0]) translate([121.5+247-1-.5,47.1,190+4]) cube([189,10,101]);
         translate([-35,-116.1,-1]) rotate([90,0,0]) translate([121.5+247+131.6,47.1,190+4-189]) cube([101,10,189]); 
         }     
  }
  
  module mold04door1()
  {
     
      
      difference(){
         mold04door1frame();
         //Screws
         mold04door1screws(); 
         }     
  }
  
  
  //mold04door1();
  tmold04();