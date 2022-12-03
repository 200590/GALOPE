class Button {

  //características boton rect. 
  float x, y, w, h;
  
  //características boton circulo
  float a, b, r; //a-->equivalente a x   b-->equivalente a y    r-->equivalente a radio
  PImage LOGO;

  //propiedades contorno, relleno boton rect. 
  color ColorFill; 
  color fillColorOver;
  color StrokeColor;
  String textButton;
  

  //constructor
  Button (String texto, float x, float y, float w, float h) {
    this.textButton=texto;
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
    ColorFill=color(227, 188, 208);
    fillColorOver=color(235, 188, 220);
    StrokeColor=color(0);
  }
  
  

 void displayButton() {
    pushStyle();
    if (mouseOverButton()) {
      fill(fillColorOver);
    }else {
      fill (ColorFill);
    }
    stroke(StrokeColor);
    strokeWeight(2);
    rect (this.x, this.y, this.w, this.h);

    //propiedades texto
    fill(0);
    textAlign (CENTER);
    textSize(30);
    text (textButton, 1035, 470);
    popStyle();
  }

  boolean mouseOverButton() {
    return (mouseX >= this.x) &&
      (mouseX<=this.x + this.w) &&
      (mouseY>= this.y) &&
      (mouseY<= this.y + this.h);
  }
}
