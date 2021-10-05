$fn =48;
wall_thickness = 5;
wall_width = 120;
wall_offset = 0.5;



//// hinge support
difference(){
translate([0,5,5]){
    
    cube([wall_width-2*wall_thickness-2*wall_offset,15,wall_thickness]);
    
}

rotate([0,90,0]){
    translate([-5,wall_thickness,-5]){
        difference(){
            cylinder(d = 10, h = wall_width);  
        }
            }
        }
        
translate([(90/4)-2*wall_thickness-2*wall_offset,5,5]){
    
    cube([90-2*wall_offset,20,wall_thickness+5]);
    
}
    }
    
/////////////////////////////////////////////////
difference(){
translate([0,5,0])
cube([wall_width-2*wall_thickness-2*wall_offset,wall_width-wall_thickness - 2*wall_offset,wall_thickness]);

rotate([0,90,0]){
    translate([-5,wall_thickness,-5]){
        difference(){
            cylinder(d = 10, h = wall_width);  
        }
            }
        }
    }

difference(){
rotate([0,90,0]){
   translate([-5,wall_thickness,0]){
     difference(){
        cylinder(d = 10, h = wall_width-2*wall_thickness - 2* wall_offset);
         
         translate([0,0,-5])
            cylinder(d = 3.2, 120);  
      }
        }
        
}
translate([(90/4)-2*wall_thickness-2*wall_offset,0,5]){
    
    cube([90-2*wall_offset,20,wall_thickness+5]);
    
}
}

// handle
translate([(wall_width-wall_thickness*2)/4,wall_width-4*wall_thickness,wall_thickness])
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