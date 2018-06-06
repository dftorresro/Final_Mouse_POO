class Background {
  //  SoundFile imparcto_diana;
  PImage background_img;
  PVector pos;
  float time = 2;

  Background(PImage imagen, int a, int b) {
    pos = new PVector(a, b);
    background_img = imagen;
  }

  void display() {
    imageMode(CENTER);
    image(background_img, pos.x, pos.y, 1204, 804);
    textSize(32);
    fill(0, 102, 153);
    if (time <= 0) {
      lose = 1;
      imageMode(CENTER);
      image(backgrounds.get(7), 330, 330, 660, 660);
      if (keyPressed == true && (key == 'm' || key == 'M')) menu=2;
    }
  }

  int move() {
    int a2 = 4;
    if ((mouseX < 100) && (pos.x < 600) && (mouseY < 560) && (mouseY > 100)) {
      pos.x += a2;
      return 1;
    }
    if ((pos.x > 60) && (mouseX > 560) && ((mouseY < 560) && (mouseY > 100))) {
      pos.x -= a2;
      return 1;
    }
    if ((mouseY < 100) && (pos.y < 400) && (mouseX < 560) && (mouseX > 100)) {
      pos.y += a2; 
      return 1;
    }
    if ((mouseY > 560) && (pos.y > 260) && (mouseX < 560) && (mouseX > 100)) {
      pos.y -= a2;
      return 1;
    } else return 0;
  }
}