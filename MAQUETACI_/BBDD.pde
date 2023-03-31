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

// Lleva tot el text
  /* void removeAllText(){
     this.text = "";
   }*/
