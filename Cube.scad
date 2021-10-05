wall_thickness = 5;
wall_width = 120;
cube([wall_width,wall_width,wall_thickness]);

difference(){

cube([wall_thickness,wall_width,wall_width]);
            rotate([0,90,0]){
    translate([-wall_width,wall_thickness,wall_width-wall_thickness])
        translate([0,0,-wall_width])
        cylinder(d = 5, h = wall_width+20);
    }
   translate([-5,(wall_width/2)-38/2,(wall_width/2)-38/2])
    cube([wall_thickness+10,38,38]);
}
    

translate([wall_width-wall_thickness,0,0]){
    difference(){
    cube([wall_thickness,wall_width,wall_width]);
    
        
        rotate([0,90,0]){
    translate([-wall_width,wall_thickness,wall_width-wall_thickness])
        translate([0,0,-wall_width])
        cylinder(d = 5, h = wall_width+20);
    } 
}

        
    }
    
    

cube([wall_width,wall_thickness,wall_width-5]);
translate([0,wall_width-wall_thickness,0]){
    cube([wall_width,wall_thickness,wall_width]);
}
rotate([0,90,0]){
    translate([-wall_width,wall_thickness,0]){
        difference(){
        cylinder(d = 10, h = wall_thickness);
        translate([0,0,-5])
        cylinder(d = 5, h = wall_thickness+15);  
        }
            }
}

rotate([0,90,0]){
    translate([-wall_width,wall_thickness,wall_width-wall_thickness])
    difference(){
        cylinder(d = 10, h = wall_thickness); 
        translate([0,0,-wall_width])
        cylinder(d = 5, h = wall_width+20);
    } 
}
