//DIBUJA LA MAQUETACIÓN

//menu
void dibujaZonaMenu(){
pushStyle();
  fill (164, 107, 136);
  rect (margeX,margeY, width-margeX*2, ampmenu);
  fill (0); textSize(30);
  text ("MENU", 923, 75);
popStyle();
}

//logo
void dibujaZonaLogo(){
 pushStyle();
  fill (129, 170, 255);
  b0.displayRoundButton();
 popStyle();
}

//general
void dibujaZonaGeneral(){
pushStyle();
  fill (255, 108, 255);
  rect (margeX, margeX+107, margeX+llargeneral, ampmenu);
  fill (255); textSize (30);
  text("GENERAL", 995, 570);
popStyle();
}

//entrada
void dibujaZonaEntr(){
pushStyle();
  //fons general
  fill(244, 255, 253);
  //zona menu
  fill (164, 107, 136);
  strokeWeight(2);
  rect (margeX,margeY, width-margeX*2, ampmenu);
  fill (0); textAlign (CENTER); textSize(40);
  text ("ENTRADA", 960, 77);
  //sección rosa 
  stroke(0);
  fill (227, 188, 208);
  rect (margeX, margeX+107, width-margeX*2, height-ampmenu*2+75);
  b0.displayRoundButton();
  popStyle();
}

//iniciar sesión
void dibujaZonaIS(){
pushStyle();
  //zona menu
  fill (164, 107, 136);
  strokeWeight(2);
  rect (margeX,margeY, width-margeX*2, ampmenu);
  fill (0); textAlign (CENTER); textSize(40);
  text ("INICIAR SESIÓN", 960, 77);
  //sección rosa 
  fill (227, 188, 208);
  rect (margeX, margeX+107, width-margeX*2, height-ampmenu*2+75);
  b0.displayRoundButton();
  popStyle();
}

//empezar
void dibujaZonaEMP(){
  pushStyle();
  //zona menu
  fill (164, 107, 136);
  strokeWeight(2);
  rect (margeX,margeY, width-margeX*2, ampmenu);
  fill (0); textAlign (CENTER); textSize(40);
  text ("EMPEZAR", 960, 77);
  //sección rosa 
  fill (227, 188, 208);
  rect (margeX, margeX+107, width-margeX*2, height-ampmenu*2+75);
  b0.displayRoundButton();
  popStyle();
}

//elección
void dibujaZonaEleccion(){
   pushStyle();
   //sección menu
  fill (164, 107, 136);
  strokeWeight(2);
  rect (margeX,margeY, width-margeX*2, ampmenu);
  fill (0); textAlign (CENTER); textSize(40);
  text ("ELECCIÓN", 960, 77);
  //sección rosa 
  fill (227, 188, 208);
 rect (margeX, margeX+107, width-margeX*2, height-ampmenu*2+75);
  b0.displayRoundButton();
  next.displayRoundButton();
  popStyle();
}

void dibujaZonaPractica (){
  pushStyle();
   fill (164, 107, 136);
  strokeWeight(2);
  rect (margeX,margeY, width-margeX*2, ampmenu);
  fill (0); textAlign (CENTER); textSize(40);
  text ("PRÁCTICA", 960, 77);
  //sección rosa 
  fill (227, 188, 208);
  rect (margeX, margeX+107, width-margeX*2, height-ampmenu*2+75);
  b0.displayRoundButton();
  back.displayRoundButton();
  popStyle();
}

void dibujaZonaEsenciales(){
  pushStyle();
  fill (164, 107, 136);
  strokeWeight(2);
  rect (margeX,margeY, width-margeX*2, ampmenu);
  fill (0); textAlign (CENTER); textSize(40);
  text ("ESENCIALES", 960, 77);
  back.displayRoundButton();
  cb1.display();
  P1.display();
  P2.display();
  P3.display();
  popStyle();
}

void dibujaZonaPracticaTEST(){
  //menu y logo
  pushStyle();
  fill (164, 107, 136);
  strokeWeight(2);
  rect (margeX,margeY, width-margeX*2, ampmenu);
  fill (0); textAlign (CENTER); textSize(40);
  text ("TEST", 960, 77);
  back.displayRoundButton();

  
  //recuadro informativo
  fill(255);
  rect (llarglogo/2+170, amplogo/2+ampmenu-22, llargeneral-amplogo, Rroundbutton+20);
  textAlign(LEFT);fill(0);
  text("TEST GALOPE 1", 242, 210);
  popStyle();
  
  //esferas indicadoras de preguntas
  //fill (255); stroke (2);
  for (float i=llarglogo/2+180; i<llargeneral-amplogo; i+=70){
    fill(255); stroke (5);
    ellipse (i, amplogo/2+ampmenu-22+Rroundbutton+50, 35, 35);
  }
  //recuadro pregunta
rect (margeX, margeY+321, width-margeX*2, ampmenu);
textAlign (CENTER); fill (0);
text("PREGUNTA:", 100, 395);
 //ellipse (llarglogo/2+180, amplogo/2+ampmenu-22+Rroundbutton+50, 35,35);
}
