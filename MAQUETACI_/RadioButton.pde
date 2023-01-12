class RadioButton{

  //caracteristicas
  int x, y, r; 
  color backgroundColor; 
  color borderColor; 
  color checkedColor;
  
  boolean checked;
  
  //constructor
  RadioButton (int x, int y, int r){
    this.x=x; 
    this.y=y; 
    this.r=r; 
    this.checked=false; 
    this.backgroundColor=color (255);
    this.borderColor=color(0);
    this.checkedColor=color(0);
  }
  
  //dibuja Checkcercle
  void display(){
    pushStyle();
    stroke(borderColor);
    strokeWeight(3);
    fill(backgroundColor);
    ellipse (x, y, 2*r, 2*r);
    
    if (this.checked){
      fill(checkedColor); noStroke();
      ellipse (x, y, 1.5*r, 1.5*r);
    }
    popStyle();
  }
  
  void setChecked (boolean b){
    this.checked=b;
  }
  
  void toggle (){
    this.checked=!this.checked;
  }
  
  //mouse encima Checkcercle
  boolean onMouseOver(){
    return dist(mouseX, mouseY, this.x, this.y)<this.r;
  }
}
