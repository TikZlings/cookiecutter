// parameters
wall_thickness = 0.9;
rim_thickness = 2.7;

wall_height = 15;
rim_height = 3;

svg_scale = 2.7;
// filepath = "./svgs/pig_merged.svg";

rotate([0,180,0]){
  union(){

    linear_extrude(height=wall_height){
      difference(){
        offset(wall_thickness) scale(svg_scale) import(filepath);
        offset(0.001) scale(svg_scale) import(filepath);
      }// difference
    }// extrude

    translate([0, 0, wall_height-rim_height]){
      linear_extrude(height=rim_height){
        difference(){
          offset(rim_thickness) scale(svg_scale) import(filepath);
          offset(0.001) scale(svg_scale) import(filepath);
        }// difference
      }// extrude
    }// translate

  }// union
}// rotate
