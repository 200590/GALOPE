class Select{
  //dimensiones y posición
  float x, y, w, h;
  String[] opciones; //diferentes opciones del desplegable
  String selectedValue; //valor seleccionado
  
  boolean wraped=false;   //plegat/desplegat
  float lineSpace=10;    //espacio entre lineas
  
  Select (String[] opciones, float x, float y, float w, float h){
    this.opciones=opciones; 
    this.selectedValue="";
    this.x=x;
    this.y=y;
    this.w=w; 
    this.h=h;
    this.wraped=true;
  }
  
  void display(){
    pushStyle();
    stroke (0); strokeWeight(2); fill (227, 188, 208);
    rect (x, y, w, h);
    
    //sección triangulo
    fill (100);
    rect(x + w - 30, y, 30, h);
    
    //triangulo
    fill (0); stroke (0);
    triangle (x + w - 25, y+5, x + w - 15, y + 25, x + w - 5 , y+5);
    //caracteristicas opciones
    fill (0); textSize (14);
     text(selectedValue, x , y + 20);
     
     if (!this.wraped){
       fill(255); stroke(0);
       rect(x, y+h, w, (h + lineSpace)*opciones.length);
        for(int i=0; i<opciones.length; i++){
        
        if(i== clickedOption()){
          fill(200); noStroke();
          rect(x+4, y+4 + h + (h + lineSpace)*i - 2, w -8, h + lineSpace - 8);
        }
        
        fill(0);
        text(opciones[i], x + 10, y + h + 25 + (h + lineSpace)*i);
      }
     }
    popStyle();
  }
  
  void SetWraped(boolean b){
    this.wraped=b;
  }
  
  void toggle(){
    this.wraped=!this.wraped;
  }
  
  void update(){
    int option=clickedOption();
    selectedValue=opciones[option];
  }
   // Indica si el cursor està sobre el select
 boolean mouseOverSelect(){
   if(this.wraped){
     return (mouseX >= x) && 
            (mouseX <= x + w) && 
            (mouseY >= y) && 
            (mouseY <= y + h); 
   }
   else {
     return (mouseX>= x) && 
            (mouseX<= x + w) && 
            (mouseY>= y) && 
            (mouseY<= y + h + (h + lineSpace)*opciones.length); 
   }
 }
 
  int clickedOption(){
   int i = (int)map(mouseY, y + h, y + h + (h + lineSpace)*opciones.length, 
                            0, opciones.length);
   return i;
 }
}
