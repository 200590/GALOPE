//DIBUJA LA MAQUETACIÓN

//menu
void dibujaZonaMenu() {
  pushStyle();
  fill (164, 107, 136);
  rect (margeX, margeY, width-margeX*2, ampmenu);
  fill (0);
  textSize(30);
  text ("MENU", 923, 75);
  popStyle();
}

//logo
void dibujaZonaLogo() {
  pushStyle();
  fill (129, 170, 255);
  b0.displayRoundButton();
  popStyle();
}

//general
void dibujaZonaGeneral() {
  pushStyle();
  fill (255, 108, 255);
  rect (margeX, margeX+107, margeX+llargeneral, ampmenu);
  fill (255);
  textSize (30);
  text("GENERAL", 995, 570);
  popStyle();
}

//entrada
void dibujaZonaEntr() {
  pushStyle();
  //fons general
  //fill(244, 255, 253);
  //zona menu
  fill (219, 130, 193);
  strokeWeight(2);
  rect (margeX, margeY, width-margeX*2, ampmenu, 10);
  fill (0);
  textAlign (CENTER);
  textFont(getSecondFont());
  textSize(50);
  text ("ENTRADA", 960, 85);
  //sección rosa
  stroke(0);
  fill (255, 252, 252);
  stroke(255);
  rect (margeX, margeX+107, width-margeX*2, height-ampmenu*2+75);
  stroke(0);
  b0.displayRoundButton();
  wb.displayButton();
  // success.display();
  popStyle();
}

//iniciar sesión
void dibujaZonaIS() {
  pushStyle();
  //zona menu
  fill (219, 130, 193);
  strokeWeight(2);
  rect (margeX, margeY, width-margeX*2, ampmenu, 10);
  fill (0);
  textAlign (CENTER);
  textFont(getSecondFont());
  textSize(50);
  text ("INICIAR SESIÓN", 960, 85);
  //sección rosa
  fill (255, 252, 252);
  noStroke();
  rect (margeX, margeX+107, width-margeX*2, height-ampmenu*2+75);
  stroke(0);
  b0.displayRoundButton();
  //warn.display();
  popStyle();
}

//empezar
void dibujaZonaEMP() {
  pushStyle();
  //zona menu
  fill (219, 130, 193);
  strokeWeight(2);
  rect (margeX, margeY, width-margeX*2, ampmenu, 10);
  fill (0);
  textAlign (CENTER);
  textFont(getSecondFont());
  textSize(50);
  text ("EMPEZAR", 960, 85);
  //sección rosa
  fill (255, 252, 252);
  noStroke();
  rect (margeX, margeX+107, width-margeX*2, height-ampmenu*2+75);
  stroke(0);
  b0.displayRoundButton();
  popStyle();
}

//elección
void dibujaZonaEleccion() {
  pushStyle();
  //sección menu
  fill (219, 130, 193);
  strokeWeight(2);
  rect (margeX, margeY, width-margeX*2, ampmenu, 10);
  fill (0);
  textAlign (CENTER);
  textFont(getSecondFont());
  textSize(50);
  text ("ELECCIÓN", 960, 85);
  //sección rosa
  fill (255, 252, 252);
  noStroke();
  rect (margeX, margeX+107, width-margeX*2, height-ampmenu*2+75);
  stroke(0);
  b0.displayRoundButton();
  popStyle();
}

void dibujaZonaPractica () {
  pushStyle();
  fill (219, 130, 193);
  strokeWeight(2);
  rect (margeX, margeY, width-margeX*2, ampmenu, 10);
  fill (0);
  textAlign (CENTER);
  textFont(getSecondFont());
  textSize(50);
  text ("PRÁCTICA", 960, 85);
  //sección rosa
  fill (255, 252, 252);
  noStroke();
  rect (margeX, margeX+107, width-margeX*2, height-ampmenu*2+75);
  stroke(0);
  b0.displayRoundButton();
  back.displayRoundButton();
  popStyle();
}

void dibujaZonaEsenciales() {
  pushStyle();
  fill (255, 252, 252);
  fill (219, 130, 193);
  strokeWeight(2);
  rect (margeX, margeY, width-margeX*2, ampmenu, 10);
  fill (0);
  textAlign (CENTER);
  textFont(getSecondFont());
  textSize(50);
  text ("ESENCIALES", 960, 85);
  back.displayRoundButton();
  cb1.display();
  cb4.display();
  P1.display();
  done.displayButton();
  cl.display();
  popStyle();
}

void dibujaZonaPracticaTEST() {
  //menu y logo
  pushStyle();
  fill (255, 252, 252);
  fill (219, 130, 193);
  strokeWeight(2);
  rect (margeX, margeY, width-margeX*2, ampmenu, 10);
  fill (0);
  textAlign (CENTER);
  textFont(getSecondFont());
  textSize (50);
  text ("TEST", 960, 85);
  back.displayRoundButton();


  //recuadro informativo
  fill(255);
  rect (llarglogo/2+170, amplogo/2+ampmenu-22, llargeneral-amplogo, Rroundbutton+20, 10);
  textAlign(LEFT);
  fill(0);
  textFont(getThirdFont());
  textSize(30);
  text("TEST GALOPE "+numTest, 242, 210);


  //recuadro pregunta
  strokeWeight(2);
  fill(255);
  rect (margeX, margeY+321, width-margeX*2, ampmenu, 10);
  textAlign (CENTER);
  fill (0);
  textFont(getThirdFont());
  textSize(30);
  text("PREGUNTA: "+preguntas[numPregunta][1], 100, 395);
  //ellipse (llarglogo/2+180, amplogo/2+ampmenu-22+Rroundbutton+50, 35,35);

  //textos radio button
  textAlign (CENTER);
  textFont (getThirdFont());
  textSize(30);

  //getInfoTablaPregunta("GALOPE 1");
  text (preguntas[numPregunta][2], 725, 610);
  text (preguntas[numPregunta][3], 725, 810);
  text (preguntas[numPregunta][4], 1310, 610);
  if (preguntas[numPregunta][5]!=null) {
    text (preguntas[numPregunta][5], 1310, 810);
  }

  rbg.display();
  b14.displayButton();
  popStyle();
}

void dibujaZonaPracticaTEST2() {
  //menu y logo
  pushStyle();
  fill (255, 252, 252);
  fill (219, 130, 193);
  strokeWeight(2);
  rect (margeX, margeY, width-margeX*2, ampmenu, 10);
  fill (0);
  textAlign (CENTER);
  textFont(getSecondFont());
  textSize(50);
  text ("TEST", 960, 85);
  back.displayRoundButton();


  //recuadro informativo
  fill(255);
  rect (llarglogo/2+170, amplogo/2+ampmenu-22, llargeneral-amplogo, Rroundbutton+20, 10);
  textAlign(LEFT);
  fill(0);
  textFont(getThirdFont());
  textSize(30);
  text("TEST GALOPE 2", 242, 210);

  //esferas indicadoras de preguntas
  //fill (255); stroke (2);
  /* for (float i=llarglogo/2+180; i<llargeneral-amplogo; i+=70){
   fill(255); stroke (5);
   ellipse (i, amplogo/2+ampmenu-22+Rroundbutton+50, 35, 35);
   }*/

  //recuadro pregunta
  fill(255);
  rect (margeX, margeY+321, width-margeX*2, ampmenu, 10);
  textAlign (CENTER);
  fill (0);
  textFont(getThirdFont());
  textSize(30);
  text("PREGUNTA:", 115, 400);
  //ellipse (llarglogo/2+180, amplogo/2+ampmenu-22+Rroundbutton+50, 35,35);

  //textos radio button
  textAlign (CENTER);
  textFont (getThirdFont());
  textSize(30);
  text ("RESPOSTA 1", 725, 612);
  text ("RESPOSTA 2", 725, 812);
  text ("RESPOSTA 3", 1310, 612);

  rbg2.display();
  b14.displayButton();
  popStyle();
}

void dibujaZonaEvaluacion() {
  //menu y logo
  pushStyle();
  fill (255, 252, 252);
  fill (219, 130, 193);
  strokeWeight(2);
  rect (margeX, margeY, width-margeX*2, ampmenu, 10);
  fill (0);
  textAlign (CENTER);
  textFont(getSecondFont());
  textSize(50);
  text ("EVALUACION TEST", 960, 85);
  back.displayRoundButton();
  b15.displayButton();


  //recuadro informativo
  fill(255);
  rect (llarglogo/2+170, amplogo/2+ampmenu-22, llargeneral-amplogo, Rroundbutton+20, 10);
  textAlign(LEFT);
  fill(0);
  textFont(getSecondFont());
  text("EVALUACION TEST GALOPE 1", 242, 210);
  cb2.display();
  cb3.display();

  //rombo marcador
  fill(255);
  //rotate(PI/4);
  rect(1456, 332, 250, 250);
  fill(0);
  textFont(getSecondFont());
  text ("X/10", 1556, 465);

  popStyle();
}

void dibujaZonaCorreccion() {
  //menu y logo
  pushStyle();
  fill (255, 252, 252);
  fill (219, 130, 193);
  strokeWeight(2);
  rect (margeX, margeY, width-margeX*2, ampmenu, 10);
  fill (0);
  textAlign (CENTER);
  textFont(getSecondFont());
  textSize(50);
  text ("CORRECCION", 960, 85);
  back.displayRoundButton();


  //recuadro informativo
  fill(255);
  rect (llarglogo/2+170, amplogo/2+ampmenu-22, llargeneral-amplogo, Rroundbutton+20, 10);
  textAlign(LEFT);
  fill(0);
  text("PREGUNTA", 242, 210);

  //cuadro correccion
  fill(255);
  rect (margeX, margeY+270, width-margeX*2, 200, 10);
  fill (0);
  text ("CORRECCIÓN: ", 31, 395);

  b13.displayButton();
  P3.display();
  popStyle();
}

//Calendario
void dibujaZonaCalendario() {
  //menu y logo
  pushStyle();
  fill (255, 252, 252);
  fill (219, 130, 193);
  strokeWeight(2);
  rect (margeX, margeY, width-margeX*2, ampmenu, 10);
  fill (0);
  textAlign (CENTER);
  textFont(getSecondFont());
  textSize(50);
  text ("CALENDARIO", 960, 85);
  back.displayRoundButton();

  //recuadro fecha
  fill (255, 252, 252);

  rect (460, 195, 570, 100, 10);


  c.display();
  ImportantEvents.display();
  fill (0);
  textAlign (LEFT);
  text ("EVENTOS IMPORTANTES", 623, 340);
  P2.display();
  done.displayButton();
  popStyle();
}
