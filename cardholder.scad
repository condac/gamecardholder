//Settlers game card holder
// 1 to 1 copy of previous blender version but with parameters for changeing dimention

//Constants
card_x = 54; //original 54
card_y = 80; //original 80
card_space = 2; //original 2
wall_thickness = 2; //original 2
plate_height = 2; //original 2
wall_height = 10;
shortwall = card_x/(card_y/card_x);

//Connecting piece
//the "female" part is 21mm at the biggest point and 12.5mm at the smallest and 10mm deep
//the "male" part is  19.8mm at the biggest point and 10.46mm at smallest and 11.4mm long
//the odd numbers are because i used a manualy freehand modifed box with no real grid snapping, and some random scaling
female_con_x = 10;
female_con_y1 = 21;
female_con_y2 = 12.5;
male_con_x = 11.4;
male_con_y1 = 19.8;
male_con_y2 = 10.46;

//Base plate
cube(size = [card_x+card_space+wall_thickness*2, card_y+card_space+wall_thickness*2,plate_height], center = true);

//Cards for reference
%cube(size = [card_x,card_y,9], center = true);
%cube(size = [card_y,card_x,9], center = true);

%cube(size= [shortwall, 100,20], center = true);

// Long wall 1 of 4
translate([  (card_x+card_space+wall_thickness*2)/2 , (card_y+card_space+wall_thickness*2)/2 ,plate_height/2])
rotate([0,0,180])
cube(size = [wall_thickness,(card_y-card_x)/2+wall_thickness+card_space/2,wall_height] ,center = false);

// Long wall 2 of 4
translate([  -(card_x+card_space+wall_thickness*2)/2 +wall_thickness , (card_y+card_space+wall_thickness*2)/2 ,plate_height/2])
rotate([0,0,180])
cube(size = [wall_thickness,(card_y-card_x)/2+wall_thickness+card_space/2,wall_height] ,center = false);

// Long wall 3 of 4
translate([  (card_x+card_space+wall_thickness*2)/2 -wall_thickness, -(card_y+card_space+wall_thickness*2)/2 ,plate_height/2])
rotate([0,0,0])
cube(size = [wall_thickness,(card_y-card_x)/2+wall_thickness+card_space/2,wall_height] ,center = false);

// Long wall 4 of 4
translate([  -(card_x+card_space+wall_thickness*2)/2 , -(card_y+card_space+wall_thickness*2)/2 ,plate_height/2])
rotate([0,0,0])
cube(size = [wall_thickness,(card_y-card_x)/2+wall_thickness+card_space/2,wall_height] ,center = false);

//Shortwalls
//the cut to make the space between the walls was originaly 37mm
translate([  -(card_x+card_space+wall_thickness*2)/2 , -(card_y+card_space+wall_thickness*2)/2 ,plate_height/2])
rotate([0,0,0])
cube(size = [wall_thickness, shortwall, wall_height] ,center = false);

//Round Cut
// was made with a cylinder with radius=32 scaled in x and y by 0.8, resulting in R=25.6
translate([0,card_y,0])
cylinder(25.6, 25.6, 25.6);



//Connecting piece
//the "female" part is 21mm at the biggest point and 12.5mm at the smallest
//the "male" part is 