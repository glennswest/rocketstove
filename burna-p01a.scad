use <burna.scad>;


module burna()
{
 difference(){
   burna_mold();
   translate([0,0,90]) cutter(120);
   translate([130,-1,-1]) cube([260,882,170]); 
   }
 }
 
 module burna_holddown()
 {
     difference(){
         translate([-140,-10,0]) cube([150,320,.20]);
         rotate([0,180,0]) translate([0,0,-140]) burna();
         translate([-20,20,-.1]) cube([20,270,1]);
     }
 }
 
 module printable()
 {
 rotate([0,180,0]) translate([0,0,-140]) burna();
 //burna_holddown();
 }
 
 rotate([0,0,0]) printable();