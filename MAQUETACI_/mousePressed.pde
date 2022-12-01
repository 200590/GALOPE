//pressed on campo texto
//enum PANTALLA {ENTRADA, IS, EMP, ELECCION, ESENCIALES};
void mousePressed() {

  // Escoltar tots els elements comunS A TOTES LES PANTALLES
  if (b0.mouseOverButton()) {
    pantalla=PANTALLA.ENTRADA;
  }



  if (pantalla==PANTALLA.ENTRADA) {
    if (b1.mouseOverButton()) {
      pantalla=PANTALLA.IS;
    } else if (b2.mouseOverButton()) {
      pantalla=PANTALLA.EMP;
    }
  }

  if (pantalla==PANTALLA.IS) {
    Textousuario.isPressed();
    Textocontraseña.isPressed();
  }

  if (pantalla==PANTALLA.EMP) {
    Textocorreo.isPressed();
    TextocontraseñaE.isPressed();

    /* Textousuario.isPressed();
     Textocontraseña.isPressed();
     cb1.checkMouse();*/
  }

  if (pantalla==PANTALLA.ELECCION) {
    b3.mouseOverButton();
    b4.mouseOverButton();
    b5.mouseOverButton();
    b6.mouseOverButton();
  }

  if (pantalla==PANTALLA.ESENCIALES) {
    cb1.display();
    //cb2.display();
  }
}
