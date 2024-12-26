// modified from https://gist.github.com/aconz2/fa3bce871305f5be39aedd00e7e0c94b

base_height = 6;
upper_height = 2;
wall_thickness = 0.4;
upper_wall_thickness = 1.2;
// filepath = "./svgs/bear.svg"; 

module shape(offset_amt=0) {
    offset(offset_amt)
    import(filepath);
}

scale(2){
  rotate([0,180,0]){
    difference() {
        union() {
            linear_extrude(height=base_height) shape(wall_thickness);
            translate([0, 0, base_height]) linear_extrude(height=upper_height) shape(upper_wall_thickness);
        }
        translate([0, 0, -1]) linear_extrude(base_height + upper_height + 2) shape();
    }
  }
}