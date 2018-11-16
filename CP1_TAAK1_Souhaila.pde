float middleX, middleY;
void setup(){
colorMode(HSB,360,100,100);
size (600,800);
background(211,100,100);
  middleX = width/2;
  middleY = height/2;
  drawTunnel();
}
void drawTunnel(){
int totalSteps = 32;
float angleStep = 360.0/totalSteps;
float radius = 100;
for (int j = 0; j<20; j++){
  float diameter = 5 + 3*j;
  radius += diameter *1.2;
  strokeWeight(diameter);
  for (int i = 0; i<2*totalSteps; i++){
    if((i+j)%2 == 0){
    float angleRad = radians(angleStep * i);
    float x = middleX + cos(angleRad)*radius;
    float y = middleY + sin (angleRad)*radius;
    text("hello",x,y);
    }
  }
}
textSize(width/20);
fill(255);
text("Written by Souhaila", width/2 - 110,middleY);
}
