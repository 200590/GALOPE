void dibujaPantallaENTRADA(){
  dibujaZonaEntr();
  b1.display();
  b2.display();
}

void dibujaPantallaIS(){
  dibujaZonaIS();
  Textousuario.display();
  Textocontraseña.display();

  //etiquetas texto
  fill(0); textSize(30); textAlign (CENTER); 
  text ("INICIAR SESIÓN", 1035, 470);
  ellipse (1145, 463, 50, 50);
  text ("CONTRASEÑA", 1035, 500);
  ellipse (1145, 610, 50, 50);

}

void dibujaPantallaEMP(){
  dibujaZonaEMP();
  Textocorreo.display();
  TextocontraseñaE.display();
  TextOcupacion.display();

  //etiquetas texto
  fill(0); textSize(30); textAlign (CENTER);
  text ("CORREO ELECTRONICO", 1033, 405);
  text ("CONTRASEÑA", 975, 520);
  text ("OCUPACIÓN", 960, 635);
}

void dibujaPantallaEleccion(){
  dibujaZonaEleccion();
  b3.display();
  b4.display();
  b5.display();
  b6.display();
}

void dibujaPantallaFAQs(){
for(int i=0; i<faqs.length; i++){
faqs[i].display();
}
}
