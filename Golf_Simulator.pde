void setup(){
  size(2000,1000);
  frameRate(40);
}
  float x = width/20;//chose starting x-position
  float y = height*7;//chose starting height
  float v = 20;//chose speed
 
  float bv = 0; 
  float angle = 60;
  float g = 0.4;
  float t = 0;
  float grassH = 720;
  float launchY = sin(radians(angle)) * -v;
  float launchX = cos(radians(angle))* v;

void draw(){
  //background, grass, flag, pole, hole
  background(66, 206, 244);//sky
  fill(69, 193, 50);
  strokeWeight(0);
  rect(0, grassH, width, height);//grass
  fill(0);
  ellipse(width-200, grassH+10, 40, 12);//hole
  fill(200);
  rect(width-200, grassH-295, 5, 300);//pole
  fill(255,0,0);
  triangle(width-195, grassH-290, width-195, grassH-345, width-265, grassH-318);//flag
  
  //ball
  fill(255);
  ellipse(x,y,10,10);
  if(y >=720 && (x >= width-220 && x <= width+220)) {
    x = width + 10;
    y = height + 10;
  }
  
  float deltaY = bv + launchY + g*t;
  y += deltaY;
  x += launchX;
  if (y >= 720 && deltaY > 0){
    bv = -.7*deltaY;
    launchX -= 2;
    t = -1;
    launchY = 0;
  }
  
  t += 1;
}
