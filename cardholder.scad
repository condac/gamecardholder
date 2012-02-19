card_x = 54;
card_y = 80;
card_space = 2;
wall_thickness = 3;
plate_height = 3;
wall_height = 10;

cube(size = [card_x+card_space+wall_thickness*2, card_y+card_space+wall_thickness*2,plate_height], center = true);

%cube(size = [card_x,card_y,9], center = true);
%cube(size = [card_y,card_x,9], center = true);


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