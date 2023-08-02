import ddf.minim.*;
Minim minim;
AudioPlayer player;
PImage laberinto;
PImage youw;
int x;
int y;
int ellipseSpeed = 8;
boolean victory = false;
int Negro;

void setup(){
  size(500,500);
  laberinto = loadImage("Laberinto.png");
  youw = loadImage("youw.gif");
  minim = new Minim(this);
  player = minim.loadFile("cancion.mp3");
  x = 250;
  y = 40;
}

void draw(){
  background(255);
 image(laberinto,5,5);
 stroke(#E81C1C);
 strokeWeight(8);
 noFill();
 ellipse(x,y,20,20);
 Negro = get(x,y);
 println(Negro);

 if(Negro== -16777216){
   x = 250;
   y = 40;
 }
 if (y > 500){
 victory = true;
 } if (victory){
   image(youw,5,5);
 }
 }
 
 
void keyPressed(){
  if(!victory){
  if(keyCode == UP){
    y -= ellipseSpeed;
  } else if (keyCode == DOWN){
     y += ellipseSpeed;
  player.play();
  } else if (keyCode == LEFT){ 
    x -= ellipseSpeed;
  } else if (keyCode == RIGHT){
    x += ellipseSpeed;
  } 
}
}
