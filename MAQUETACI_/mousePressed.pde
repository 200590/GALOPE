//pressed on campo texto
void mousePressed(){
  
if (b0.mouseOverButton()){
  pantalla=PANTALLA.ENTRADA;
}
  else if(b1.mouseOverButton()){
    pantalla = PANTALLA.IS;
  } else if (b2.mouseOverButton()){
    pantalla=PANTALLA.EMP;
    
  }/*else if(){
  }
  } else if (pantalla==PANTALLA.EMP){
    pantalla=PANTALLA.ELECCION;
  }else if (pantalla==PANTALLA.ELECCION){
    pantalla=PANTALLA.ESENCIALES;
  }*/
  
  Textousuario.isPressed();
  Textocontraseña.isPressed();
  cb1.checkMouse();
  
//elementos pantalla
/*if (){
}*/

}
