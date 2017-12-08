void setup(){
 size(600,600);
 background(0,247,72);
}

void draw(){
  
//sidewalk
stroke(0);
line(0,515,600,515);
  
//person

//head
stroke(0);
strokeWeight(1);
fill(#FABC6A);
arc(450,250,100,100,0,TWO_PI);

//mouth
bezier(411,280,445,296,447,257,432,263);

//eye
stroke(0);
strokeWeight(1);
fill(0);
ellipse(435,240,10,10);

//Nose
stroke(0);
strokeWeight(1);
fill(#F5AD4F);
triangle(400,235,400,275,360,275);

//hat
fill(0);
stroke(0);
strokeWeight(4);
line(390,210,510,210);
rect(420,150,60,60);


//body
stroke(255,3,3);
strokeWeight(3);
line(450,300,450,450);

//legs
colorMode(HSB,360,100,100,100);
stroke(257,98,99);
line(450,450,415,515);
line(450,450,485,515);

//arms
noFill();
colorMode(RGB,255,255,255,255);
stroke(255,3,3);
strokeWeight(3);
//left arm
bezier(448,323,393,342,417,384,428,407);
//right arm
bezier(452,323,507,393,537,316,548,318);

//desk
stroke(0);
fill(#814C14);
beginShape();
vertex(100,515);
vertex(100,340);
vertex(300,340);
vertex(300,515);
beginContour();
vertex(115,515);
vertex(115,350);
vertex(285,350);
vertex(285,515);
endContour();
endShape(CLOSE);


//balloons
strokeWeight(1);

//yellow balloon
line(200,340,140,263);
noStroke();
fill(#FCE829,44);
bezier(140,263,-50,50,346,69,140,263);

//aqua balloon
stroke(0);
line(200,340,200,210);
noStroke();
fill(41,159,252,50);
bezier(200,210,42,49,354,48,200,210);

//violet balloon
stroke(0);
line(200,340,270,263);
noStroke();
fill(128,41,252,44);
bezier(270,263,120,81,429,92,270,263);

//green balloon
stroke(0);
line(200,340,160,200);
noStroke();
fill(26,103,3,44);
bezier(160,200,17,32,308,43,160,200);

//red balloon
stroke(0);
line(200,340,240,200);
noStroke();
fill(237,26,19,44);
bezier(240,200,58,16,429,26,240,200);

//orange balloon
stroke(0);
strokeWeight(1.5);
noStroke();
line(200,340,200,250);
fill(#FC510D,90);
bezier(200,250,23,59,383,75,200,250);
}
