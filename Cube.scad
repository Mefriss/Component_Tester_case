wall_thickness = 5;
cube([120,120,wall_thickness]);
cube([wall_thickness,120,120]);
translate([120-wall_thickness,0,0]){
    cube([wall_thickness,120,120]);
}
cube([120,wall_thickness,120]);
translate([0,120-wall_thickness,0]){
    cube([120,wall_thickness,120]);
}




