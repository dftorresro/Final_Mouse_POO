class Scope extends Snipe {

  Scope(PImage scope) {
    super(scope);
  }
  void display() {
    imageMode( CENTER );
    image(scopes.get(2), mouseX, mouseY, 100, 100);
  }
}
