//Shapes by Jacob Hilmer
//Texture by Sawyer Novara
//Camera Code taken from in-class example

PImage txtr;
PShape globe;
PShape box;

float angle, camSpeed, 
  x, y, z, 
  lookAtX, lookAtY, lookAtZ, 
  upX, upY, upZ, 
  orthoScale, 
  viewDist, 
  extents = 250;
boolean orthographic;


void setup(){
  size(600,600,P3D);
  background(0);
txtr = loadImage("spongeface.jpg");
 textureMode(IMAGE);
 
 globe = createShape(SPHERE, 80);
 globe.setTexture(txtr);
 
 box= createShape(BOX, 120);
 box.setTexture(txtr);
 
 pixelDensity(displayDensity());

  angle = 0;
  camSpeed = 5.0;
  x = width / 2.0;
  y = height / 2.0;
  z = viewDist = (height / 2.0) / tan(PI * 60.0 / 360.0);
  lookAtX = x;
  lookAtY = y;
  lookAtZ = 0;
  upX = 0;
  upY = 1;
  upZ = 0;
  orthoScale = 2.0;
  orthographic = false;
}

void draw(){
    noStroke();
  textureWrap(CLAMP);
  texture(txtr);
  pointLight(73,250,5,300,300,350);
  translate(160,170,100);
  rotate(PI);  
  shape(globe);
  //sphere(80);
  rotate(-PI);
  
  
  stroke(1);
  textureWrap(CLAMP);
  texture(txtr);  
  ambientLight(21,7,234);
  translate (200,200,100);
  rotateX(0.5);
  rotateY(0.75);
  shape(box);
  //box(120);
  

  if (orthographic) {
    ortho(-width / orthoScale, 
      width / orthoScale, 
      -height / orthoScale, 
      height / orthoScale, 
      z / 1000.0, z * 1000.0);
  } else {
    perspective(PI / 3.0, 
      float(width) / float(height), 
      z / 2000.0, z * 2000.0);
  }
  camera(x, y, z, 
    lookAtX, lookAtY, lookAtZ, 
    upX, upY, upZ);

  keys();
}

void keys() {
  if (keyPressed) {
    if (y > 0
      && (key == 'w' || key == 'W' || keyCode == DOWN)) {
      y -= camSpeed;
      lookAtY = y;
    }
    if (x > -extents
      && (key == 'a' || key == 'A' || keyCode == RIGHT)) {
      x -= camSpeed;
      lookAtX = x;
    }
    if (y < height - 10
      && (key == 's' || key == 'S' || keyCode == UP)) {
      y += camSpeed;
      lookAtY = y;
    }
    if (x < extents
      && (key == 'd' || key == 'D' || keyCode == LEFT)) {
      x += camSpeed;
      lookAtX = x;
    }
    if (z > -extents
      && (key == 'q' || key == 'Q')) {
      if (orthographic) {
        orthoScale += 0.01;
      }
      z -= camSpeed;
      lookAtZ = z - viewDist;
    }
    if (z < extents
      && (key == 'e' || key == 'E')) {
      if (orthographic) {
        orthoScale -= 0.01;
      }
      z += camSpeed;
      lookAtZ = z - viewDist;
    }
  }
}
