float middleX, middleY;
int rand =floor(random(2));
int value = 0;
void setup(){
colorMode(HSB,360,100,100);
size (600,800);
background(255,100,100);
noStroke();
  middleX = width/2;
  middleY = height/2;  
  drawDriehoeken();
  drawText();

}
void drawDriehoeken(){
for (float xpos=-120;xpos<1200; xpos=xpos+60){
for (int ypos=-120; ypos<1400; ypos = ypos+120){
stroke(255,6);
fill(value,random(0,360));
triangle(30+xpos, 0+ypos,0+xpos,60+ypos,60+xpos,60+ypos);
fill(value,random(90,360));
triangle(30+xpos, 0+ypos,90+xpos,0+ypos,60+xpos,60+ypos);
fill(value,random(180,360));
triangle(0+xpos, 60+ypos,60+xpos,60+ypos,30+xpos,120+ypos);
fill(value,random(360,360));
triangle(60+xpos, 60+ypos,30+xpos,120+ypos,90+xpos,120+ypos);
if(value == 2) {
value = #00F4FF; // waarde is of 255 --> rood
}else if(value == 5){ 
value = #FF005A; // waarde is 0 --> zwart
}
}
}
}




void drawText(){
textSize(width/20);
fill(360);
text("Souhaila", width/2 - 60,middleY-30);
text("Ben-allal", width/2 - 65,middleY+10);
text("2 MULTEC", width/2 - 75,middleY+50);

}
