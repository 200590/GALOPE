class PopUp {
  //dimensiones PopUp
  float x, y, w, h, s;
  //Propietats
  String asunto;
  String mensaje;
  color c;

  int tempsVisible = 30*4;
  int tempsInvisible = 30*2;
  boolean visible = false;

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
      textAlign(CENTER);
      text (this.asunto, this.x+30, this.y/3);
      fill(0);
      textAlign (CENTER);
      text (this.mensaje, this.x, y);
      this.tempsVisible--;
      if (this.tempsVisible==0) {
        this.visible = false;
      }
    }
  }

  void reset() {
    tempsVisible = 30*4;
    tempsInvisible = 30*2;
    visible = false;
  }
}
