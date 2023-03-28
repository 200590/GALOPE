//Chechbox

class CheckboxText{

  //característiques
  float x, y, w, h;
  String text; 
  //PImage img;
  
  boolean checked;
  
  //colors
  color bgNoChecked; //no esta seleccionado
  color bgChecked; //esta seleccionado
  
  //constructor
  CheckboxText (int x, int y, int w, int h){
    this.x=x; 
    this.y=y; 
    this.w=w; 
    this.h=h;
    this.checked=false;
    this.text="";
  }
  
  CheckboxText (String t, float x, float y, float w, float h){
    this.text=t; 
    this.x=x;  this.y=y; this.w=w; this.h=h; 
    this.checked=false; 
    this.bgNoChecked= color (255);
    this.bgChecked= color(235, 188, 220);
  }
  
  /*void setImage (String imgName){
    this.img=loadImage(imgName);
  }*/
  
  
  //dibujar checkbox
  
  void display(){
    stroke (0);
    strokeWeight(3);
    
    if (this.checked){
      fill (bgChecked);
    }else{
      fill (bgNoChecked);
    }
    rect (x, y, w, h);
    fill (0); textAlign(LEFT); textSize(30);
    textFont (getThirdFont());
    text (this.text,x+w+15, y+h/2+5);
    
    /* if(img!=null){
      image(img, x - w, y, w, h);
    }*/
  }
    
    void setChecked (boolean b){
      this.checked=b;
    }
    
    //canvia estado selección
    void toggle(){
      this.checked=! this.checked;
    }
    // mouse sobre el checkbox
     boolean onMouseOver(){
    return  mouseX>= this.x && 
            mouseX<= this.x + this.w &&
            mouseY>= this.y &&
            mouseY<= this.y + this.h;
  }
  }
