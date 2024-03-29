class CheckBoxList{

  //caracteristicas(dimensiones, posiciones)
  float x, y, w, h;
  float margeV=55;
  
  //características (informacion, checkboxes)
  String []info;
  CheckboxText[] cbs; // Composición
  
  //constructor
  CheckBoxList(String[] info, float x, float y, float w, float h){
    this.x=x; this.y=y; this.w=w; this.h=h; 
    this.info=info; 
    this.cbs= new CheckboxText[info.length ];
    for (int i=0; i<info.length; i++){
      cbs[i]= new CheckboxText (info[i], x, y+(h+margeV)*i, w, h);
    }
  }
  
//información del checkbox
  void setInfo(String[] info){
    this.info=info; 
    this.cbs= new CheckboxText[info.length ];
    for (int i=0; i<info.length; i++){
      cbs[i]= new CheckboxText (info[i], x, y, w, h);
    }
  }
  
  //se dibuja la lista checkbox
  void display(){
    for (CheckboxText cb: cbs){
      cb.display();
    }
  }
  
  //click sobre checkbox
  void checkMouse(){
    for (CheckboxText cb: cbs){
      if (cb.onMouseOver()){
        cb.toggle();
        break;
      }
    }
  }
  
  //si checkbox selecciondado
  boolean isChecked (int n){
    return cbs[n].checked;
  }
  
  //si check box con texto está seleccionado
  boolean isChecked (String S){
    for(CheckboxText cb : cbs){
      if(cb.text.equals(S)){
        return cb.checked;
      }
    }
    return false;
  }
  
  //true si mouse está sobre algun checkbox
  boolean checkCursor(){
    for (CheckboxText cb : cbs){
      if(cb.onMouseOver()){
        return true;
      }
  }
  return false;
  }
}
