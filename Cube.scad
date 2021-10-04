wall_thickness = 5;
wall_width = 120;
cube([wall_width,wall_width,wall_thickness]);
cube([wall_thickness,wall_width,wall_width]);
translate([wall_width-wall_thickness,0,0]){
    cube([wall_thickness,wall_width,wall_width]);
}
cube([wall_width,wall_thickness,wall_width-5]);
translate([0,wall_width-wall_thickness,0]){
    cube([wall_width,wall_thickness,wall_width]);
}
rotate([0,90,0]){
    translate([-wall_width,wall_thickness,0])
cylinder(d = 10, h = wall_thickness); 
}
rotate([0,90,0]){
    translate([-wall_width,wall_thickness,wall_width-wall_thickness])
cylinder(d = 10, h = wall_thickness); 
}
