$fn =48;
wall_thickness = 3;
wall_width = 150;
wall_offset = 0.5;



//// hinge support
difference(){
translate([0,wall_thickness,wall_thickness]){
    
    cube([wall_width-2*wall_thickness-2*wall_offset,15,wall_thickness]);
    
}

rotate([0,90,0]){
    translate([-wall_thickness,wall_thickness,-5]){
        difference(){
            cylinder(d = wall_thickness*2, h = wall_width);  
        }
            }
        }
        
translate([wall_width/2-wall_thickness,5,wall_thickness*2+wall_thickness/2-1]){
    
    cube([110-2*wall_offset,100,wall_thickness+5],center = true);
    
}
    }
    
/////////////////////////////////////////////////
difference(){
translate([0,wall_thickness,0])
cube([wall_width-2*wall_thickness-2*wall_offset,wall_width-3*wall_thickness - 2*wall_offset,wall_thickness]);

rotate([0,90,0]){
    translate([-wall_thickness,wall_thickness,-5]){
        difference(){
            cylinder(d = wall_thickness*2, h = wall_width);  
        }
            }
        }
    }

difference(){
rotate([0,90,0]){
   translate([-wall_thickness,wall_thickness,0]){
     difference(){
        cylinder(d = wall_thickness*2, h = wall_width-2*wall_thickness - 2* wall_offset);
         
         translate([0,0,-5])
            cylinder(d = 3.2, 2*wall_width);  
      }
        }
        
}
translate([wall_width/2-wall_thickness,5,wall_thickness*2+wall_thickness/2-0.5]){
    
    cube([110-2*wall_offset,100,wall_thickness+5],center = true);
    
}
}

// handle
translate([(wall_width-wall_thickness*2)/4,wall_width-8*wall_thickness,wall_thickness])
    difference(){
        cube([55,15,15]);
        translate([-5,0,7]){
        rotate([0,90,0]){
            
            cylinder(h = 100, r = 5);
            }
        }
         translate([-5,15,7]){   
            rotate([0,90,0]){
            
            cylinder(h = 100, r = 5);
            }
        }
    }