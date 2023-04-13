class Button {

  //características boton rect. 
  float x, y, w, h, g;
  
  //características boton circulo
  float a, b, r; //a-->equivalente a x   b-->equivalente a y    r-->equivalente a radio
  PImage LOGO;

  //propiedades contorno, relleno boton rect. 
  color ColorFill; 
  color fillColorOver;
  color StrokeColor;
  String textButton;
  

  //constructor
  Button (String texto, float x, float y, float w, float h, float g) {
    this.textButton=texto;
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
    this.g=g;
    ColorFill=color(222, 65, 65);
    fillColorOver=color(214, 63, 63);
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
    strokeWeight(2);rectMode(CORNER);
    rect (this.x, this.y, this.w, this.h, this.g);

    //propiedades texto
    fill(0);
    textAlign (CENTER);
    textFont (getFirstFont());
    textSize(27);
    text (textButton, this.x+this.w/2, this.y+this.h/2+10);
    popStyle();
  }

  boolean mouseOverButton() {
    return (mouseX >= this.x) &&
      (mouseX<=this.x + this.w) &&
      (mouseY>= this.y) &&
      (mouseY<= this.y + this.h);
  }
}
