int a;
int b;
float c;
float d;
float e;

void setup(){
 size(600,600);
 background(12,106,234);
 
}



void draw(){
 println(frameCount);
 println("my bubbles");

int a = max(0,600);
int b = min(0,600);
c = mouseY-1;
d = constrain(mouseX,b,a);
e = millis();
}

void mousePressed(){
  
 noStroke();
 fill(17,247,215);
 ellipse(d,mouseY,width/22,26);
 if (a<600){
  c--;
 }
 else if (b>0){
  c--;
 }
}
