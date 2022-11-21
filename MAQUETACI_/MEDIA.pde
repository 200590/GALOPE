//IMATGE LOGO
PImage Logo; 
//TIPOGRAFIES
PFont Tipo1, Tipo2;

//carega elements
void loadMedia(){
loadImages();
loadFonts();
}

//carrega imatges
void loadImages(){
  Logo=loadImage("../data/LOGO SOLUCIÓ INFORMÀTICA 2.png");
}

//carrega fonts
void loadFonts(){
  Tipo1= createFont("../data/FUTRFW.ttf", 30);
  Tipo2= createFont("../data/Zector.otf", 30);
}
