boolean logged=false;
//selects
Select s1;
//opcions select
String[] selectedValue={"JINETE/AMAZONA", "ENTRENADOR/A", "AMBOS", "OTROS"};

//Enumerat pantalles
enum PANTALLA {ENTRADA, IS, EMP, ELECCION,FAQs,  ESENCIALES};

//PANTALLA ACTUAL
PANTALLA pantalla=PANTALLA.ELECCION;



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
  //dibujaZonaMenu();

  //logo
  dibujaZonaLogo();

  //DIBUIXA PANTALLA CORRESPONENT
  switch (pantalla) {
  case ENTRADA:
    dibujaPantallaENTRADA(); break;
  case IS:
    dibujaPantallaIS(); break;
  case EMP:
    dibujaPantallaEMP(); break;
  case ELECCION:
    dibujaPantallaEleccion(); break;
  case FAQs:
    dibujaPantallaFAQs(); break;
  case ESENCIALES:
    dibujaPantallaEsenciales();break;
  }




  println("X: "+mouseX+", Y:"+mouseY);
}
