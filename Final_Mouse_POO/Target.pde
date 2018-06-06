abstract class Target {
  PImage target_img;
  PVector position;
  PVector background_pos;
  int show = 0, aux_x, aux_y, cont_shot, cont = 0;

  Target(PImage img, int x, int y) {
    target_img = img;
    position = new PVector(random(-10, 700), random(0, 660));
    background_pos = new PVector(x, y);
  }

  abstract void display();
  abstract void move();
  abstract boolean pick(int x, int y);
}