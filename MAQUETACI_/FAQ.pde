class FAQ {
  
  String pregunta;
  float x, y, w, h, c;
  
  FAQ(String p, float x, float y, float w, float h, color c){
    this.pregunta = p;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c=c;
  }
  
  void display(){
    pushStyle();
    rectMode(CORNER);
    fill(this.c);
    rect(this.x, this.y, this.w, this.h);
    textAlign(LEFT); fill(0); text(this.pregunta, this.x+5, this.y+this.h/2);
    popStyle();
  }
}
  
