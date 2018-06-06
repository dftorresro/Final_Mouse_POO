class Person extends Target {


  Person(PImage image, int a, int b) {
    super(image, a, b);
  }

  @Override
    void display() {
    if (show == 1) {
      aux = position;
      imageMode( CENTER );
      image(target_img, position.x, position.y, 100, 100);
      if (pick(mouseX, mouseY) && mousePressed==true) {
        //print(cont);
        println("PUM");

        show = 0;
      } else {
      }
    }
  }

  void move() {
    int a2 = 4;
    if ((mouseX < 100) && (background_pos.x < 600)) position.x += a2;
    if ((mouseX > 530) && (background_pos.x > 60)) position.x -= a2;
    if ((mouseY < 100) && (background_pos.y < 400)) position.y += a2;
    if ((mouseY > 530 && (background_pos.y > 260))) position.y -= a2;
  }

  boolean pick(int x, int y) {

    return(((mouseX < position.x + 25) && (mouseX > position.x - 25) && (mouseY < position.y + 35) && (mouseY > position.y - 35))||((mouseX < position.x + 10) && (mouseX > position.x - 10) && (mouseY < position.y + 15) && (mouseY > position.y - 15)));
  }
}