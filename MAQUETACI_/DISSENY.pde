//lloc on es situen els diferents espais de l'aplicació

//llarg-->fa referència a l'altura (height)
//amp-->fa referència a l'amplada (width)

//marges 
float margeX=10;
float margeY=15;

//menu
float ampmenu=100;

//LOGO
float llarglogo=125; 
float amplogo=125;

//general
float llargeneral=1755;
float ampgeneral=130;

//empezar
int Xcorreo=880; 
int Ycorreo=350;

//elecció
float Xrecuadros=420;
float Yrecuadros=320;
float Wrecuadros=400;
float Hrecuadros=150;

float Xtext=Xrecuadros+20;
float Ytext=Yrecuadros-20;


//FAQs
float Ycapsa=margeX+125+amplogo;
float Xtexts=185; 
float Ytexts=196;
float Wcapsa=1920-margeX*2;

//dimensiones boton rect
float Xbutton=815;
float Ybutton=396;
float Wbutton=300;
float Hbutton=90;
//posicions text b1, b2
float textX=965; 
float textY=453;
//dimensions boton round
float Xroundbutton=1820; 
float Yroundbutton=935; 
float Rroundbutton=100;

//checkbox list
//distanca entre logo y checkboxlist
float entreLogoyCheckbox=10;
float Xcheckbox=246;
float Ycheckbox=145;

//SELECTEDS
float selectedW=Wbutton;
float selectedH=50;

//PAGED TABLE
float tableW=800; 
float tableH=500;
//dimensions botons i posició
float buttonPTX=400;
float buttonPTY=400;
float buttonPTW=90; 
float buttonPTH=90;
  //num rows+capçalera
int files=5; 
  //num col
int columnes=1;
  //titol columnes
String [] titols={"FAQs"};
float [] colWidth={1920-margeX*2};
  //dades de la taula
String[][]info={
                {"PREGUNTA 1"},
                {"RESPOSTA 1"},
                {"PREGUNTA 2"}, 
                {"RESPOSTA 2"},
                {"PREGUNTA 3"},
                {"RESPOSTA 3"}, 
                {"PREGUNTA 4"}, 
                {"RESPOSTA 4"},
                {"PREGUNTA 5"}, 
                {"RESPOSTA 5"},
                {"PREGUNTA 6"}, 
                {"RESPOSTA 6"},
                {"PREGUNTA 7"}, 
                {"RESPOSTA 7"},
                {"PREGUNTA 8"}, 
                {"RESPOSTA 8"},
};
