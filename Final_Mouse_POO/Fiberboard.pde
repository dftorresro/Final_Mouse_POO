class Fiberboard {    
  Radar radar;
  PVector rad_position; 
  color rad_color;
  float time = 2;


  Fiberboard() {
    rad_color = color(#4D5AAA);
    rad_position = new PVector(15, 620);
    radar = new Radar(rad_color, rad_position);
  }

  void display() {
    if (time > 0) {
      draw_background();
      draw_text();
      draw_snipe();
      radar.display();
    }
  }
  void draw_background() {
    pushStyle();
    fill(#2B335F);
    rect(0, 660, 660, 100);
    popStyle();
  }

  void draw_text() {
    pushStyle();
    fill(250);
    text("Time:", 150, 700);
    text(time -= 0.001, 235, 700);
    text("Targets:", 150, 735);
    text("10", 285, 735);
    popStyle();
  }

  void draw_snipe() {
    if (aux_snipe <=2 && aux_snipe >= 0) {
      if (keyPressed &&(key == 's' || key == 'S')) {
        aux_snipe ++;
      }
    } else {
      aux_snipe = 0;
    }
    if (aux_snipe == 0)rect(570, 670, 80, 80);
    if (aux_snipe == 1)rect(480, 670, 80, 80);
    if (aux_snipe == 2)rect(390, 670, 80, 80);
    image(scopes.get(0), 610, 710, 80, 80);
    image(scopes.get(1), 520, 710, 80, 80);
    image(scopes.get(2), 430, 710, 80, 80);
  }
}