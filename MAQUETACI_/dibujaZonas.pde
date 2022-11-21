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
  rect (margeX,margeX+107, llarglogo, amplogo);
  fill (0);textSize (20);
  text ("LOGO", 75, 185);
 popStyle();
}

//general
void dibujaZonaGeneral(){
pushStyle();
  fill (255, 108, 255);
  rect (135+margeX, margeX+107, margeX+llargeneral, height-ampgeneral);
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
  rect (135+margeX, margeX+107, margeX+llargeneral, height-ampgeneral);
  popStyle();
}

//iniciar sesión
void dibujaZonaIS(){
pushStyle();
  //sección rosa 
  fill (244, 188, 208);
  rect (135+margeX, margeX+107, margeX+llargeneral, height-ampgeneral);
  popStyle();
}

//empezar
void dibujaZonaEMP(){
  pushStyle();
  //sección rosa 
  fill (244, 188, 208);
  rect (135+margeX, margeX+107, margeX+llargeneral, height-ampgeneral);
  popStyle();
}

//elección
void dibujaZonaEleccion(){
   pushStyle();
  //sección rosa 
  fill (244, 188, 208);
  rect (135+margeX, margeX+107, margeX+llargeneral, height-ampgeneral);
}

//FAQs
/*void dibujaZonaFAQs(){
  pushStyle();
  fill(255);
  rect (margeX+135, margeX+107,margeX+llargeneral, amplogo);
  textAlign(LEFT); fill(0); text ("PREGUNTAS FRECUENTES", Xtexts, Ytexts);
  
  fill(255);
  rect (margeX,margeY+107+amplogo, width-margeX*2, ampmenu);
  textAlign(LEFT); fill(0); text ("PREGUNTA 1", 50, Ytexts+110);
  
  //faq1.display();

  //popStyle();
}*/

//ESENCIALES 
void dibujaZonaEsenciales(){
pushStyle();

popStyle();
}
