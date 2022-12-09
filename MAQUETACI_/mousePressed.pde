//pressed on campo texto
//enum PANTALLA {ENTRADA, IS, EMP, FAQs, ELECCION, ESENCIALES};
void mousePressed() {

  // Escoltar tots els elements comunS A TOTES LES PANTALLES
  if (b0.mouseOverRoundButton()) {
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
      if (s1.mouseOverSelect()){
        if (!s1.wraped){
          s1.update();
        }
        s1.toggle();
      }

    /* Textousuario.isPressed();
     Textocontraseña.isPressed();
     cb1.checkMouse();*/
  }

  if (pantalla==PANTALLA.ELECCION) {
    if (b3.mouseOverButton()){
     pantalla=PANTALLA.FAQs;
    }else if (b4.mouseOverButton()){
     // pantalla=PANTALLA.PRACTICA;
    }else if (b5.mouseOverButton()){
      pantalla=PANTALLA.ESENCIALES;
    }else if (b6.mouseOverButton()){
      //pantalla=PANTALLA.CALENDARIO
    }
    
    //b3.mouseOverButton();
    //b4.mouseOverButton();
    //b5.mouseOverButton();
   // b6.mouseOverButton();
  }

  if (pantalla==PANTALLA.ESENCIALES) {
    cb1.display();
    //cb2.display();
  }
}
