FAQ[] faqs;
//Pantalla entrada
Button b1, b2;
//Pantalla Iniciar sesion
TextField Textousuario, Textocontraseña; 
//Pantalla entrada
TextField Textocorreo, TextocontraseñaE, TextOcupacion;
//Pantalla elección
Button b3, b4, b5, b6;
CheckBoxList cb1;
CheckBoxList cb2;

//textos opciones checkboxlist
String[] info1={"EXEMPLE 1", "EXEMPLE 2", "EXEMPLE 3", "EXEMPLE 4", "EXEMPLE 5", "EXEMPLE 6"};
String[] info2={"EXEMPLE A", "EXEMPLE B","EXEMPLE C", "EXEMPLE D", "EMEPLE E"};

void setFAQs() {
  faqs = new FAQ[8];

  faqs[0] = new FAQ ("pregunta1", margeX, Ycapsa, Wcapsa, 100, color(227, 188, 208));
  faqs[1] = new FAQ ("resposta1", margeX, Ycapsa + 100, Wcapsa, 100, color (255, 222, 226));
  faqs[2] = new FAQ ("pregunta2", margeX, Ycapsa+200, Wcapsa, 100, color(227, 188, 208));
  faqs[3] = new FAQ ("resposta2", margeX, Ycapsa+300, Wcapsa, 100, color (255, 222, 226));
  faqs[4]= new FAQ ("pregunta3", margeX, Ycapsa+400, Wcapsa, 100, color(227, 188, 208));
  faqs[5]= new FAQ ("resposta3", margeX, Ycapsa+500, Wcapsa, 100, color (255, 222, 226));
  faqs[6]= new FAQ ("pregunta4", margeX, Ycapsa+600, Wcapsa, 100, color(227, 188, 208));
  faqs[7]= new FAQ ("resposta4", margeX, Ycapsa+700, Wcapsa, 100, color (255, 222, 226));
}

void setGUI() {
  setFAQs();

  //creación botones
  b1= new Button("ENTRADA", Xbutton, Ybutton, Wbutton, Hbutton);
  b2= new Button ("INICIAR SESION", Xbutton, Ybutton+150, Wbutton, Hbutton);
  b3= new Button ("INFORMACIÓN GALOPES (FAQs)", Xrecuadros, Yrecuadros, Wrecuadros, Hrecuadros);
  b4= new Button ("ESENCIALES", Xrecuadros, Yrecuadros+400, Wrecuadros, Hrecuadros);
  b5= new Button ("PRÁCTICA", Xrecuadros+800, Yrecuadros, Wrecuadros, Hrecuadros);
  b6= new Button ("CALENDARIO", Xrecuadros+800, Yrecuadros+400, Wrecuadros, Hrecuadros);

  //creacion campo texto
  Textousuario= new TextField((int)Xbutton, (int)Ybutton, (int)Wbutton, (int)Hbutton);
  Textocontraseña= new TextField ((int)Xbutton, (int)Ybutton+150, (int) Wbutton, (int)Hbutton);
  Textocorreo=new TextField ((int)Xcorreo, (int) Ycorreo, (int)Wbutton, (int) Hbutton);
  TextocontraseñaE= new TextField ((int)Xcorreo, (int)Ycorreo+(int)Hbutton+25, (int)Wbutton, (int)Hbutton);
  TextOcupacion=new TextField (Xcorreo, Ycorreo+Hbutton*2+50, Wbutton, Hbutton);

  //consturcción checkbox List
  cb1=new CheckBoxList (info1, margeX+amplogo+entreLogoyCheckbox, margeY+llarglogo+ampmenu+5, 100, 100);
  cb2=new CheckBoxList (info2, 300, 599, 100, 100);
}
