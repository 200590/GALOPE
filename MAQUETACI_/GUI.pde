//FAQ[] faqs;

//general

RoundButton next, b0, back;
//Pantalla entrada
Button b1, b2, wb;
//Pantalla Iniciar sesion
TextField newUsuario, Textousuario, Textocontraseña;
//Pantalla entrada
TextField Textocorreo, TextocontraseñaE, TextOcupacion;
//Pantalla elección
Button b3, b4, b5, b6;
CheckBoxList cb1, cb2, cb3, cb4;
//pantalla practica
Button b7, b8, b9, b10;
//Pantalla esenciales
PopUp P1, P2, P3;
Button done2;
//Pantalla FAQs
Button b11, b12;
PagedTable PT;
//pantalla practica test 1
RadioButton rb1, rb2, rb3, rb4;
RadioButtonGroup rbg;
//ArrayButtons AB1;
Button buttons;
//pantalla practica test 2
RadioButton rb5, rb6, rb7;
RadioButtonGroup rbg2;
Button b14;
//pantalla evaluacion 
Button b15;
//pantalla correccion
Button b13;
//pantalla calendario
Calendario c;
Button done;
TextField ImportantEvents;
//carrousel
Carrousel cl;

//textos opciones checkboxlist
String[] info1={"Caballo", "Casco homologado y/o chaleco protector", "Botas/Botines con polainas"};
String[] info2={"Fusta/espuelas", "Material para el caballo", "Pantalones de equitación"};
String [] evaluacion={"RESPUESTA 1", "RESPUESTA2","RESPUESTA 3", "RESPUESTA 4", "RESPUESTA 5"};
String []evaluacion2={"RESPUESTA 6", "RESPUESTA 7", "RESPUESTA 8", "RESPUESTA 9", "RESPUESTA 10"};
String [] nameCarrousel={"caballo.jpg", "casco.jpg", "chaleco.jpg", "botes.jpg", "fusta.jpg", "espuelas.jpg", "montura.jpg", "protector.jpg", "sudadero.jpg", "pantalones.png"};

void setFAQs() {
 /* faqs = new FAQ[8];

  faqs[0] = new FAQ ("pregunta1", "resposta1", margeX, Ycapsa, Wcapsa, 100, 170, color(227, 188, 208), color (255, 222, 226));
  faqs[1]=new FAQ("pregunta 2", "resposta 2", margeX, Ycapsa+100+170, Wcapsa, 100, 170, color (227, 188, 208), color (255, 222, 226));
  //faqs[2]= new FAQ ("pregunta 3", "resposta 3", margeX, Ycapsa*3, Wcapsa, 120, 250, color (277, 188, 208), color (255, 222, 226));*/
  

}

void setGUI() {
  setFAQs();

  //creación botones
  b1= new Button("INICIAR SESIÓN", Xbutton, Ybutton, Wbutton, Hbutton, Gbutton);
  b2= new Button ("EMPEZAR", Xbutton, Ybutton+200, Wbutton, Hbutton, Gbutton);
  b0= new RoundButton ("GALOPE", llarglogo/2+16, amplogo/2+ampmenu+30, Rroundbutton+20);
  next= new RoundButton("NEXT", Xroundbutton, Yroundbutton, Rroundbutton);
  back= new RoundButton ("BACK", 75, Yroundbutton, Rroundbutton);



  b3= new Button ("INFORMACIÓN GALOPES (FAQs)", Xrecuadros, Yrecuadros, Wrecuadros, Hrecuadros, Gbutton);
  b4= new Button ("PRÁCTICA", Xrecuadros, Yrecuadros+400, Wrecuadros, Hrecuadros, Gbutton);
  b5= new Button ("ESENCIALES", Xrecuadros+800, Yrecuadros, Wrecuadros, Hrecuadros, Gbutton);
  b6= new Button ("CALENDARIO", Xrecuadros+800, Yrecuadros+400, Wrecuadros, Hrecuadros, Gbutton);
  
  b7=new Button ("GALOPE 1", Xrecuadros, Yrecuadros, Wrecuadros, Hrecuadros, Gbutton);
  b8= new Button ("GALOPE 2", Xrecuadros, Yrecuadros+400, Wrecuadros, Hrecuadros, Gbutton);
  b9= new Button ("GALOPE 3", Xrecuadros+800, Yrecuadros, Wrecuadros, Hrecuadros, Gbutton);
  b10= new Button ("GALOPE 4", Xrecuadros+800, Yrecuadros+400, Wrecuadros, Hrecuadros, Gbutton);
  wb= new Button("RFHE", Xbutton+600, Ybutton+450, Wbutton, Hbutton, Gbutton);
    desktop=Desktop.getDesktop();
  
  //creacion campo texto
  Textousuario= new TextField((int)Xbutton, (int)Ybutton, (int)Wbutton, (int)Hbutton, Gbutton);
  newUsuario=new TextField ((int)Xbutton, (int)Ybutton, (int)Wbutton, (int)Hbutton, Gbutton);
  Textocontraseña= new TextField ((int)Xbutton, (int)Ybutton+150, (int) Wbutton, (int)Hbutton, Gbutton);
  
  Textocorreo=new TextField ((int)Xbutton, (int) Ycorreo-90, (int)Wbutton, (int) Hbutton, Gbutton);
  TextocontraseñaE= new TextField ((int)Xbutton, (int)Ycorreo+(int)Hbutton+100, (int)Wbutton, (int)Hbutton, Gbutton);


  //consturcción checkbox List
  cb1=new CheckBoxList (info1, Xcheckbox,  Ycheckbox, 100, 100);
  cb4=new CheckBoxList (info2,Xcheckbox+720, Ycheckbox, 100, 100);


  //selected
  s1=new Select (selectedValue, Xbutton, Ycorreo+Hbutton*2+150, Wbutton, Hbutton, 10);
  
  //PopUps
  P1= new PopUp (375, 815, 350, 225, 20, "ASUNTO", "MENSAJE", color (255, 222, 226));
  P2= new PopUp (145, 315, 350, 225, 20, "ASUNTO", "MENSAJE", color (255, 222, 226));
  P3= new PopUp (1162, 760, 350, 220, 20, "ASUNTO", "MENSAJE", color (255, 222, 226));
  
  //PagedTable
  b11= new Button ("NEXT", buttonPTX+130, buttonPTY, buttonPTW, buttonPTH, Gbutton);
  b12=new Button ("PREV", buttonPTX, buttonPTY, buttonPTW, buttonPTH, Gbutton);
  
  PT= new PagedTable (5, 1);
  float[] colsWidth ={100};
  PT.setColumWidths(colsWidth);
  String[] header = {"FAQ"};
  PT.setHeaders(header);
  String[][] faqs ={ {"pregunta1","resposta1"},{"pregunta2","resposta2"}};
  PT.setData(faqs);
  
  //radio buttons practica test 1
  rb1= new RadioButton (600, 600, 30);
  rb2= new RadioButton (600, 800, 30); 
  rb3= new RadioButton (1185, 600, 30);
  rb4= new RadioButton (1185, 800, 30);
  //group radio button
  rbg= new RadioButtonGroup(4);
  rbg.setRadioButtons(rb1, rb2, rb3, rb4); 
  
  //radio button practica test 2
  rb5= new RadioButton (664, 495, 30);
  rb6= new RadioButton (664, 550, 30); 
  rb7= new RadioButton (730, 495, 30);
  //group radio button
  rbg2= new RadioButtonGroup(3);
  rbg2.setRadioButtons(rb1, rb2, rb3); 
  
  //checkbox list evaluación
  cb2= new CheckBoxList (evaluacion, 238, 334, 80, 80);
  cb3= new CheckBoxList (evaluacion2,  838, 334, 80, 80);
  b14= new Button ("FINALIZAR", 1500, 890, Wbutton, Hbutton, Gbutton);
  b15=new Button ("CORRECCIÓN", 1455, 766, Wbutton, Hbutton, Gbutton);
  
  //pantalla correccion
  b13= new Button ("EVALUACIÓN", 242, 890, Wbutton, Hbutton, Gbutton);
 

  //pantalla calendario
  c= new Calendario (1075, 195, 839, 720, 610, 255);
  ImportantEvents= new TextField (620, 360, 1025-610, 350, Gbutton);
  done= new Button ("DONE", 935, 750, Wbutton/3, Hbutton/2, Gbutton);
  
  //pantalla esenciales 
  cl=new Carrousel (1400, 225, 500, 700, 1);
  cl.setImages(nameCarrousel);
  done2= new Button ("DONE", 990, 900, Wbutton/3, Hbutton/2, Gbutton);
}
