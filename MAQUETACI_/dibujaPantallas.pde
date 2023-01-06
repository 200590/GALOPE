
void dibujaPantallaENTRADA() {
  dibujaZonaEntr();
  b1.displayButton();
  b2.displayButton();
}

void dibujaPantallaIS() {
  dibujaZonaIS();
  Textousuario.display();
  Textocontraseña.display();
  next.displayRoundButton();
  back.displayRoundButton();

  //etiquetas texto
  fill(0);
  textSize(30);
  textAlign (CENTER);
  text ("USUARIO", 968, 452);
  noFill();
  ellipse (1150, 445, 50, 50);
  fill(0);
  text ("CONTRASEÑA", 968, 600);
  noFill();
  ellipse (1153, 590, 50, 50);
}

void dibujaPantallaEMP() {
  dibujaZonaEMP();
  Textocorreo.display();
  TextocontraseñaE.display();
  // TextOcupacion.display();
  s1.display();
  next.displayRoundButton();
  back.displayRoundButton();

  //etiquetas texto
  fill(0);
  textSize(30);
  textAlign (CENTER);
  text ("CORREO ELECTRONICO", 1033, 405);
  text ("CONTRASEÑA", 975, 520);
  text ("OCUPACIÓN", 960, 635);
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
  fill (164, 107, 136);
  strokeWeight(2);
  rect (margeX,margeY, width-margeX*2, ampmenu);
  fill (0); textAlign (CENTER); textSize(40);
  text ("INFORMACIÓN GALOPES (FAQs)", 960, 77);
 
  /*for (int i=0; i<faqs.length; i++) {
    if (faqs[i]!=null) {
      faqs[i].display();
    }
  }*/
  
  PT.display (50, 50, tableW,tableH);
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
