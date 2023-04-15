//funciones que dibujan las pantallas de la aplicación

void dibujaPantallaENTRADA() {
  dibujaZonaEntr();
  b1.displayButton();
  b2.displayButton();
}

void dibujaPantallaIS() {
  pushStyle();
  dibujaZonaIS();
  Textousuario.display();
  Textocontraseña.display();
  next.displayRoundButton();
  back.displayRoundButton();
  back.setEnabled(false);

  //etiquetas texto
   fill(0);
  textSize(40);
  textAlign (LEFT);
  textFont (getFirstFont());
  text ("USUARIO", Xtextfield+420, 390);
  text ("CONTRASEÑA", Xtextfield+420, 535);
 popStyle();
}

void dibujaPantallaEMP() {
  pushStyle();
  dibujaZonaEMP();
  newUsuario.display();
  Textocorreo.display();
  TextocontraseñaE.display();
  s1.display();
  next.displayRoundButton();
  back.displayRoundButton();
 
  //etiquetas texto

  fill (0);
  textSize(40);
  textAlign (LEFT);
 textFont(getFirstFont());
  text ("CORREO ELECTRONICO", Xtextfield+420, Wbutton-50);
  text("USUARIO", Xtextfield+420, Wbutton+90);
  text ("CONTRASEÑA", Xtextfield+420, Wbutton+230);
  text ("OCUPACIÓN", Xtextfield+420, Ycorreo+Hbutton*2+140);
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
  tint (255, 115);
  displayLogo2(735, 330, 500, 500);
  back.displayRoundButton();
  fill (222, 65, 65);
  strokeWeight(2);
  rect (margeX,margeY, width-margeX*2, ampmenu, 10);
  fill (0); textAlign (CENTER);
  textFont(getSecondFont());
  textSize(50); 
  text ("INFORMACIÓN GALOPES (FAQs)", 960, 77);
  
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
  pushStyle();
  dibujaZonaPracticaTEST();
  popStyle();
}


void dibujaPantallaEvaluacion(){
  dibujaZonaEvaluacion();
}

void dibujaPantallaCorreccion(){
  dibujaZonaCorreccion();
}
