class DayButton{
  //dimensiones
  float x, y, w, h; 
  
  //formato de fecha
  int dia, mes, año; 
  
  //estados boton
  boolean selected, enabled; 
  
  //constructor
  DayButton (float x, float y, float w, float h, int d, int m, int a){
    this.x=x; 
    this.y=y; 
    this.w=w; 
    this.h=h; 
    this.dia=d;
    this.mes=m;
    this.año=a;
    this.selected=false; 
    this.enabled=true;
  }
  
  //setters
  void setEnabled (boolean b){
    this.enabled=b;
  }
  
  void setSelected (boolean b){
    this.selected=b;
  }
  
  //display button
  void display(){
    pushStyle();
    if (enabled){
      fill (255);
    }else{
      fill(100);
    }
    stroke(0); strokeWeight(1);
    rect (x, y, w, h, 5);
    if (selected){
      fill (200, 100, 100); noStroke();
      ellipse (x+w/2, y+h/2, 80, 80);
    }
    fill(0); textSize(24); textAlign(CENTER);
    text (dia, x+w/2, y+h/2+10);
    popStyle();
  }
  
  boolean mouseOverDayButton(){
  return mouseX>=this.x && mouseX<=this.x+this.w &&
           mouseY>=this.y && mouseY<=this.y+this.h;
  }
  
  
}
