void keyPressed(){
  if (pantalla==PANTALLA.IS){
    Textousuario.keyPressed(key, (int)keyCode);
    Textocontraseña.keyPressed(key, (int)keyCode);
  }
  if (pantalla==PANTALLA.EMP){
    newUsuario.keyPressed(key, (int)keyCode);
    Textocorreo.keyPressed(key, (int)keyCode);
    TextocontraseñaE.keyPressed(key,(int)keyCode);
  }
   if (pantalla==PANTALLA.FAQs){
     if (keyCode==LEFT){
       PT.prevPage();
     }
     }else if (keyCode==RIGHT){
       PT.nextPage();
     }
   
   if (pantalla==PANTALLA.CALENDARIO){
      if(keyCode==LEFT){
    c.prevMonth();
    println("PREV MONTH");
  }
  // Anar un mes endavant
  else if(keyCode==RIGHT){
    c.nextMonth();
    println("PREV MONTH");
  }else{
    ImportantEvents.keyPressed(key, (int)keyCode);
  }
   }
   
   if (pantalla==PANTALLA.ESENCIALES){
      if (keyCode==LEFT){
    cl.prev();
  }
  else if(keyCode==RIGHT){
    cl.next();
  }
}
   }
    
