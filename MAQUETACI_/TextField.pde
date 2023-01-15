//Campo de texto

class TextField{
//caracteristicas campo texto
float x, y, h, w, g;

//colores
color FieldNoSelectedColor=color(255, 211, 234);
color FieldSelectedColor=color(235, 188, 220);
color bordercolor=color(0);
int borderWeight=2;

//texto campo
String text="";
int textLength=0;
int textSize=30;

boolean selected=false;

// constructor campo de texto
TextField(float x, float y, float w, float h, float g){
  this.x=x; 
  this.y=y;
  this.w=w; 
  this.h=h;
  this.g=g;
}

//dibuija campo de texto
void display(){
  if (selected){
    fill(FieldSelectedColor);
  }else{
    fill(FieldNoSelectedColor);
  }
  strokeWeight(borderWeight);
  stroke(bordercolor);
  rect (x, y, w, h, g);
}

void keyPressed(char key, int keyCode) {
      if (selected) {
         if (keyCode == (int)BACKSPACE) {
            removeText();
         } else if (keyCode == 32) {
            addText(' '); // SPACE
         } else {
            
           boolean isKeyCapitalLetter = (key >= 'A' && key <= 'Z');
           boolean isKeySmallLetter = (key >= 'a' && key <= 'z');
           boolean isKeyNumber = (key >= '0' && key <= '9');
      
           if (isKeyCapitalLetter || isKeySmallLetter || isKeyNumber) {
               addText(key);
           }
         }
      }
   }
   //letra c al final del text
   void addText(char c) {
      if (textWidth(this.text + c) < w) {
         this.text += c;
         textLength++;
      }
   }
   
   // Elimina ultima letra texto
   void removeText() {
      if (textLength - 1 >= 0) {
         text = text.substring(0, textLength - 1);
         textLength--;
      }
   }

   // mouse encima capo texto
   boolean mouseOverTextField() {
      if (mouseX >= this.x && mouseX <= this.x + this.w) {
         if (mouseY >= this.y && mouseY <= this.y + this.h) {
            return true;
         }
      }
      return false;
   }
   
   // Selecciona campo texto si pressed, deselecciona campo texto si pressed out
   void isPressed() {
      if (mouseOverTextField()) {
         selected = true;
      } else {
         selected = false;
      }
   }
}
