
void dibujaPantallaENTRADA() {
  dibujaZonaEntr();
  b1.displayButton();
  b2.displayButton();
  //displayLogo(100,100,300,400);
}

void dibujaPantallaIS() {
  pushStyle();
  dibujaZonaIS();
  Textousuario.display();
  Textocontraseña.display();
  next.displayRoundButton();
  back.displayRoundButton();
  back.setEnabled(false);
  Textousuario.keyPressed(key, (int)keyCode);
  Textocontraseña.keyPressed(key, (int)keyCode);

  //etiquetas texto
  fill(0);
  textSize(30);
  textAlign (LEFT);
  text ("USUARIO", Xbutton, 390);
  noFill();
  ellipse (1150, 445, 50, 50);
  fill(0);
  text ("CONTRASEÑA", Xbutton, 535);
  noFill();
  ellipse (1153, 590, 50, 50);
  popStyle();
}

void dibujaPantallaEMP() {
  pushStyle();
  dibujaZonaEMP();
  newUsuario.display();
  Textocorreo.display();
  TextocontraseñaE.display();
  // TextOcupacion.display();
  s1.display();
  next.displayRoundButton();
  back.displayRoundButton();
  

  //etiquetas texto
  fill(0);
  textSize(30);
  textAlign (LEFT);
  text ("CORREO ELECTRONICO", Xbutton, Wbutton-50);
  text("USUARIO", Xbutton, Wbutton+90);
  text ("CONTRASEÑA", Xbutton, Wbutton+230);
  text ("OCUPACIÓN", Xbutton, Ycorreo+Hbutton*2+140);
  popStyle();
}

void dibujaPantallaEleccion() {
  dibujaZonaEleccion();
  b3.displayButton();
  b4.displayButton();
  b5.displayButton();
  b6.displayButton();
}

void dibujaPantallaFAQs() {
  back.displayRoundButton();
  fill (219, 130, 193);
  strokeWeight(2);
  rect (margeX,margeY, width-margeX*2, ampmenu, 10);
  fill (0); textAlign (CENTER);
  textFont(getSecondFont());
  textSize(50); 
  text ("INFORMACIÓN GALOPES (FAQs)", 960, 77);
 
  /*for (int i=0; i<faqs.length; i++) {
    if (faqs[i]!=null) {
      faqs[i].display();
    }
  }*/
  
  PT.display (margeX, 270, width-margeX*2, tableH);
  b11.displayButton();
  b12.displayButton();
}



void dibujaPantallaEsenciales() {
  dibujaZonaEsenciales();
}

void dibujaPantallaPractica(){
  dibujaZonaPractica();
  b7.displayButton();
  b8.displayButton(); 
  b9.displayButton();
  b10.displayButton();
  //next.displayRoundButton();
  back.displayRoundButton();
}

void dibujaPantallaPracTEST1(){
  dibujaZonaPracticaTEST();
}

void dibujaPantallaPracTEST2(){
  dibujaZonaPracticaTEST2();
}

void dibujaPantallaEvaluacion(){
  dibujaZonaEvaluacion();
}

void dibujaPantallaCorreccion(){
  dibujaZonaCorreccion();
}
