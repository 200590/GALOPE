//TIPOGRAFIES
String URL_FONTS="fonts/";
PFont [] fonts; 

void setFonts(){
  this.fonts= new PFont[2];
  this.fonts[0]= createFont (URL_FONTS+"Zector.ttf", 24);
 // this.fonts[1]= createFont ("Zector.otf", 30);
}

//getter number fonts 
int getNumFonts(){
  return this.fonts.length;
}

//getter font 1
PFont getFirstFont(){
  return this.fonts [0];
}

//getter font 2
PFont getSecondFont(){
  return this.fonts[1];
}

PFont getThirdFont(){
  return this.fonts[2];
}

//getter i font
PFont getIFont(int i){
  return this.fonts[i];
}


String URL_IMGS="imgs/";

//Array imagenes
PImage[] imgs;

void setMedias(){
  this.imgs=new PImage[3];
  this.imgs[0]= loadImage(URL_IMGS+"logo01.png");
  this.imgs[1]= loadImage(URL_IMGS+"logo02.png");
}

int getNumImatges(){
  return this.imgs.length;
}

PImage getLogo01(){
  return this.imgs[0];
}

PImage getLogo02(){
  return this.imgs[1];
}

//display logo 
void displayLogo (float x, float y, float w, float h){
  image (getLogo01(), x, y, w, h);
}

void displayLogo2 (float x, float y, float w, float h){
  image (getLogo02(), x, y, w, h);
}
