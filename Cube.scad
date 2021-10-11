$fn = 48;
wall_thickness = 5;
wall_width = 120;
gold_pin_width = 50;
styrophoam_thickness = 30;

////////goldpin support //////////

module goldpin_s(){
translate([0,0,0]){
difference(){
translate([wall_width-2*wall_thickness-5,wall_width/2,(wall_width/2)+(styrophoam_thickness/4)]){
rotate([0,90,0])
cube([20,gold_pin_width,styrophoam_thickness], center = true);
}
translate([wall_width-2*wall_thickness,(wall_width/2),(wall_width/2)+(styrophoam_thickness/4)]){
rotate([0,90,0])
cube([20-10,gold_pin_width-10,styrophoam_thickness+20], center = true);
}
}
}
}

//goldpin_s();
rotate([0,90,0]){
    difference(){
   translate([-4*wall_thickness,wall_width/2,(wall_width/2)-2.5+2*wall_thickness/2])
    cube([styrophoam_thickness+wall_thickness,gold_pin_width+2*wall_thickness,2.5+2*wall_thickness],center=true);
    translate([-styrophoam_thickness-2*wall_thickness,wall_width/2,(wall_width/2)-2.5+2*wall_thickness/2])
    cube([styrophoam_thickness+wall_thickness+10,gold_pin_width,2.5],center=true);
    }
}
///goldpin support back ////////

////////TYL////////////
difference(){

cube([wall_width,wall_width,wall_thickness]);

rotate([0,90,0]){
translate([-styrophoam_thickness-2*wall_thickness+20,(wall_width/2)-2.5+2*wall_thickness/2,(wall_width/2)-2.5+2*wall_thickness/2])
    cube([styrophoam_thickness+wall_thickness+10,gold_pin_width,2.5],center=true);
    }

}
///////////////////////

/////////GORA///////////
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
/////////////////////////////////////////

/////////////////SPOD//////////////////////

difference(){
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
    
//translate([wall_width-2*wall_thickness,(wall_width/2),(wall_width/2)+(styrophoam_thickness/4)]){
//rotate([0,90,0])
//cube([20-10,gold_pin_width-10,styrophoam_thickness], center = true);
//}
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
        cylinder(d = 3.2, h = wall_thickness+15);  
        }
            }
}

rotate([0,90,0]){
    translate([-wall_width,wall_thickness,wall_width-wall_thickness])
    difference(){
        cylinder(d = 10, h = wall_thickness); 
        translate([0,0,-wall_width])
        cylinder(d = 3.2, h = wall_width+20);
    } 
}
 // feet

translate([wall_width,15,15]){

    rotate([0,90,0]){
    translate([0,0,0]){
        difference(){
        cylinder(d = 20, h = wall_thickness);
        
        }
            }
}
}
translate([wall_width,wall_width -15,15]){

    rotate([0,90,0]){
    translate([0,0,0]){
        difference(){
        cylinder(d = 20, h = wall_thickness);
        
        }
            }
}
}
translate([wall_width,wall_width -15,wall_width -15]){

    rotate([0,90,0]){
    translate([0,0,0]){
        difference(){
        cylinder(d = 20, h = wall_thickness);
        
        }
            }
}
}
translate([wall_width,15,wall_width -15]){

    rotate([0,90,0]){
    translate([0,0,0]){
        difference(){
        cylinder(d = 20, h = wall_thickness);
        
        }
            }
}
}

///////////////////////////////////////////