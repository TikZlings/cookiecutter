// modified from https://gist.github.com/aconz2/fa3bce871305f5be39aedd00e7e0c94b

base_height = 12;
upper_height = 3;
wall_thickness = 0.9;
upper_wall_thickness = 2.7;
// filepath = "./svgs/duck.svg"; 

module shape(offset_amt=0){
  offset(offset_amt)
  scale(2.7)
  import(filepath);
}

rotate([0,180,0]){
  difference(){
      union(){
        linear_extrude(height=base_height) shape(wall_thickness);
        translate([0, 0, base_height]) linear_extrude(height=upper_height) shape(upper_wall_thickness);
      }
      translate([0, 0, -1]) linear_extrude(base_height + upper_height + 6) shape(0.00003);
  }// difference
}// rotate
