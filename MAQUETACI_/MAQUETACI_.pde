boolean logged=false;

//Enumerat pantalles
enum PANTALLA {ENTRADA, IS, EMPEZAR, ELECCION, ESENCIALES};

//PANTALLA ACTUAL
PANTALLA pantalla=PANTALLA.ESENCIALES;



void setup() {
  fullScreen();
  textAlign (CENTER);
  setGUI();
  loadMedia();
}

void draw () {
  image(Logo, margeX, margeX+107, llarglogo, amplogo);

  background(255);
  //menu
  dibujaZonaMenu();

  //logo
  dibujaZonaLogo();

  //DIBUIXA PANTALLA CORRESPONENT
  switch (pantalla) {
  case ENTRADA:
    dibujaPantallaENTRADA();
    break;
  case IS:
    dibujaPantallaIS();
    break;
  case EMPEZAR:
    dibujaPantallaEMP();
    break;
  case ELECCION:
    dibujaPantallaEleccion();
    break;
  case ESENCIALES:
    dibujaPantallaEsenciales();
    break;
  }




  println("X: "+mouseX+", Y:"+mouseY);
}

//pressed on campo texto
/*void mousePressed(){
 Textousuario.isPressed();
 Textocontraseña.isPressed();
 cb1.checkMouse();
 }*/
