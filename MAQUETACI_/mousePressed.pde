//pressed on campo texto
//enum PANTALLA {ENTRADA, IS, EMP, FAQs, ELECCION, ESENCIALES};
void mousePressed() {

  if (pantalla==PANTALLA.EMP) {
    newUsuario.isPressed();
    Textocorreo.isPressed();
    TextocontraseñaE.isPressed();
    if (next.mouseOverRoundButton()) {
      println("NEXT PITJAT");
      String correo=Textocorreo.text;
      String userName = Textousuario.text;
      String contra=TextocontraseñaE.text;
      String ocupacion=s1.selectedValue;
      println(correo, userName, contra, ocupacion);
      insertInfoTaulaUsuario(correo, userName, contra, ocupacion);
      Textousuario.removeAllText();
      Textocorreo.removeAllText();
      TextocontraseñaE.removeAllText();
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
    if (pantalla==PANTALLA.IS) {
      String user = Textousuario.text;
      String password = Textocontraseña.text;
      int n = getUserLogin(user, password);
      if (n==0) {
        println("ERROR USUARIO O CONTRASEÑA");
        warn.display();
      } else {
        pantalla=PANTALLA.ELECCION;
      }
    } else if (pantalla==PANTALLA.EMP) {
      pantalla=PANTALLA.ELECCION;
      success.display();
    }
  }

  if (back.mouseOverRoundButton()) {
    if (pantalla==PANTALLA.FAQs||pantalla==PANTALLA.ESENCIALES||pantalla==PANTALLA.PRACTICA||pantalla==PANTALLA.PRACTICATEST1||pantalla==PANTALLA.PRACTICATEST2||pantalla==PANTALLA.EVALUACION||pantalla==PANTALLA.CORRECCION||pantalla==PANTALLA.CALENDARIO) {
      pantalla=PANTALLA.ELECCION;
    } else if (pantalla==PANTALLA.IS||pantalla==PANTALLA.EMP) {
      pantalla=PANTALLA.ENTRADA;
    }
  }

  // pantalles

  if (pantalla==PANTALLA.ENTRADA) {
    if (b1.mouseOverButton()) {
      pantalla=PANTALLA.IS;
    } else if (b2.mouseOverButton()) {
      pantalla=PANTALLA.EMP;
    } else if (wb.mouseOverButton()) {
      openWebPage("https://rfhe.com/");
    }
  } else if (pantalla==PANTALLA.IS) {
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
  } else if (pantalla==PANTALLA.PRACTICA) {
    
    if (b7.mouseOverButton()) {
      numTest = 0;
      numPregunta=0;
      preguntas = getInfoTablaPregunta(String.valueOf(numTest));
      printArray(preguntas.length);
      pantalla=PANTALLA.PRACTICATEST1;
    } else if (b8.mouseOverButton()) {
      numTest = 1;
      numPregunta=0;
      preguntas = getInfoTablaPregunta(String.valueOf(numTest));
      printArray(preguntas.length);
      pantalla=PANTALLA.PRACTICATEST1;
    } else if (b9.mouseOverButton()) {
      numTest = 2;
      numPregunta=0;
      preguntas = getInfoTablaPregunta(String.valueOf(numTest));
      printArray(preguntas.length);
    } else if (b10.mouseOverButton()) {
      numTest = 3;
      numPregunta=0;
      preguntas = getInfoTablaPregunta(String.valueOf(numTest));
      printArray(preguntas.length);
    }
  } else if (pantalla==PANTALLA.ESENCIALES) {
    cb1.checkMouse();
    cb4.checkMouse();
    done2.mouseOverButton();
  } else if (pantalla==PANTALLA.FAQs) {

    if (b11.mouseOverButton()) {
      PT.nextPage();
    } else if (b12.mouseOverButton()) {
      PT.prevPage();
    }
  } else if (pantalla==PANTALLA.PRACTICATEST1||pantalla==PANTALLA.PRACTICATEST2) {
    rbg.updateOnClick();
    if (b14.mouseOverButton()) {
      pantalla=PANTALLA.EVALUACION;
    }
    else if (followQ.mouseOverButton() && numPregunta<preguntas.length-1) {
      println("FOLLOW Q");
      numPregunta++;
      println(numPregunta, preguntas.length);
    }
  } else if (pantalla==PANTALLA.EVALUACION) {
    cb2.checkMouse();
    cb3.checkMouse();
    if (b15.mouseOverButton()) {
      pantalla=PANTALLA.CORRECCION;
    }
  } else if (pantalla==PANTALLA.CORRECCION) {
    if (b13.mouseOverButton()) {
      pantalla=PANTALLA.EVALUACION;
    }
  } else if (pantalla==PANTALLA.CALENDARIO) {
    c.checkButtons();
    ImportantEvents.isPressed();
    done.mouseOverButton();
  }
}
