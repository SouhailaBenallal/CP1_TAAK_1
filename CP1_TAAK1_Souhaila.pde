//Souhaila Ben-allal
//2Multec
float middleX= width/2;
float middleY= height/2;
int rand =floor(random(2));
int kleur = #ff8d00;

void setup(){
size (600,800);
background(253,255,0);
noStroke(); 
smooth();
  middleX = width/2;
  middleY = height/2;  
  drawDriehoeken();
  drawBloem();
  drawText();}
void drawDriehoeken(){//verschillende driehoeken naast elkaar en onder elkaar
for (float xpos=-120;xpos<1200; xpos=xpos+60){
for (int ypos=-120; ypos<1200; ypos = ypos+120){
fill(kleur,random(0,360));
triangle(30+xpos, 0+ypos,0+xpos,60+ypos,60+xpos,60+ypos);
fill(kleur,random(90,360));
triangle(30+xpos, 0+ypos,90+xpos,0+ypos,60+xpos,60+ypos);
fill(kleur,random(180,360));
triangle(0+xpos, 60+ypos,60+xpos,60+ypos,30+xpos,120+ypos);
fill(kleur,random(360,360));
triangle(60+xpos, 60+ypos,30+xpos,120+ypos,90+xpos,120+ypos);
}}}
void drawBloem(){//een tekening met een bloem
  fill(255,255,255);
  int middleX = width/2;
  for(int i=0;i<11;i++){
    float bezier1 = 600-i;
    float bezier2 = width-bezier1;
    stroke(253,255,0);
    strokeWeight(40);
    line(width/2,height/2,300,800);
    strokeWeight(10);
    bezier(middleX,middleX,bezier1,bezier1,bezier2,bezier1,middleX,middleX);
    bezier(middleX,middleX,bezier2,bezier1,bezier2,bezier2,middleX,middleX);
    bezier(middleX,middleX,bezier2,bezier2,bezier1,bezier2,middleX,middleX);
    bezier(middleX,middleX,bezier1,bezier2,bezier1,bezier1,middleX,middleX); }}
void drawText(){//text tekenen 
textSize(width/20);
fill(255,141,0);
text("Souhaila", width/2 - 60,middleY-200);
text("Ben-allal", width/2 - 200,middleY-80);
text("2 MULTEC", width/2 +60,middleY-80);
text("CP1", width/2 -30,middleY+40);}
