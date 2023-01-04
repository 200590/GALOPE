void keyPressed(){
   if (pantalla==PANTALLA.FAQs){
     if (keyCode==LEFT){
       PT.prevPage();
     }else if (keyCode==RIGHT){
       PT.nextPage();
     }
     
   }
}
