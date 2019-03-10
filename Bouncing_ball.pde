void setup(){
  size(800,800);
  frameRate(30);
}

  float bv = 0;
  float g = 1.6;
  float t = 0;
  float x = 400;
  float y = 200;
  float deltaY = 0;


void draw(){
  background(224, 250, 255);
  fill(114, 68, 6);
  rect(0, 7*height/8, width, height);
  
  fill(214, 29, 29);
  strokeWeight(2);
  ellipse(x,y,80,80);
  
  deltaY = bv + g*t;
  y += deltaY;
  
  if (y >= 720 && deltaY > 0){
    bv = -.9*deltaY;
    t = -1;
  }
   t += 1;
}
