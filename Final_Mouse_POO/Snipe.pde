abstract class Snipe {
  PVector position;
  PImage snipe;

  Snipe(PImage img) {
    snipe = img;
  }

  abstract void display();
}