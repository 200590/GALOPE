class Carrousel {
   
  // Medidas carrousel
  int x, y, w, h;
  float imgW;
  float margeH = 15;

  // Informacion carrousel
  int numTotalImatges, numImatgesVisibles;
  
  // Imagen actual
  int currentImage;
  
  // titulos imagenes
  String[] nameCarrousel;
  
  // Imagenes carrousel
  PImage[] imgs;
 

   // Constructor
  Carrousel(int x, int y, int w, int h, int nv){
    this.x = x; this.y = y; this.w = w; this.h = h;
    this.numImatgesVisibles = nv; 
    this.currentImage = 0;
    this.imgW = (w - margeH*(nv-1)) / (float) nv;
  }

  
  //setters
void setImages(String []nameCarrousel){
  this.nameCarrousel=nameCarrousel; 
  this.numTotalImatges=nameCarrousel.length;
  this.imgs= new PImage [nameCarrousel.length];
  for (int i=0; i<imgs.length; i++){
    imgs[i]=loadImage (URL_IMGS+nameCarrousel[i]);
  }
}
 
  
  void next(){
    if(this.currentImage<this.numTotalImatges - this.numImatgesVisibles){
      this.currentImage++;
    }
  }
  
   void prev(){
    if(this.currentImage>0){
      this.currentImage--;
    }
  }

 void display(){
   fill (150); stroke (0);
   rect (x-5, y-5, w+10, h+10);
   
   for (int i=0; i<this.numImatgesVisibles; i++){
     int index=i+this.currentImage; 
     float xPos= x+i*(this.imgW+this.margeH);
     
     //imagen enseñar
     PImage img= imgs[index]; 
     image (img, xPos, y, this.imgW, h);
     
     // Titol de la imatge
      fill(0); textAlign(CENTER); textSize(24);
      text(nameCarrousel[index], xPos + this.imgW/2, y + h + 50);
    
      // Número de la imatge
      fill(200, 100, 100); noStroke();
      ellipse(xPos + 30, y + 30, 50, 50);
      fill(0);
      text(index, xPos + 30, y + 40);
    }
 }
    
 
}

  
  
