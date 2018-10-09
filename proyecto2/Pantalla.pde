/*void screens()
{
  switch(pantalla)
  {
  case 0:
    pantallain();
    break;
  case 1:
    instrucciones();
    break;
  case 2:
    nivel_1();
    break;
    
  case 3:
    nivel_2();
    break;
    
  case 4:
    nivel_3();
    break;
  
  case 5:
   pantallafin();
   break;
 }
}

void pantallain()
{

  image(pantallain,0,0,600,600);
if (mousePressed && (mouseX>80) && (mouseX<80+235) && (mouseY>550) && (mouseY<550+80))
  {
   pantalla=1;
  }
}
void instrucciones()
{
  image(instrucciones, 0, 0,600,600);
  if (mousePressed && (mouseX>480) && (mouseX<480+235) && (mouseY>550) && (mouseY<550+80))
  {
   pantalla=2;
  }
}
void nivel_1(){
  background(0);
  box2d.step();
  box2d.setGravity(0, -5);
  
  obstaculos.add(new Obstaculo(100,80,200,10,0.0));
  obstaculos.add(new Obstaculo(300,170,180,10,0.0));
  obstaculos.add(new Obstaculo(250,300,250,10,0.0));
  obstaculos.add(new Obstaculo(300,500,300,10,0.0));
  agua.add(new ChorrodeAgua(0, new PVector(200,0)));
  semillas.add(new Semilla(578,578,10));
  
  fill(255);
  rect (200,5,13,13);
  
  if (mousePressed && (mouseX>580) && (mouseX<580+235) && (mouseY>578) && (mouseY<578+80))
  {
    {
    image(flor1,578,578);
    
  }
  }
  
}
void nivel_2(){
background (0);
  box2d.step();
  box2d.setGravity(0, -20);  
  
  obstaculos.add(new Obstaculo(200,80,200,10,0.3));
  obstaculos.add(new Obstaculo(100,180,180,10,-0.2));
  obstaculos.add(new Obstaculo(150,140,250,10,0.0));
  obstaculos.add(new Obstaculo(200,500,300,10,-0.3));
  obstaculos.add(new Obstaculo(250,270,200,10,0.5));
  obstaculos.add(new Obstaculo(300,400,220,10,0.0));
  obstaculos.add(new Obstaculo(400,170,180,10,0.0));
  agua.add(new ChorrodeAgua(0, new PVector(500,0)));
  semillas.add(new Semilla(178,178,10));

  fill (255);
  rect (500,5,13,13);
}
void nivel_3(){
  background (0);
  box2d.step();
  box2d.setGravity(0, -20); 
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
  agua.add(new ChorrodeAgua(0, new PVector(300,0)));
  semillas.add(new Semilla(80,80,10));

}
void pantallafin(){
image(pantallafin,0,0,600,600);
}*/
