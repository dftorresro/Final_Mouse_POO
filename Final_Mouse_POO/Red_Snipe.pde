class Red_Snipe extends Snipe {


  Red_Snipe(PImage snipe) {
    super(snipe);
  }

  void display() {
    imageMode( CENTER );
    image(scopes.get(0), mouseX, mouseY, 100, 100);
  }
}