float a;
float b;
int x;
int y;

void setup(){
  size(600,600);
  background(150);
float a = 0;
float b = 0;
int x = 125;
int y = 125;
}

void draw(){
  
if (mousePressed==true) {
  noLoop();{
  fill(0,255,0);
  ellipse(a,b,50,50);
  }
} else {
  loop(); {
    fill(0,255,0);
  ellipse(a,b,50,50);
     a++;
     b++;
   }
}

   if (keyPressed == true){
    fill(#00FF96);
    ellipse(x,y,50,50);
   }
    else {
     loop();{
      x--;
      y--;
     }
}
}
