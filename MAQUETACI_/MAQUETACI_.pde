boolean logged=false;

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
}

void draw (){
background(255);
//menu
dibujaZonaMenu();

//logo 
dibujaZonaLogo();

//general 
//dibujaZonaGeneral();

//PANTALLA 1
/*dibujaPantallaENTRADA();
b1.display();
b2.display();*/


//PANTALLA 2
/*dibujaPantallaIS();
Textousuario.display();
Textocontraseña.display();

//etiquetas texto
fill(0); textSize(30); textAlign (CENTER); 
text ("INICIAR SESIÓN", 1035, 470);
ellipse (1145, 463, 50, 50);
text ("CONTRASEÑA", 1035, 500);
ellipse (1145, 610, 50, 50);
*/

//PANTALLA 3
/*dibujaZonaEMP();
Textocorreo.display();
TextocontraseñaE.display();
TextOcupacion.display();

//etiquetas texto
fill(0); textSize(30); textAlign (CENTER);
text ("CORREO ELECTRONICO", 1033, 405);
text ("CONTRASEÑA", 975, 520);
text ("OCUPACIÓN", 960, 635);*/

//PANTALLA 4
/*dibujaPantallaEleccion();
b3.display();
b4.display();
b5.display();
b6.display();*/

//PANTALLA 5
//dibujaZonaFAQs();

for(int i=0; i<faqs.length; i++){
faqs[i].display();
}

println("X: "+mouseX+", Y:"+mouseY);
}

//pressed on campo texto
void mousePressed(){
  Textousuario.isPressed();
  Textocontraseña.isPressed();
}
