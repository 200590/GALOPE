FAQ[] faqs;

void setFAQs(){
  faqs = new FAQ[8];
 
  faqs[0] = new FAQ ("pregunta1", margeX, Ycapsa, Wcapsa, 100, color(227, 188, 208));
  faqs[1] = new FAQ ("resposta1", margeX, Ycapsa + 100, Wcapsa, 100, color (255, 222, 226));
  faqs[2] = new FAQ ("pregunta2", margeX, Ycapsa+200, Wcapsa,100, color(227, 188, 208));
  faqs[3] = new FAQ ("resposta2", margeX, Ycapsa+300, Wcapsa, 100, color (255, 222, 226));
  faqs[4]= new FAQ ("pregunta3", margeX, Ycapsa+400, Wcapsa, 100, color(227, 188, 208));
  faqs[5]= new FAQ ("resposta3", margeX, Ycapsa+500, Wcapsa, 100, color (255, 222, 226));
  faqs[6]= new FAQ ("pregunta4", margeX, Ycapsa+600, Wcapsa, 100, color(227, 188, 208));
  faqs[7]= new FAQ ("resposta4", margeX, Ycapsa+700, Wcapsa, 100, color (255, 222, 226));
}

void setGUI(){
  setFAQs();
}
