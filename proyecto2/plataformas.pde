class Plataforma {
 
  Body body;      
  
  float w,h;

  Plataforma(float x, float y) {
    this. w = 5;
    this.h = 5;
    

    
    BodyDef bd = new BodyDef();      
    bd.type = BodyType.STATIC;
    bd.position.set(box2d.coordPixelsToWorld(x,y));
    body = box2d.createBody(bd);


    PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w/2);
    float box2dH = box2d.scalarPixelsToWorld(h/2);  
    sd.setAsBox(box2dW, box2dH);           
                          
    
    FixtureDef fd = new FixtureDef();
    fd.shape = sd;
    
    
                 
    body.createFixture(fd);
  }

  void display() {
   
    Vec2 pos = box2d.getBodyPixelCoord(body);    
    float a = body.getAngle();

    pushMatrix();
    translate(pos.x,pos.y);    
    rotate(-a);            
    fill(#D83BB4);
    stroke(#D83BB4);
    rectMode(CENTER);
    rect(0,0,w,h);
    popMatrix();
  }

}
