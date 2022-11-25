 class RoundButton{
  float a, b, r; //a-->equivalente a x   b-->equivalente a y    r-->equivalente a radio
  String text;
 
 RoundButton (String text, float a, float b, float r){
    this.text=text;
    this.a=a; 
    this.b=b; 
    this.r=r;
    //FillColor=color(129, 170, 255);
  }
 
 void displayRoundButton(){
   ellipse (this.a, this.b, this.r, this.r);
 }
 
 boolean  mouseOverRoundButton(){
   return dist (mouseX, mouseY, this.a, this.b)<= this.r; 
 }
 }
  
  
