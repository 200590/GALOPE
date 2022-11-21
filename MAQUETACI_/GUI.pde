FAQ faq1, faq2;
FAQ[] faqs;

void setFAQs(){
  faqs = new FAQ[4];
 
  faqs[0] = new FAQ("pregunta1", "resposta", margeX, Ycapsa, Wcapsa, 200);
  faqs[1] = new FAQ("pregunta2", "resposta", margeX, Ycapsa + 200, Wcapsa, 200);
  faqs[2] = new FAQ("pregunta3", "resposta", margeX, Ycapsa+400, Wcapsa, 200);
  faqs[3] = new FAQ("pregunta4", "resposta", margeX, Ycapsa+600, Wcapsa, 200);
}


void setGUI(){
  setFAQs();
}
