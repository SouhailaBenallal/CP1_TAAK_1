void setup(){
colorMode(HSB,360,100,100);
size (600,800);
background(211,58,14);
drawLines();
}

void drawLines(){
  stroke(frameCount /1 % 360, 50, 100);
 for (int i = 0; i<=50; i++){
   float x = i * 2;
   line(x,150,x,800);
   x = x + randomGaussian()*10;
   line(x,200,x,300 + random(-20,20));
}
}
