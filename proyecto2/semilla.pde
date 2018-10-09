class Semilla {

  
  Body body;
  float r;

  Semilla(float x, float y, float r_) {
    r = r_;

    makeBody(x,y,r);
  }


  void display() {
   
    Vec2 pos = box2d.getBodyPixelCoord(body);
  
    float a = body.getAngle();
    pushMatrix();
    translate(pos.x,pos.y);
    rotate(-a);
    fill(#B3FF7E);
    stroke(0);
    strokeWeight(1);
    ellipse(0,0,r,r*1.5);
    popMatrix();
   
  }

 
  void makeBody(float x, float y, float r) {
    
    BodyDef bd = new BodyDef();
    
    bd.position = box2d.coordPixelsToWorld(x,y);
    bd.type = BodyType.STATIC;
    body = box2d.world.createBody(bd);

 
    CircleShape cs = new CircleShape();
    cs.m_radius = box2d.scalarPixelsToWorld(r);
    
    FixtureDef fd = new FixtureDef();
    fd.shape = cs;
   
  
    body.createFixture(fd);

  
  }






}
