//pressed on campo texto
//enum PANTALLA {ENTRADA, IS, EMP, FAQs, ELECCION, ESENCIALES};
void mousePressed() {

  // Escoltar tots els elements comunS A TOTES LES PANTALLES
  if (b0.mouseOverRoundButton()) {
    pantalla=PANTALLA.ENTRADA;
  }
  
  if (next.mouseOverRoundButton()){        
    if (pantalla==PANTALLA.IS||pantalla==PANTALLA.EMP){
      pantalla=PANTALLA.ELECCION;
    }
  }

    if (back.mouseOverRoundButton()){
      if (pantalla==PANTALLA.FAQs||pantalla==PANTALLA.ESENCIALES||pantalla==PANTALLA.PRACTICA){
        pantalla=PANTALLA.ELECCION;
    }
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
  }

  if (pantalla==PANTALLA.ELECCION) {
    if (b3.mouseOverButton()){
     pantalla=PANTALLA.FAQs;
    }else if (b4.mouseOverButton()){
     pantalla=PANTALLA.PRACTICA;
    }else if (b5.mouseOverButton()){
       P1.reset();
       P2.reset();
       P3.reset();
      pantalla=PANTALLA.ESENCIALES;
    }else if (b6.mouseOverButton()){
      //pantalla=PANTALLA.CALENDARIO
    }
   
  }

  if (pantalla==PANTALLA.ESENCIALES) {
    cb1.checkMouse();
    //cb2.display();
  }
  
  if (pantalla==PANTALLA.FAQs){
   if (b11.mouseOverButton()){
     PT.nextPage();
   }else if(b12.mouseOverButton()){
     PT.prevPage();
   }
  }
  
  if (pantalla==PANTALLA.PRACTICA){
    if (b7.mouseOverButton()){
      pantalla=PANTALLA.PRACTICATEST1;
    }
  }
    /*else if (b8.mouseOverButton()){
    }else if (b9.mouseOverButton()){
   }else if (b10.mouseOverButton()){
  }*/
}
