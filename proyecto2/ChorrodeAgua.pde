class ChorrodeAgua {

  ArrayList<Gota> gotas;    
  PVector origen;         

  ChorrodeAgua(int num, PVector v) {
    gotas = new ArrayList<Gota>();            
    origen = v.get();                        

      for (int i = 0; i < num; i++) {
      gotas.add(new Gota(origen.x,origen.y));    
    }
  }

  void run() {
  
    for (Gota g: gotas) {
      g.display();
    }

    
    for (int i = gotas.size()-1; i >= 0; i--) {
      Gota g = gotas.get(i);
      if (g.done()) {
        gotas.remove(i);
      }
    }
  }

  void addGotas(int n) {
    for (int i = 0; i < n; i++) {
      gotas.add(new Gota(origen.x,origen.y));
    }
  }

  boolean dead() {
    if (gotas.isEmpty()) {
      return true;
    } 
    else {
      return false;
    }
  }

}
