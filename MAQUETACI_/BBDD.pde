import de.bezier.data.sql.*;

MySQL msql;

String user="admin";
String pass="12345";
String database="mydb";

void setConnexionBBDD() {
  //se establece la conexión
  msql=new MySQL(this, "localhost", database, user, pass);

  // Si la connexió se ha establecido
  if (msql.connect()) {
     //Connected to database!!
    println("Connected to database!!");
  } else {
    // Connection failed!!
    println("Connection failed !");
  }
}

void insertInfoTaulaUsuario(String idUsuario, String correo, String password, String ocupacion) {
  String q= "INSERT INTO usuario (idusuario, correoelectronico, contraseña, ocupacion) VALUES ('"+idUsuario+"', '"+correo+"','"+password+"', '"+ocupacion+" ')";
  println (q);
  msql.query(q);
}

void insertRespostaTest (int respuesta, int test_idtest, int pregunta_idpregunta){
  String r="INSERT INTO respuesta (respuesta, test_idtest, pregunta_idpregunta) VALUES ('"+respuesta+"', '"+test_idtest+"', '"+pregunta_idpregunta+" ')";
  println (r);
  msql.query(r);
}

String getRespostaRightTest(){
  String RR= "SELECT `idpregunta`, `correcta` FROM `pregunta`";
  return RR;
}

String getRespostaContestada (){
  String RC= "SELECT `idrespuesta`, `respuesta` FROM `respuesta`";
  return RC;
}

int getUserLogin(String user, String password){
  String q =" SELECT COUNT(*) AS n FROM usuario WHERE idusuario='"+user+"' AND contraseña='"+password+"'";
  println(q);
  msql.query(q);
  msql.next();
  int n =  msql.getInt("n");
  return n;
}

// Getter de número de fials de la tabla
int getNumRowsTaula(String nomTaula){
  msql.query( "SELECT COUNT(*) AS n FROM %s", nomTaula );
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}

// Getter número de filas de la query
int getNumRowsQuery(String q){
  msql.query( q);
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}

// getter de numero de unidad de la unidad con nombre 

int getIdTaulaUnitat(String nom){
  String sNom = nom.replace("\'", "\\'");
  String q = "SELECT numero FROM unitat WHERE nom='"+sNom+"'";
  msql.query(q);
  msql.next();
  return msql.getInt("numero");
}

//Getter información tabla FAQs
String[][] getInfoTaulaFAQs(){
  
  int numRows = getNumRowsTaula("faqs");
  
  String[][] data = new String[numRows][3];
  
  int nr=0;
  msql.query("SELECT pregunta, resposta FROM faqs ORDER BY ordre ASC");
  while (msql.next()){
      //data[nr][0] = String.valueOf(msql.getInt("ordre"));
      data[nr][0] = msql.getString("pregunta");
      data[nr][1]= msql.getString ("resposta");
      nr++;
  }
  return data;
}

//obten informacion tabla pregunta

String [][] getInfoTablaPregunta(String unidad){
  String q2 ="SELECT COUNT(*) AS n FROM pregunta WHERE unidad_idunidad='"+unidad+"'";
  int numRows= getNumRowsQuery (q2);
  String [][] data= new String [numRows][9];
  int nr=0; 
  String q ="SELECT * FROM pregunta WHERE unidad_idunidad='"+unidad+"'";
  msql.query(q);
  while (msql.next()){
    data[nr][0]=msql.getString ("idpregunta");
    data [nr][1]=msql.getString ("enunciat");
    data [nr][2]=msql.getString ("opcio1");
    data [nr][3]=msql.getString ("opcio2");
    data [nr][4]=msql.getString ("opcio3");
    data [nr][5]=msql.getString ("opcio4");
    data [nr][6]=msql.getString ("correcta"); 
    data [nr][7]=msql.getString ("area_idarea");
    data [nr][8]=msql.getString ("unidad_idunidad");
    nr++;
  }
  return data;
}
