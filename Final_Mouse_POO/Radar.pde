class Radar {
  color color1;
  PVector position;
  int posy_line, posx_line;
  int aux_x, aux_y;
  Radar(color col, PVector Vector) {
    color1 = col;
    position = Vector;
  }

  void display() {
    rect(position.x, position.y, 125, 125);
    scan();
  }

  void scan() {

    draw_lines();
    draw_target();
  }

  void draw_lines() {
    posy_line = (125 * mouseY / 660) + 620;
    line (15, posy_line, 140, posy_line);
    posx_line = (125 * mouseX / 660) + 15;
    line (posx_line, 620, posx_line, 745);
  }

  void draw_target() {
    aux_x = (125 * int(aux.x) / 660) + 15;
    aux_y = (125 * int(aux.y) / 660) + 620;
    pushStyle();
    fill(250, 0, 0);
    noStroke();
    ellipse(aux_x, aux_y, 5, 5);
    popStyle();
  }
}