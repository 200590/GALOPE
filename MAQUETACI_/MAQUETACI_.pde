boolean logged=false;
//selects
Select s1;
//opcions select
String[] selectedValue={"JINETE/AMAZONA", "ENTRENADOR/A", "AMBOS", "OTROS"};

//Enumerat pantalles
enum PANTALLA {ENTRADA, IS, EMP, ELECCION,FAQs,  ESENCIALES, PRACTICA, PRACTICATEST1, PRACTICATEST2, EVALUACION, CORRECCION, CALENDARIO};

//PANTALLA ACTUAL
PANTALLA pantalla=PANTALLA.ESENCIALES;



void setup() {
  fullScreen(P2D);
  textAlign (CENTER);
  setGUI();
  loadMedia();
}

void draw () {
  background(255);
  //image(Logo, margeX, margeX+107, llarglogo, amplogo);

 
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
  case PRACTICA:
    dibujaPantallaPractica(); break;
  case PRACTICATEST1: 
    dibujaPantallaPracTEST1(); break;
  case PRACTICATEST2: 
    dibujaPantallaPracTEST2(); break;
   case EVALUACION: 
     dibujaPantallaEvaluacion(); break;
   case CORRECCION:
     dibujaPantallaCorreccion (); break;
   case CALENDARIO:
     dibujaZonaCalendario(); break;
  }




  println("X: "+mouseX+", Y:"+mouseY);
}
