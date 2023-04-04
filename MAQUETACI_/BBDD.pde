import de.bezier.data.sql.*;

MySQL msql;

String user="admin";
String pass="12345";
String database="mydb";

void setConnexionBBDD() {
  //se establece la conexión
  msql=new MySQL(this, "localhost", database, user, pass);

  // Si la connexió s'ha establert
  if (msql.connect()) {
    // La connexió ha funcionat!!!
    println("Connected to database!!");
  } else {
    // La connexió ha fallat!!!
    println("Connection failed !");
  }
}

void insertInfoTaulaUsuario(String idUsuario, String correo, String password, String ocupacion) {
  String q= "INSERT INTO usuario (idusuario, correoelectronico, contraseña, ocupacion) VALUES ('"+idUsuario+"', '"+correo+"','"+password+"', '"+ocupacion+" ')";
  println (q);
  msql.query(q);
}

int getUserLogin(String user, String password){
  String q =" SELECT COUNT(*) AS n FROM usuario WHERE idusuario='"+user+"' AND contraseña='"+password+"'";
  println(q);
  msql.query(q);
  msql.next();
  int n =  msql.getInt("n");
  return n;
}




// Obté el número de files de la taula
int getNumRowsTaula(String nomTaula){
  msql.query( "SELECT COUNT(*) AS n FROM %s", nomTaula );
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}

// Obté el número de files de la query
int getNumRowsQuery(String q){
  msql.query( q);
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}

// Retorna el numero de Unitat de la Unitat amb nom
int getIdTaulaUnitat(String nom){
  String sNom = nom.replace("\'", "\\'");
  String q = "SELECT numero FROM unitat WHERE nom='"+sNom+"'";
  msql.query(q);
  msql.next();
  return msql.getInt("numero");
}



  
// Obté informació de la taula FAQs
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

//obte informació taula Pregunta

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
    data[nr][5]=msql.getString ("opcio4");
    data [nr][6]=msql.getString ("correcta"); 
    data [nr][7]=msql.getString ("area_idarea");
    data [nr][8]=msql.getString ("unidad_idunidad");
  }
  return data;
}
