//pressed on campo texto
//enum PANTALLA {ENTRADA, IS, EMP, FAQs, ELECCION, ESENCIALES};
void mousePressed() {

  
  if (pantalla==PANTALLA.EMP) {
    Textousuario.isPressed();
    Textocorreo.isPressed();
    TextocontraseñaE.isPressed();
    if (next.mouseOverRoundButton()){
      println("NEXT PITJAT");
      String correo=Textocorreo.text;
      String userName = Textousuario.text;
      String contra=TextocontraseñaE.text;
      String ocupacion=s1.selectedValue;
      println(correo, userName, contra, ocupacion);
      insertInfoTaulaUsuario(correo, userName, contra, ocupacion);
    }
    if (s1.mouseOverSelect()) {
      if (!s1.wraped) {
        s1.update();
      }
      s1.toggle();
    }
  }
  
  // Escoltar tots els elements comunS A TOTES LES PANTALLES
  if (b0.mouseOverRoundButton()) {
    pantalla=PANTALLA.ENTRADA;
  }

  if (next.mouseOverRoundButton()) {
    if (pantalla==PANTALLA.IS||pantalla==PANTALLA.EMP) {
      pantalla=PANTALLA.ELECCION;
    }
  }

  if (back.mouseOverRoundButton()) {
    if (pantalla==PANTALLA.FAQs||pantalla==PANTALLA.ESENCIALES||pantalla==PANTALLA.PRACTICA||pantalla==PANTALLA.PRACTICATEST1||pantalla==PANTALLA.PRACTICATEST2||pantalla==PANTALLA.EVALUACION||pantalla==PANTALLA.CORRECCION||pantalla==PANTALLA.CALENDARIO) {
      pantalla=PANTALLA.ELECCION;
    }else if (pantalla==PANTALLA.IS||pantalla==PANTALLA.EMP){
      pantalla=PANTALLA.ENTRADA;
    }
  }
  
  // pantalles

  if (pantalla==PANTALLA.ENTRADA) {
    if (b1.mouseOverButton()) {
      pantalla=PANTALLA.IS;
    } else if (b2.mouseOverButton()) {
      pantalla=PANTALLA.EMP;
    }else if(wb.mouseOverButton()){
      openWebPage("https://rfhe.com/");
    }
  }

  else if (pantalla==PANTALLA.IS) {
    Textousuario.isPressed();
    Textocontraseña.isPressed();
  }

   

   if (pantalla==PANTALLA.ELECCION) {
    if (b3.mouseOverButton()) {
      pantalla=PANTALLA.FAQs;
    } else if (b4.mouseOverButton()) {
      pantalla=PANTALLA.PRACTICA;
    } else if (b5.mouseOverButton()) {
      P1.reset();
      P2.reset();
      P3.reset();
      pantalla=PANTALLA.ESENCIALES;
    } else if (b6.mouseOverButton()) {
      pantalla=PANTALLA.CALENDARIO;
    }
  }
  else if (pantalla==PANTALLA.PRACTICA) {
    if (b7.mouseOverButton()||b8.mouseOverButton()||b9.mouseOverButton()||b10.mouseOverButton()) {
      pantalla=PANTALLA.PRACTICATEST1;
    }/* else if (b8.mouseOverButton()) {
      pantalla=PANTALLA.PRACTICATEST2;
    }*/
  }

  else if (pantalla==PANTALLA.ESENCIALES) {
    cb1.checkMouse();
    cb4.checkMouse();
  }

  else if (pantalla==PANTALLA.FAQs) {
    if (b11.mouseOverButton()) {
      PT.nextPage();
    } else if (b12.mouseOverButton()) {
      PT.prevPage();
    }
  }

  else if (pantalla==PANTALLA.PRACTICA) {
    if (b7.mouseOverButton()) {
      pantalla=PANTALLA.PRACTICATEST1;
    } else if (b8.mouseOverButton()) {
      pantalla=PANTALLA.PRACTICATEST2;
    }
  }

  else if (pantalla==PANTALLA.PRACTICATEST1||pantalla==PANTALLA.PRACTICATEST2) {
    rbg.updateOnClick();
    if (b14.mouseOverButton()){
    pantalla=PANTALLA.EVALUACION;
    }
  }
  
  else if (pantalla==PANTALLA.EVALUACION) {
    cb2.checkMouse();
    cb3.checkMouse();
    if (b15.mouseOverButton()){
      pantalla=PANTALLA.CORRECCION;
    }
  }
  else if (pantalla==PANTALLA.CORRECCION){
    if (b13.mouseOverButton()){
      pantalla=PANTALLA.EVALUACION;
    }
  }
  else if (pantalla==PANTALLA.CALENDARIO){
    c.checkButtons();
  }
}
