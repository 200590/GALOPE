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
  strokeWeight(3);
rect (margeX, margeY+321, width-margeX*2, ampmenu);
textAlign (CENTER); fill (0);
text("PREGUNTA:", 100, 395);
 //ellipse (llarglogo/2+180, amplogo/2+ampmenu-22+Rroundbutton+50, 35,35);
 
 //textos radio button
 textAlign (CENTER);
 text ("RESPOSTA 1", 720, 610); 
 text ("RESPOSTA 2", 720, 810); 
 text ("RESPOSTA 3", 1300, 610);
 text ("RESPOSTA 4", 1300, 810);
 
 rbg.display();
}

void dibujaZonaPracticaTEST2(){
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
 
  //textos radio button
 textAlign (CENTER);
 text ("RESPOSTA 1", 810, 535); 
 text ("RESPOSTA 2", 684, 550); 
 text ("RESPOSTA 3", 876, 535);
 
 rbg2.display();
popStyle();
}

void dibujaZonaEvaluacion(){
   //menu y logo
  pushStyle();
  fill (164, 107, 136);
  strokeWeight(2);
  rect (margeX,margeY, width-margeX*2, ampmenu);
  fill (0); textAlign (CENTER); textSize(40);
  text ("EVALUACION TEST", 960, 77);
  back.displayRoundButton();

  
  //recuadro informativo
  fill(255);
  rect (llarglogo/2+170, amplogo/2+ampmenu-22, llargeneral-amplogo, Rroundbutton+20);
  textAlign(LEFT);fill(0);
  text("EVALUACION TEST GALOPE 1", 242, 210);
  cb2.display();
  cb3.display();
  
  //rombo marcador
  fill(255); 
  //rotate(PI/4);
  rect(1456, 332, 250,  250);
   fill(0);
  text ("X/10", 1556, 465);
  popStyle();
}

void dibujaZonaCorreccion(){
   //menu y logo
  pushStyle();
  fill (164, 107, 136);
  strokeWeight(2);
  rect (margeX,margeY, width-margeX*2, ampmenu);
  fill (0); textAlign (CENTER); textSize(40);
  text ("CORRECCION", 960, 77);
  back.displayRoundButton();

  
  //recuadro informativo
  fill(255);
  rect (llarglogo/2+170, amplogo/2+ampmenu-22, llargeneral-amplogo, Rroundbutton+20);
  textAlign(LEFT);fill(0);
  text("PREGUNTA", 242, 210);
  
  //cuadro correccion
  fill(255);
  rect (margeX, margeY+270, width-margeX*2, 200);
  fill (0);
  text ("CORRECCIÓN: ", 31, 395);
}
