  int sw = 1800;
int sh = 900;
int shipX = 900; 
int shipY = 845;
int fireY = 805;
int fireX = 900;
int fireStorage = 5;
int r = 255;
int b = 245;
int g = 250;
int speed = 12;
int size = 20;
int charger = 0;
int life = 3;
int badX = 805;
float badY = 400;
int badS = 0;
int ex = 15;
int fireS = 8;
int fireC = 2;
int chargerC = 200;
void settings(){
size(sw,sh);
}
void setup(){
} 
void draw() {
background(255,245,250);
noStroke();
fill(#9D5DD6);
ellipse(shipX,shipY,35,35);
rect(shipX+15,shipY-50,14,50);
rect(shipX-30,shipY-50,14,50);
  fireX = fireStorage;
  fill(r,g,b);
  ellipse(fireX, fireY, size,size);
 fill(0,25,245);
  rect(35,600,20,chargerC);
  //ellipse(fireX,fireY+100, 30,30);
  if(keyPressed == true && key == 'w'){
    r = 157;
    g = 93;
    b = 214;
//ellipse(fireX,fireY,30,30);
fireY=fireY-speed;    
    //shipY = shipY-5;
    fireStorage=shipX;
}
else{
  r = 255;
g= 245;
b= 250;
fireY = 805;
}
if(fireY <= 0){
  fireY = 805;
  charger = 5;
}
 if(keyPressed){
 if(key == 'a'){
  shipX = shipX-5;
  }
  if(key == 'd'){
    shipX = shipX+5;
  }
}
    if(keyPressed == true && key == 's'){
     charger = 10;
     chargerC=chargerC-10;
    //shipY = shipY+5;
}
if(charger > 9){
  if(key == 'w' && chargerC > 1){
  size=size+1;
}
}
if(fireY == 805){
  size = 20;
  //charger is always active once activated and needs a way to be reduced
}
if(size<20){
  size=20;
}
if(size>100){
  size=100;
}
fill(0);
rect(badX,badY,30,30);
badX = badX+badS;
if(badX > sw){
  badX=0;
}
if(badY >= fireY && badX-30 < fireX &&  badX+20+size-size/2 > fireX){  //fireX+size >= badX && fireX-size+30 <= badX){ test size for glitch is 61
 fireC = 3;

} 
  if(fireC > 2){
  badS = 0;
  speed = 0;
 fill(255,0,0);
 ellipse(badX+10,badY+10,ex,ex);
 ex = ex+1;
 size = 0;
}
if(ex>100){  
  ex=0;
  badX=0;
  badS=4;
  speed =12;
  fireC =2;
  size = 20;
}
}