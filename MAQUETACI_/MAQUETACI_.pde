boolean logged=false;
CheckBoxList cb1;
//textos opciones checkboxlist
String[] info={"EXEMPLE 1", "EXEMPLE 2", "EXEMPLE 3", "EXEMPLE 4"};
//Enumerat pantalles
enum PANTALLA {ENTRADA,IS, EMPEZAR, ELECCION};
//PANTALLA ACTUAL
PANTALLA pantalla=PANTALLA.ENTRADA;

//Pantalla entrada
Button b1, b2;
//Pantalla Iniciar sesion
TextField Textousuario, Textocontraseña; 
//Pantalla entrada
TextField Textocorreo, TextocontraseñaE, TextOcupacion;
//Pantalla elección
Button b3, b4, b5, b6;


void setup(){
fullScreen();
textAlign (CENTER);
setGUI();
loadMedia();

//creación botones
b1= new Button("ENTRADA", Xbutton, Ybutton, Wbutton, Hbutton);
b2= new Button ("INICIAR SESION", Xbutton, Ybutton+150, Wbutton, Hbutton);
b3= new Button ("INFORMACIÓN GALOPES (FAQs)", Xrecuadros, Yrecuadros, Wrecuadros, Hrecuadros);
b4= new Button ("ESENCIALES", Xrecuadros, Yrecuadros+400, Wrecuadros, Hrecuadros);
b5= new Button ("PRÁCTICA", Xrecuadros+800, Yrecuadros, Wrecuadros, Hrecuadros);
b6= new Button ("CALENDARIO", Xrecuadros+800, Yrecuadros+400, Wrecuadros, Hrecuadros);

//creacion campo texto
Textousuario= new TextField((int)Xbutton, (int)Ybutton, (int)Wbutton, (int)Hbutton);
Textocontraseña= new TextField ((int)Xbutton, (int)Ybutton+150,(int) Wbutton,(int)Hbutton);
Textocorreo=new TextField ((int)Xcorreo,(int) Ycorreo, (int)Wbutton, (int) Hbutton);
TextocontraseñaE= new TextField ((int)Xcorreo, (int)Ycorreo+(int)Hbutton+25, (int)Wbutton, (int)Hbutton);
TextOcupacion=new TextField (Xcorreo, Ycorreo+Hbutton*2+50, Wbutton, Hbutton);
//consturcción checkbox List
cb1=new CheckBoxList (info, width/3, height/4, 100, 100);

//DIBUIXA PANTALLA CORRESPONENT
switch (pantalla){
  case ENTRADA: dibujaPantallaENTRADA(); break;
  case IS: dibujaPantallaIS(); break;
  case EMPEZAR: dibujaPantallaEMP(); break;
  case ELECCION: dibujaPantallaEleccion(); break;
}
}

void draw (){
image(Logo, margeX, margeX+107, llarglogo, amplogo);
  
background(255);
//menu
dibujaZonaMenu();

//logo 
dibujaZonaLogo();

//general 
//dibujaZonaGeneral();

//PANTALLA 1
/*dibujaPantallaENTRADA();

//PANTALLA 2
dibujaPantallaIS();

//PANTALLA 3
dibujaPantallaEMP();

//PANTALLA 4
dibujaPantallaEleccion();


//PANTALLA 5
dibujaPantallaFAQs();

println("X: "+mouseX+", Y:"+mouseY);*/

//PANTALLA 6
dibujaPantallaEsenciales();
}

//pressed on campo texto
void mousePressed(){
  Textousuario.isPressed();
  Textocontraseña.isPressed();
  cb1.checkMouse();

}
