import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
Box2DProcessing box2d;
ArrayList<Box> boxes;



float xe;
int numCircles = 80;
float xy;
float ye;
float col=200;

PImage background;

float x[] = new float[50];
float y[] = new float[50];
import processing.sound.*;
SoundFile file;

Circle[] circles = new Circle[numCircles]; // define the array
Circle[] circles2 = new Circle[numCircles]; 
Circle[] circles3 = new Circle[numCircles]; 
Circle[] circles4 = new Circle[numCircles]; 
Circle[] circles5 = new Circle[numCircles]; 
Circle[] circles6 = new Circle[numCircles]; 
Circle[] circles7 = new Circle[numCircles]; 
Circle[] circles8 = new Circle[numCircles]; 
Circle[] circles9 = new Circle[numCircles]; 
Circle[] circles10 = new Circle[numCircles]; 

Circle[] circles12 = new Circle[numCircles]; 
Circle[] circles13 = new Circle[numCircles]; 
Circle[] circles14 = new Circle[numCircles]; 
Circle[] circles15 = new Circle[numCircles]; 
Circle[] circles16 = new Circle[numCircles]; 
Circle[] circles17 = new Circle[numCircles]; 
Circle[] circles18 = new Circle[numCircles]; 
Circle[] circles19 = new Circle[numCircles]; 
Circle[] circles20 = new Circle[numCircles]; 

Circle[] circles22 = new Circle[numCircles]; 
Circle[] circles23 = new Circle[numCircles]; 
Circle[] circles24 = new Circle[numCircles]; 
Circle[] circles25 = new Circle[numCircles]; 
Circle[] circles26 = new Circle[numCircles]; 
Circle[] circles27 = new Circle[numCircles]; 
Circle[] circles28 = new Circle[numCircles]; 
Circle[] circles29 = new Circle[numCircles]; 
Circle[] circles30 = new Circle[numCircles]; 

Circle[] circles32 = new Circle[numCircles]; 
Circle[] circles33 = new Circle[numCircles]; 
Circle[] circles34 = new Circle[numCircles]; 
Circle[] circles35 = new Circle[numCircles]; 
Circle[] circles36 = new Circle[numCircles]; 
Circle[] circles37 = new Circle[numCircles]; 
Circle[] circles38 = new Circle[numCircles]; 
Circle[] circles39 = new Circle[numCircles]; 
Circle[] circles40 = new Circle[numCircles]; 


//Circle[] circlestierra = new Circle[numCircles]; 
 

void setup(){
size(1000,500);
background = loadImage("BHSBACKGROUND.png");
   smooth();
   // Initialize box2d physics and create the world
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  // We are setting a custom gravity
  box2d.setGravity(0, -20);
    boxes = new ArrayList<Box>();

  file = new SoundFile(this, "song.mp3");
  file.play(); 
  file.stop();
  file.loop();
  
  
  
  
}

void draw(){
   // background(100,100,255);
    background(background);
    
    
 
  
  
  
  
  
  
  
    pushMatrix();
  smooth();

  noStroke();
  fill(255,0,0);
  ellipse(mouseX, mouseY,110,110);
  //filter( BLUR, 6 );
  noStroke();
  fill(255,255,0);
  ellipse(mouseX, mouseY,90,90);
  popMatrix();
  
pushMatrix();
  noStroke();
  fill(0);
  ellipse(mouseX, mouseY,50,50);
  //filter( BLUR, 6 );
  noStroke();
  fill(0);
  ellipse(mouseX, mouseY,40,40);
  popMatrix();
  
  
  xe=xe+100;
  //xy=xy-10;
  //ye=ye-10;{
  
  
   
   for (int i=0; i<numCircles; i++) {
    xy=i;
    ye=-i;
     
    circles[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,0,col); // fill the array with circles at random positions    
    //circles2[i] = new Circle( sin(xe-(.5*i)), xy,xy/10,90);
    
    circles2[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,90,col);
    circles3[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,80,col);
    circles4[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,70,col);
    circles5[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,60,col);
    circles6[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,50,col);
    circles7[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,40,col);
    circles8[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,30,col);
    circles9[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,20,col);
    circles10[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,10,col);
    
    circles12[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,190,col);
    circles13[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,180,col);
    circles14[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,170,col);
    circles15[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,160,col);
    circles16[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,150,col);
    circles17[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,140,col);
    circles18[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,130,col);
    circles19[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,120,col);
    circles20[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,110,col);
    
    circles22[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,290,col);
    circles23[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,280,col);
    circles24[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,270,col);
    circles25[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,260,col);
    circles26[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,250,col);
    circles27[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,240,col);
    circles28[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,230,col);
    circles29[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,220,col);
    circles30[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,210,col);
    
    circles32[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,300,col);
    circles33[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,200,col);
    circles34[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,100,col);
    circles35[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,360,col);
    circles36[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,350,col);
    circles37[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,340,col);
    circles38[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,330,col);
    circles39[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,320,col);
    circles40[i] = new Circle( sin(xe-(.5*i)), xy,ye/10,310,col);
    
    
    //circlestierra[i] = new Circle( sin(xe-(.5*i)), xy*2,ye/10,0,90);
}
   
   for (int i=0; i<numCircles; i++) {
    circles[i].display(); // display all the circles
    circles2[i].display();
    circles3[i].display();
    circles4[i].display();
    circles5[i].display();
    circles6[i].display();
    circles7[i].display();
    circles8[i].display();
    circles9[i].display();
    circles10[i].display();
    
    circles12[i].display();
    circles13[i].display();
    circles14[i].display();
    circles15[i].display();
    circles16[i].display();
    circles17[i].display();
    circles18[i].display();
    circles19[i].display();
    circles20[i].display();
    
    circles22[i].display();
    circles23[i].display();
    circles24[i].display();
    circles25[i].display();
    circles26[i].display();
    circles27[i].display();
    circles28[i].display();
    circles29[i].display();
    circles30[i].display();
    
    circles32[i].display();
    circles33[i].display();
    circles34[i].display();
    circles35[i].display();
    circles36[i].display();
    circles37[i].display();
    circles38[i].display();
    circles39[i].display();
    circles40[i].display();
    
    
    //circlestierra[i].display();
  }
  
  fill(0);
  for (int i = 0; i<49; i++){
    x[i]=x[i+1];
    y[i]=y[i+1];
      fill(50-i,0,0);
    ellipse(x[i],y[i],i,i);

  }
   x[49]=mouseX;
  y[49]=mouseY;
  ellipse(x[49],y[49],49,49);
  //ellipse(mouseX, mouseY,40,40);
  //filter( BLUR, 1 );
  
  
  
  
  
   box2d.step();
// When the mouse is clicked, add a new Box object
  if (random(1) < 0.9) {
    Box p = new Box(random(width),10);
    boxes.add(p);
  }
  if (mousePressed) {
    for (Box b: boxes) {
     b.attract(mouseX, mouseY);
    }
  }
// Display all the boundaries
   // Display all the boxes
  for (Box b: boxes) {
    b.display();
  }
 // Boxes that leave the screen, we delete them
  // (note they have to be deleted from both the box2d world and our list
  for (int i = boxes.size()-1; i >= 0; i--) {
    Box b = boxes.get(i);
    if (b.done()) {
      boxes.remove(i);
    }
  }
  //text("Click mouse to attract boxes",20,20);
          
  
}