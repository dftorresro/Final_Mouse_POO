class Presition extends Snipe {

  Presition(PImage snipe) {
    super(snipe);
  }
  void display() {
    imageMode( CENTER );
    image(scopes.get(1), mouseX, mouseY, 100, 100);
  }
}
