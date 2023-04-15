class PagedTable{
  String []tableHeaders;
  String [][]tableData; 
  float [] columnWidths;
  
  int numCols; 
  int numRows; 
  int numPage; 
  int numTotalPages; 
  
  //constructor
  PagedTable(int nr, int nc){
    this.numRows=nr; 
    this.numCols=nc; 
    this.numPage=0;
  }
  
  //setters
  void setHeaders (String[] h){
    this.tableHeaders=h;
  }
  
  void setData(String[][] d){
    this.tableData=d;
    if (d.length%(this.numRows-1)==0){
    this.numTotalPages= (d.length/(this.numRows-1))-1;
  }else{
    this.numTotalPages=(d.length/(this.numRows-1));
  }
  }
  
  void setValueAt (String value, int nr, int nc){
    this.tableData[nr][nc]=value;
  }
  void setColumWidths (float[] w){
  this.columnWidths=w;
  }
  
  void nextPage(){
    if (this.numPage<this.numTotalPages){
      this.numPage++;
    }
  }
  
  void prevPage(){
    if(this.numPage>0){
      this.numPage--;
    }
  }
  
  //dibuja tabla 
  void display (float x, float y, float w, float h){
    pushStyle();
    fill (255, 252, 252, 115);
    stroke (0); strokeWeight(3);
    rect (x, y, w, h);
    rect(x, y, w, h);
    
    float rowHeight = h / numRows;
    fill(222, 65, 65);  stroke(0); strokeWeight(3);
    rect(x, y, w, rowHeight);
    
    // dibuja filas 
    stroke(0);
    for(int r = 1; r <numRows; r++){
      if(r==1){ strokeWeight(3); }
      else {    strokeWeight(1); }
      line(x, y + r*rowHeight, x + w, y + r*rowHeight);
    }
    
    // dibuja columnas 
    float xCol = x;
    for(int c = 0; c<numCols; c++){
      xCol += w*columnWidths[c]/100.0;
      line(xCol, y, xCol, y + h);
    }
    
    // dibuja textos
    fill(0); textSize(24);
    for(int r = 0; r < numRows; r++){
      xCol = x;
      for(int c = 0; c< numCols; c++){
        if(r==0){
          textSize(35);textAlign(LEFT);
          text(tableHeaders[c], xCol + 50, y + (r+1)*rowHeight-35);
        }
        else{
          int k = (numRows-1)*numPage + (r-1);
          if(k<tableData.length){
            textAlign (LEFT);
            textSize(24);
            String tt = (tableData[k][c]);
            if(tt.length() > 80){
              tt = tt.substring(0,80)+" ...";
            }
            text(tt, xCol + 30, y + (r+1)*rowHeight - 35);
          }
        }
        xCol += w*columnWidths[c]/100.0;
      }
    }
    
    // Información de la Página
    fill(0);
    text("Pag: "+(this.numPage+1)+" / "+(this.numTotalPages+1), x, y + h + 50);
    popStyle();
  }
  
}
