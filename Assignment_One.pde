//"To the Moon!"

void setup(){
  size(600,600);
  background(0);
}

void draw(){

//*Moon*  
noStroke();
fill(250);
ellipseMode(RADIUS);
ellipse(290,100,50,50);

//Shadow
noStroke();
fill(170);
arc(290,100,50,50,0,PI+QUARTER_PI,OPEN);

//Crater
fill(50);
ellipse(290,135,5,5);

//*Spaceship*

//Left Exhaust
stroke(150);
strokeWeight(6);
line(232,500,232,500);
line(235,500,235,505);
line(238,500,238,510);
line(241,500,241,515);
line(244,500,244,520);
line(247,500,247,525);
line(250,500,250,530);
line(253,500,253,535);
line(256,500,256,540);
line(259,500,259,535);
line(262,500,262,530);
line(265,500,265,525);
line(268,500,268,520);
line(271,500,271,515);
line(274,500,274,510);
line(277,500,277,505);
line(280,500,280,500);

//Right Exhaust
line(297,500,297,500);
line(300,500,300,505);
line(303,500,303,510);
line(306,500,306,515);
line(309,500,309,520);
line(312,500,312,525);
line(315,500,315,530);
line(318,500,318,535);
line(321,500,321,540);
line(324,500,324,535);
line(327,500,327,530);
line(330,500,330,525);
line(333,500,333,520);
line(336,500,336,515);
line(339,500,339,510);
line(342,500,342,505);
line(345,500,345,500);

//Left Flame
stroke(250);
strokeWeight(6);
line(244,500,244,510);
line(247,500,247,515);
line(250,500,250,520);
line(253,500,253,525);
line(256,500,256,530);
line(259,500,259,525);
line(262,500,262,520);
line(265,500,265,515);
line(268,500,268,510);

//Right Flame
stroke(250);
strokeWeight(6);
line(309,500,309,510);
line(312,500,312,515);
line(315,500,315,520);
line(318,500,318,525);
line(321,500,321,530);
line(324,500,324,525);
line(327,500,327,520);
line(330,500,330,515);
line(333,500,333,510);

//Left Fin
stroke(255);
strokeWeight(1);
fill(255);
triangle(258,465,290,500,230,500);

//Right Fin
stroke(255);
strokeWeight(1);
fill(255);
triangle(320,465,290,500,350,500);

//Body
stroke(0);
strokeWeight(1);
fill(255);
ellipse(290,400,40,100);

//Antenna
stroke(255);
strokeWeight(8);
line(290,300,290,280);
fill(255);

//viewport (top)
stroke(255);
fill(0);
ellipse(290,360,10,15);

//viewport (center)
stroke(255);
fill(0);
ellipse(290,395,10,15);

//viewport (bottom)
stroke(255);
fill(0);
ellipse(290,430,10,15);

//Segment Break (Top)
stroke(0);
strokeWeight(1);
line(260,330,318,330);

//Segment Break (Bottom)
stroke(0);
strokeWeight(1);
line(258,465,320,465);

//*Mission Control*

//Mission Clock
fill(255);
stroke(150);
strokeWeight(3);
rect(50,200,150,100);

stroke(0);
strokeWeight(2);
fill(200);
arc(125,250,45,45,0,TWO_PI);
strokeWeight(5);
point(125,250);

strokeWeight(2);
line(125,250,100,230);
line(125,250,140,245);

//Houston
fill(255);
stroke(150);
strokeWeight(3);
rect(400,400,150,100);

//Person
stroke(0);
line(475,485,475,445);
line(475,450,460,485);
line(475,450,495,485);
noFill();
ellipse(475,430,15,15);
strokeWeight(5);
point(467,430);
point(482,430);

//Desk
stroke(120);
strokeWeight(3);
fill(150);
rect(430,485,90,15);


}
