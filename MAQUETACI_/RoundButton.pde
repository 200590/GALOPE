 class RoundButton{
  float a, b, r; //a-->equivalente a x   b-->equivalente a y    r-->equivalente a radio
  String text;
  
      //propiedades contorno, relleno boton circular
  color FillColor;
  color ColorFillOver;
  color NoEnabledColor;
  
  boolean enabled;
 
 RoundButton (String text, float a, float b, float r){
    this.text=text;
    this.a=a; 
    this.b=b; 
    this.r=r;
    this.enabled=true;
    FillColor=color(222, 65, 65);
    ColorFillOver=color(214, 63, 63);
    NoEnabledColor=color(214, 63, 63);
  }
  
 void setEnabled(boolean b){
   this.enabled = b;
 }
 
 void displayRoundButton(){
    pushStyle();
    if (!enabled){
      fill(NoEnabledColor);
    }
    else if (mouseOverRoundButton()) {
      fill(ColorFillOver);
    }else {
      fill (FillColor);
    }
    strokeWeight(2);
  ellipse (this.a, this.b, this.r, this.r);

    //propiedades texto
    fill(0);
    textAlign (CENTER);
    textFont (getFirstFont());
    textSize(25);
    text (text, this.a, this.b+10);
    popStyle();
 }
 
 boolean  mouseOverRoundButton(){
   return dist (mouseX, mouseY, this.a, this.b)<= this.r; 
 }
 }
  
  
