class Level {
  int aux_nivel = 0;
  Background background;
  Target[] targets_level;
  Snipe snipe;

  Level(PImage fondoimg, int a, int b, int numtargets, int x, int y) {
    background = new Background(fondoimg, a, b);
    targets_level = new Target[numtargets];
    for (int aux_nivel = 0; aux_nivel < numtargets; aux_nivel++) {
      targets_level[aux_nivel] = new Diana(targets.get(int(random(0, 3))), x, y);
    }
    load_snipes();
  }

  void display() {
    background.display();
    if (aux_nivel == targets_level.length) {
      imageMode(CENTER);
      image(backgrounds.get(6), 330, 330, 660, 660);
      if (keyPressed == true) {
        aux_nivel = 0;
        menu= 1;
      }
    }

    if (aux_nivel < targets_level.length) {

      targets_level[aux_nivel].show = 1;
      targets_level[aux_nivel].display();
      if ((background.move() == 1)) targets_level[aux_nivel].move();
      if (targets_level[aux_nivel].show == 0) aux_nivel++;
      fiberboard.display();
    }
  }
}
