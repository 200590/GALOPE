//DIBUJA LAS SECCIONES Y COMPONENTES DE LAS PANTALLAS

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
  //sección blanca
  displayEntrada(0,0, width, height);
  b0.displayRoundButton();
  wb.displayButton();
  popStyle();
}

//iniciar sesión
void dibujaZonaIS() {
  pushStyle();
  //zona menu
  displayEmpezar(0, 0, width, height);
  b0.displayRoundButton();
  popStyle();
}

//empezar
void dibujaZonaEMP() {
  pushStyle();
  displayEmpezar (0, 0, width, height);
  b0.displayRoundButton();
  popStyle();
}

//elección
void dibujaZonaEleccion() {
  pushStyle();
  //sección menu
  fill (222, 65, 65);
  strokeWeight(2);
  rect (margeX, margeY, width-margeX*2, ampmenu, 10);
  fill (0);
  textAlign (CENTER);
  textFont(getSecondFont());
  textSize(50);
  text ("ELECCIÓN", 960, 85);
  //sección blanca
  fill (255, 252, 252);
  noStroke();
  rect (margeX, margeX+107, width-margeX*2, height-ampmenu*2+75);
  stroke(0);
  rectMode(LEFT);
  tint (255, 115);
  displayLogo2(735, 330, 500, 500);
  b0.displayRoundButton();
  popStyle();
}

void dibujaZonaPractica () {
  pushStyle();
  fill (222, 65, 65);
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
  rectMode(LEFT);
  tint (255, 115);
  displayLogo2(735, 330, 500, 500);
  b0.displayRoundButton();
  back.displayRoundButton();
  popStyle();
}

void dibujaZonaEsenciales() {
  pushStyle();
  tint (255, 115);
  displayLogo2(735, 330, 500, 500);
  fill (255, 252, 252);
  fill (222, 65, 65);
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
  tint (255, 255);
  cl.display();
 
  popStyle();
}

void dibujaZonaPracticaTEST() {
  //menu y logo
  pushStyle();
  tint (255, 115);
  displayLogo2(735, 330, 500, 500);
  fill (255, 252, 252);
  fill (222, 65, 65);
  strokeWeight(2);
  rect (margeX, margeY, width-margeX*2, ampmenu, 10);
  fill (0);
  textAlign (CENTER);
  textFont(getSecondFont());
  textSize (50);
  text ("TEST", 945, 85);
  back.displayRoundButton();


  //recuadro informativo
  fill(255);
  rect (llarglogo/2+170, amplogo/2+ampmenu-22, llargeneral-amplogo, Rroundbutton+20, 10);
  textAlign(LEFT);
  fill(0);
  textFont(getThirdFont());
  textSize(30);
  text("TEST GALOPE "+(numTest+1), 242, 210);


  //recuadro pregunta
  strokeWeight(2);
  fill(255);
  rect (margeX, margeY+321, width-margeX*2, ampmenu, 10);
  textAlign (LEFT);
  fill (0);
  textFont(getThirdFont());
  textSize(30);
 text("PREGUNTA ("+(numPregunta+1)+"/"+preguntas.length+"): "+preguntas[numPregunta][1], 40, 395); 

  //textos radio button
  textAlign (CENTER);
  textFont (getThirdFont());
  textSize(30);

  //getInfoTablaPregunta("GALOPE 1");
  textAlign(LEFT);
  
  if (preguntas[numPregunta][5]==null){
  rbg2.display();
  text (preguntas[numPregunta][2], 400, 510);
  text (preguntas[numPregunta][3], 400, 710);
  text (preguntas[numPregunta][4], 400, 910);
  } else if (preguntas[numPregunta][5]!=null) {
  rbg.display();
  text (preguntas[numPregunta][2], 400, 510);
  text (preguntas[numPregunta][3], 400, 660);
  text (preguntas[numPregunta][4], 400, 810);
  text (preguntas[numPregunta][5], 400, 960);
  }

  
  followQ.displayButton();
  contestar.displayButton();
  b14.displayButton();
  popStyle();
}

void dibujaZonaEvaluacion() {
  //menu y logo
  pushStyle();
  tint (255, 115);
  displayLogo2(735, 330, 500, 500);
  fill (255, 252, 252);
  fill (222, 65, 65);
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
  text("EVALUACION TEST GALOPE "+(numTest+1), 242, 210);
  cb2.display();
  cb3.display();

  //rombo marcador
  fill(255);
  //rotate(PI/4);
  rect(1456, 332, 250, 250);
  fill(0);
  textFont(getSecondFont());
  text (numCorrectas+"/10", 1556, 465);
  text (numCorrectas*100/10+"%",1556, 500);
  popStyle();
}

void dibujaZonaCorreccion() {
  //menu y logo
  pushStyle();
  tint (255, 115);
  displayLogo2(735, 330, 500, 500);
  fill (255, 252, 252);
  fill (222, 65, 65);
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
  textFont(getSecondFont());
  textSize(30);
  text("PREGUNTA", 242, 210);

  //cuadro correccion
  fill(255);
  rect (margeX, margeY+270, width-margeX*2, 200, 10);
  fill (0);
  textFont (getThirdFont());
  textSize(30);
  text ("CORRECCIÓN: ", 31, 395);

  b13.displayButton();
  P3.display();
  popStyle();
}

//Calendario
void dibujaZonaCalendario() {
  //menu y logo
  pushStyle();
  tint (255, 115);
  displayLogo2(735, 330, 500, 500);
  fill (255, 252, 252);
  fill (222, 65, 65);
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
  text ("EVENTOS IMPORTANTES", 460, 340);
  P2.display();
  done.displayButton();
  popStyle();
}
