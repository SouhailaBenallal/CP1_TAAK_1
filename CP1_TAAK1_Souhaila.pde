void setup(){
colorMode(HSB,360,100,100);
size (600,800);
background(211,100,100);
drawEllipse();
rectMode(RADIUS);
}



void drawEllipse(){
    int n = 120;
  int middleX1 =width/2;
  int middleY1 =height/2;
    int middleX =middleX1/2;
  int middleY =middleY1/2;
for (int i =0; i<n;i++){
  float offsetX = random(-400,400);
  float offsetY = random(-400,400);
   float x = middleX + offsetX;
    float y = middleY + offsetY;
    float radius = random(4,16);
    float h = random(0.7,1);
    fill(h,0.8,1,0.8);
    rect(x,y,radius,radius);
    
float endX = middleX + offsetX/5;
float endY = middleY + offsetY/5;
float x1 = x-radius;
float x2 = x+radius;
float y1 = y-radius;
float y2 = y+radius;
fill(h,0.7,0.8,0.2);
triangle(x1,y1,x1,y2,endX,endY);
fill(h,0.6,1,0.15);
triangle(x1,y1,x2,y1,endX,endY);
fill(h,0.6,0.8,0.2);
triangle(x2,y1,x2,y2,endX,endY);
fill(h,0.7,1,0.15);
triangle(x1,y2,x2,y2,endX,endY);
}
  
}


//textSize(width/20);
//  fill(255);
//   text("Written by Souhaila", width/2 - 110, height - 20);
