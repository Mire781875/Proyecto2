
import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;

Box2DProcessing box2d;

int pantalla = 0;

ArrayList<Obstaculo> obstaculos;
ArrayList<ChorrodeAgua> agua;
ArrayList<Semilla> semillas;
ArrayList<Plataforma> plataformas;

PImage pantallain, instrucciones, nivel1,nivel2,nivel3,pantallafin;
PImage flor1, flor2, flor3;





void setup(){
background(0);
size(600,600);
smooth();


  pantallain    = loadImage("pantalla_inicio.jpg"); 
  instrucciones = loadImage("pantalla_instrucciones.jpg");
  pantallafin   = loadImage("pantalla_final.jpg");
  flor1         = loadImage("flor_nivel1.png");
  flor2         = loadImage("flor_nivel2.png");
  flor3         = loadImage("flor_nivel3.png");





  box2d = new Box2DProcessing(this);
  box2d.createWorld();


  box2d.setGravity(0, -5);

  obstaculos = new ArrayList<Obstaculo>();
  agua = new ArrayList<ChorrodeAgua>();
  semillas = new ArrayList<Semilla>();
  plataformas = new ArrayList<Plataforma>();
  
  

}

void draw() {
  background(0);
  box2d.step();
  if(pantalla == 0){
    image(pantallain,0,0,600,600);
    if (mousePressed && (mouseX>80) && (mouseX<80+235) && (mouseY>550) && (mouseY<550+80))
  {
   pantalla=1;
  }
  }
  if(pantalla == 1){
  image(instrucciones, 0, 0, 600, 600);
  if (mousePressed && (mouseX>480) && (mouseX<480+235) && (mouseY>550) && (mouseY<550+80))
  {
   pantalla=2;
  }
  }
  if(pantalla==2){
  obstaculos.add(new Obstaculo(100,80,200,10,0.0));
  obstaculos.add(new Obstaculo(300,170,180,10,0.0));
  obstaculos.add(new Obstaculo(250,300,250,10,0.0));
  obstaculos.add(new Obstaculo(300,500,300,10,0.0));
  agua.add(new ChorrodeAgua(0, new PVector(200,0)));
  semillas.add(new Semilla(578,578,10));
  
  fill(255);
  rect (200,5,13,13);  
  
  if (mousePressed && (mouseX>570) && (mouseX<570+35) && (mouseY>550) && (mouseY<550+80))
  {
   pantalla=3;
  }
  if(pantalla==3){
  background(0);
  obstaculos.add(new Obstaculo(200,80,200,10,0.3));
  obstaculos.add(new Obstaculo(100,180,180,10,-0.2));
  obstaculos.add(new Obstaculo(150,140,250,10,0.0));
  obstaculos.add(new Obstaculo(200,500,300,10,-0.3));
  obstaculos.add(new Obstaculo(250,270,200,10,0.5));
  obstaculos.add(new Obstaculo(300,400,220,10,0.0));
  obstaculos.add(new Obstaculo(400,170,180,10,0.0));
  semillas.add(new Semilla(178,570,10));
  
  if (mousePressed && (mouseX>50) && (mouseX<50+235) && (mouseY>550) && (mouseY<550+80))
  {
   pantalla=4;
  }
   if(pantalla==4){
  background(0);
  obstaculos.add(new Obstaculo(200,80,200,10,0.3));
  obstaculos.add(new Obstaculo(100,180,180,10,-0.2));
  obstaculos.add(new Obstaculo(150,140,250,10,0.0));
  obstaculos.add(new Obstaculo(200,500,300,10,-0.3));
  obstaculos.add(new Obstaculo(250,270,200,10,0.5));
  obstaculos.add(new Obstaculo(300,400,220,10,0.0));
  obstaculos.add(new Obstaculo(400,170,180,10,0.0));
  obstaculos.add(new Obstaculo(80,300,160,10,-0.5));
  obstaculos.add(new Obstaculo(470,300,190,10,0.0));
  obstaculos.add(new Obstaculo(300,400,10,220,0.0));
  obstaculos.add(new Obstaculo(500,500,10,220,0.0));
  obstaculos.add(new Obstaculo(20,500,10,320,0.0));
  semillas.add(new Semilla(300,480,10));
  
  if (mousePressed && (mouseX>30) && (mouseX<300+235) && (mouseY>550) && (mouseY<550+80))
  {
   pantalla=4;
  }
 
  }
  
}
  }
if(pantalla == 5){
  image(pantallafin, 0, 0, 600, 600);
}
  
  for (ChorrodeAgua agua: agua) {
    agua.run();

    int n = (int) random(0,2);
    agua.addGotas(n);
   
  }

  for (Obstaculo wall: obstaculos) {
    wall.display();
  }
  for (Semilla semi: semillas) {
    semi.display();
  }
  if (mousePressed) {
    Plataforma p = new Plataforma(mouseX,mouseY);
    plataformas.add(p);
  }

  
  for (Plataforma b: plataformas) {
    b.display();
  }
  
}
