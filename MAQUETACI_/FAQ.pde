class FAQ {
  
  String pregunta, resposta;
  float x, y, w, h;
  
  FAQ(String p, String r, float x, float y, float w, float h){
    this.pregunta = p;
    this.resposta = r;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  
  void display(){
    pushStyle();
    rectMode(CORNER);
    rect(this.x, this.y, this.w, this.h);
    fill(0);
    text(this.pregunta, this.x+5, this.y+this.h/2);
    popStyle();
  }
}
  
