

boolean logged=false;
//selects
Select s1;
//opciones select
String[] selectedValue={"JINETE/AMAZONA", "ENTRENADOR/A", "AMBOS"};
PFont font;


//Enum pantallas
enum PANTALLA {
  ENTRADA, IS, EMP, ELECCION, FAQs, ESENCIALES, PRACTICA, PRACTICATEST1, PRACTICATEST2, EVALUACION, CORRECCION, CALENDARIO
};

//PANTALLA ACTUAL
PANTALLA pantalla=PANTALLA.PRACTICA;

int numRespuesta = 0;
int numTest=0;
int numPregunta = 0;
String idPregunta = "1";
String[][] preguntas;

void setup() {
  fullScreen(P2D);
  textAlign (CENTER);
  setConnexionBBDD();
  setFonts();
  setMedias();
  setGUI();


  preguntas = getInfoTablaPregunta(String.valueOf(numTest));

}

void draw () {
  background(255);

  //logo
  dibujaZonaLogo();

  //DIBUJA PANTALLA CORRESPONDIENTE
  switch (pantalla) {
  case ENTRADA:
    dibujaPantallaENTRADA();
    break;
  case IS:
    dibujaPantallaIS();
    break;
  case EMP:
    dibujaPantallaEMP();
    break;
  case ELECCION:
    dibujaPantallaEleccion();
    break;
  case FAQs:
    dibujaPantallaFAQs();
    break;
  case ESENCIALES:
    dibujaPantallaEsenciales();
    break;
  case PRACTICA:
    dibujaPantallaPractica();
    break;
  case PRACTICATEST1:
    dibujaPantallaPracTEST1();
    break;
  case PRACTICATEST2:
    dibujaPantallaPracTEST2();
    break;
  case EVALUACION:
    dibujaPantallaEvaluacion();
    break;
  case CORRECCION:
    dibujaPantallaCorreccion ();
    break;
  case CALENDARIO:
    dibujaZonaCalendario();
    break;
  }




  //println("X: "+mouseX+", Y:"+mouseY);
}
