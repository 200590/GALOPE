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
  //sección rosa 
  fill (227, 188, 208);
  rect (margeX, margeX+107, width-margeX*2, height-ampmenu);
  b0.displayRoundButton();
  popStyle();
}

//iniciar sesión
void dibujaZonaIS(){
pushStyle();
  //sección rosa 
  fill (227, 188, 208);
  rect (135+margeX, margeX+107, margeX+llargeneral, height-ampgeneral);
  popStyle();
}

//empezar
void dibujaZonaEMP(){
  pushStyle();
  //sección rosa 
  fill (227, 188, 208);
  rect (135+margeX, margeX+107, margeX+llargeneral, height-ampgeneral);
  popStyle();
}

//elección
void dibujaZonaEleccion(){
   pushStyle();
  //sección rosa 
  fill (227, 188, 208);
  rect (135+margeX, margeX+107, margeX+llargeneral, height-ampgeneral);
}

//ESENCIALES 
void dibujaZonaEsenciales(){
pushStyle();

popStyle();
}
