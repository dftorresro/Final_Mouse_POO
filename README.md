# Final_Mouse_POO
Trabajo final 
Adel Sebastian Muñoz
Andres Ortega Lobo 	
Kevin Felipe Carrillo Romero 
Sergio Rodriguez Mayorga 
Daniel Felipe Torres Robles
Zamir Velasquez Beltran 

OBjetivo:
Elaborar un codigo sencillo a partir del paradigma de programación orientado a objetos.

CLASES ABSTRACTAS:
Snipe: Tiene como parametros un PVECTOR y un PIMAGE con un metodo principal display ,otras clases le heredan estos atributos y metodos, display genera una imagen que simula la mira.
Target: Tiene como parametros dos PVECTOR posicion, PIMAGE y cinco variables auxiliares, tiene tres metodos (display,move y boolean pick)el display muestra aleatoriamente los objetivos, el move hace la ilucion de que los objetivos se mueven con el fondo  conforme al movimiento del mouse y el pick permite saber si dio en el objetivo, esta clase hereda a tres subclases que son los diferentes tipos de objetivo.

CLASES NoRMALES:
BACKGROUND: Tiene como parametros un PVECTOR, PIMAGE; una variable auxiliar, de metodos tiene: Display la cual coloca la imagen de fondo que es mas grande que la pantalla, y move que mueve la imagen de fondo respecto a la mira.
RADAR: Tiene como parametros Color, PVECTOR y cuatro variables auxiliares, sus cuatro metodos por medio de una regla de tres muestran al usuario donde en el juego quedaron los objetivos.
fIBERBOARD: Tiene como parametros un objeto radar, un PVECTOR, COLOR y una variable float TIME y como metodos tiene el display que dibuja texto, el radar y dibuja en pantalla todos los tipos de mira, y contabiliza el tiempo.
LEVEL:Tiene como parametros objetos Target, backgrounds y snipe, el void display contiene incluida toda la jugabilidad.

DISCUSION DE LOS RESULTADOS:
Con base a dicho programa se puede trabajar a futuro con mejores efectos tanto visuales como de sonido, tambien se le puede añadir mayor variedad en los niveles, sin embargo hasta lo logrado el paradigma de la programacion orientada a objetos ha sido de mucha utilidad en cuanto a la sencillez del codigo haciendo que este sea mas facil de comprender por otras programacion que usen este programa como base para futuros proyectos.

REFERENCIAS:
processing.org
