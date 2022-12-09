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
  //rect (margeX,margeX+107, llarglogo, amplogo);
  //fill (0);textSize (20);
 //text ("LOGO", 75, 185);
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

//ESENCIALES 
void dibujaZonaEsenciales(){
pushStyle();

popStyle();
}
