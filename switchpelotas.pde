//
ArrayList <Particula> Particulas;
int num;

//Particula[] Foo=new Particula[10];
//Particula[] Bar=new Particula[10];

//Particula Ooo;
//Particula Loc;
//Particula Sho;
//Particula Sal;
//Particula Jac;
//Particula Obi;

void setup(){
  size(500,500);
  Particulas = new ArrayList <Particula>();
  for(int i=0; i<200;i++){
    Particulas.add(new Particula());
   // Particulas.add(new Particula(50,50,255,0,0,250,250,10,0));
  //Foo[i]= new Particula(50,50,255,0,0,250,250,10,0);
  }
  //for(int i=0; i<10;i++){
  //Bar[i]= new Particula(100,50,0,0,255,100,100,20,0);
  //}
  //Ooo= new Particula(60,50,255,250,0,0,250,10,0);
  //Loc= new Particula(60,50,255,250,0,0,250,10,0);;
  //Sho= new Particula(60,50,255,250,0,0,250,10,0);;
  //Sal= new Particula(60,50,255,250,0,0,250,10,0);;
  //Jac= new Particula(60,50,255,250,0,0,250,10,0);;
  //Obi= new Particula(60,50,255,250,0,0,250,10,0);;
  
}
void draw(){
  background(255);
   if(key == 'q' || key == 'Q' ){
    num = 0;
  }
  if(key == 'w' || key == 'W' ){
    num = 1;
  }
  if(key == 'e' || key == 'E' ){
    num = 2;
  }
  if(key == 'r' || key == 'R' ){
    num=3;
  }
    if(key == 't' || key == 'T'){
    num=4;
  }
  for(Particula p: Particulas) {
  p.Dibujar();
  p.Mover();
  }
   //for(int i=0; i<10;i++) {
  //Bar[i].Dibujar();
  //Bar[i].Mover();
   //}
  //Ooo.Dibujar2();
  //Ooo.Mover();
  //Loc.Dibujar2();
  //Loc.Mover();
  //Sho.Dibujar2();
  //Sho.Mover();
  //Sal.Dibujar2();
  //Sal.Mover();
  //Jac.Dibujar2();
  //Jac.Mover();
  //Obi.Dibujar2();
  //Obi.Mover();
  
}
class Particula{
  int ancho;
  int alto;
  int r,g,b;
  float px, py;
  int velocidad;
  float direccion; //angulo 0 - TWO_PI;
  
  Particula(int ancho_, int alto_, int r_, int g_, int b_, float px_, float py_, int velocidad_, float direccion_){
    ancho= ancho_;
    alto= alto_;
    r= r_;
    g= g_;
    b= b_;
    px= px_;
    py= py_;
    velocidad= velocidad_;
    direccion= direccion_;
  }
  Particula(){
    ancho = int(random(200));
    alto = ancho;
    r= int (random(255));
    g= int (random(255));
    b= int (random(255));
    velocidad= 1 + int(random(2));
    direccion = random(TWO_PI);
    px=random(500);
    py=random(500);
  }
  
  void Dibujar(){
    switch(num) {
  case 0: 
  ellipse( px, py, ancho, alto);
    println("Zero");  // Does not execute
    break;
  case 1: 
  //rect( px, py, ancho, alto);
  polygon(px, py, ancho/2, 3); 
    println("One");  // Prints "One"
    break;
    case 2: 
  rect( px, py, ancho, alto);
  //polygon(px, py, ancho, 3); 
    println("two");  // Prints "One"
    break;
     case 3: 
  //rect( px, py, ancho, alto);
  polygon(px, py, ancho/2, 5); 
    println("One");  // Prints "One"
    break;
     case 4: 
  //rect( px, py, ancho, alto);
  polygon(px, py, ancho/2, 6); 
    println("One");  // Prints "One"
    break;
}
    noStroke();
    rectMode(CENTER);
    fill(r,g,b,190);
    
  }
  //UUUUUUUUUUUUUU
  void Dibujar2(){
    noStroke();
    rectMode(CENTER);
    fill(r,g,b);
    ellipse( px, py, ancho, alto);
  }
  void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape (CLOSE);
  }
  //UUUUUUUUUUUU
  
  void Mover(){
    px+=cos(direccion)*velocidad;
    py+=sin(direccion)*velocidad;
    if (px >= 500) {
     direccion=random(PI/2,3*(PI/2));
  }
  if (px <= 0) {
     direccion=random(-PI/2,PI/2);
  }
   if (py <= 0) {
     direccion=random(0,PI);
  }
  if (py >= 500) {
     direccion=random(PI,2*PI);
  }
    
  }
  
    
}