wall_thickness = 5;
wall_width = 120;
translate([0,5,0])
cube([wall_width-2*wall_thickness,wall_width-wall_thickness,wall_thickness]);
difference(){
rotate([0,90,0]){
    translate([-5,wall_thickness,0]){
        difference(){
            cylinder(d = 10, h = wall_width-2*wall_thickness);
            cylinder(d = 5, h = wall_width-2*wall_thickness);  
        }
            }
        //translate([-5,0,wall_width-3*wall_thickness])
     //   cube([3,10,wall_thickness]);
}
}//
//
//rotate([0,90,0]){
//    translate([-5,wall_thickness,wall_width-3*wall_thickness])
     //   cylinder(d = 10, h = wall_thickness); 
    //translate([-5,0,wall_width-3*wall_thickness])
    //cube([3,10,wall_thickness]);
////}//