class PopUp {
  
  //dimensiones PopUp
  float x, y, w, h, s;
  
  //Propiedades
  String asunto;
  String mensaje;
  color c;

  int tempsVisible = 30*5;
  int tempsInvisible = 30*2;
  boolean visible = false;

//constructor
  PopUp(float x, float y, float w, float h, float s, String A, String M, color c) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.s=s;
    this.asunto=A;
    this.mensaje=M;
    this.c=c;
  }

  void setVisible(boolean b) {
    this.visible = b;
  }

//dibuja POPUP
  void display() {
    if (!visible) {
      this.tempsInvisible--;
      if (this.tempsInvisible==0) {
        this.visible = true;
      }
    } else {
      fill (this.c);
      rect(this.x, this.y, this.w, this.h, this.s);
      fill (0);
      textAlign(LEFT);
      textFont(getThirdFont());
      text (this.asunto, this.x+10, this.y+40);
      fill(0);
      textAlign (LEFT);
      textFont (getThirdFont());
      text (this.mensaje, this.x+10, y+70);
      this.tempsVisible--;
      if (this.tempsVisible==0) {
        this.visible = false;
      }
    }
  }

//resetea la configuración del popup
  void reset() {
    tempsVisible = 30*5;
    tempsInvisible = 30*2;
    visible = false;
  }
}
