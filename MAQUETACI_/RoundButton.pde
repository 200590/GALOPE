 class RoundButton{
  float a, b, r; //a-->equivalente a x   b-->equivalente a y    r-->equivalente a radio
  String text;
      //propiedades contorno, relleno boton circular
  color FillColor;
  color ColorFillOver;
 
 RoundButton (String text, float a, float b, float r){
    this.text=text;
    this.a=a; 
    this.b=b; 
    this.r=r;
    FillColor=color(227, 188, 208);
    ColorFillOver=color(235, 188, 220);
  }
  
 
 void displayRoundButton(){
    pushStyle();
    if (mouseOverRoundButton()) {
      fill(ColorFillOver);
    }else {
      fill (FillColor);
    }
   // stroke(StrokeColor);
    strokeWeight(2);
  ellipse (this.a, this.b, this.r, this.r);

    //propiedades texto
    fill(0);
    textAlign (CENTER);
    textSize(30);
    text (text, this.a+this.r/2-58, this.b+this.r/2-49);
    popStyle();
 }
 
 boolean  mouseOverRoundButton(){
   return dist (mouseX, mouseY, this.a, this.b)<= this.r; 
 }
 }
  
  
