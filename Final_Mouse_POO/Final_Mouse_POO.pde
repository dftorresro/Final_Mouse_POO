ArrayList <PImage> backgrounds = new ArrayList();
ArrayList <PImage> scopes = new ArrayList();
ArrayList <PImage> targets = new ArrayList();


PImage diana, mira;
PVector target_pos = new PVector(random(0, 660), random(0, 660));
PVector Ard_Pos, aux;
int nivel = 0, menu = 0, lose = 0, accuracy, aux_snipe = 0;
Background back;
Scope scope;
Red_Snipe red_snipe;
Presition presition;
Level level1, level2, level3;
Fiberboard fiberboard;

void setup() {
 
  size(660, 760);
  load_imagenes();
  load_niveles();
  load_panel();
}

void draw() { 
  println(menu);
  switch(menu) {
  case 0:
    imageMode(CENTER);
    image(backgrounds.get(0), 330, 380, 660, 760);
    if (keyPressed == true || mousePressed == true) menu++;
    break;

  case 1:
    imageMode(CENTER);
    image(backgrounds.get(1), 330, 380, 660, 760);
    if ((keyPressed == true && (key == 'i' || key == 'I'))|| mousePressed == true) menu++;
    break;

  case 2:
    imageMode(CENTER);
    image(backgrounds.get(2), 330, 330, 660, 660);
    if (aux_snipe == 0)red_snipe.display();
    if (aux_snipe == 1)presition.display();
    if (aux_snipe == 2)scope.display();
    break;

  case 3:
    if (lose == 0) {
      level1.display();
      if (aux_snipe == 0)red_snipe.display();
      if (aux_snipe == 1)presition.display();
      if (aux_snipe == 2)scope.display();
    } else {
      imageMode(CENTER);
      background(backgrounds.get(6));
    }
    break;

  case 4:
    if (lose == 0) {
      level2.display();
      if (aux_snipe == 0)red_snipe.display();
      if (aux_snipe == 1)presition.display();
      if (aux_snipe == 2)scope.display();
    }
    break;

  case 5:
    if (lose == 0) {
      level3.display();
      if (aux_snipe == 0)red_snipe.display();
      if (aux_snipe == 1)presition.display();
      if (aux_snipe == 2)scope.display();
    }
    break;
  }

  if (keyPressed == true && (key == 'm' || key == 'M')) { //volver al inicio
    menu = 2;
    lose = 0;
  }
}

void mouseClicked() {
  if (menu == 2) {
    if ((mouseX >= 230) && (mouseX <= 450) && (mouseY >= 270) && (mouseY <= 330)) menu = 3;
    if ((mouseX >= 230) && (mouseX <= 450) && (mouseY >= 360) && (mouseY <= 420)) menu = 4;
    if ((mouseX >= 230) && (mouseX <= 450) && (mouseY >= 450) && (mouseY <= 510)) menu = 5;
  }
}

void load_imagenes() {
  scopes.add(loadImage ("Mirillas/snipe3.png"));
  scopes.add(loadImage ("Mirillas/snipe1.png"));
  scopes.add(loadImage ("Mirillas/snipe2.png"));
  targets.add(loadImage ("Objetivos/target1.png"));
  targets.add(loadImage ("Objetivos/target2.png"));
  targets.add(loadImage ("Objetivos/target3.png"));
  backgrounds.add(loadImage("cobra.jpg"));
  backgrounds.add(loadImage("Fondos/inicio2.jpg"));
  backgrounds.add(loadImage("Fondos/inicio3.jpg"));
  backgrounds.add(loadImage("Fondos/nvl1.jpg"));
  backgrounds.add(loadImage("Fondos/nvl2.jpg"));
  backgrounds.add(loadImage("nvl3.jpg"));
  backgrounds.add(loadImage("Fondos/ganar.jpg"));
  backgrounds.add(loadImage("Fondos/perder.jpg"));
}

void load_niveles() {
  level1 = new Level(backgrounds.get(3), 330, 330, 10, 330, 330);
  level2 = new Level(backgrounds.get(4), 330, 330, 10, 330, 330);
  level3 = new Level(backgrounds.get(5), 330, 330, 10, 330, 330);
}


void load_panel() {
  fiberboard = new Fiberboard();
}

void load_snipes() {
  scope = new Scope(scopes.get(0));
  presition = new Presition(scopes.get(1)); 
  red_snipe = new Red_Snipe(scopes.get(2));
}