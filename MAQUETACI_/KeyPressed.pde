void keyPressed(){
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
  }
   }
    }
