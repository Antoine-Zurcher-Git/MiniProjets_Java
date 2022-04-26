boolean touches[] = new boolean[255];
int jeu = 0;
// 5432 lignes
//jeu 1
String text1j1[] ={"", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""};
boolean knowsPasswordj1 =false;
int numj1 = 0;
boolean entrerj1 = true;
int limitej1 = 22;
//jeu 1

//jeu 2
float xj2 = 350, yj2 = 350;
float orienj2 = 0;
float vitj2 = 5;
int nbrMissj2 = 0;
missilej2 Missilesj2[] = new missilej2[500];
int nbrAstej2 = 0;
asteoridj2 astej2[] = new asteoridj2[10000];
float coolDj2 = 0;
int viej2 = 50;
float coolDaj2 = 0;
int etatj2 = 0;
//jeu 2

//jeu 3
int nbrBallej3 = 30;
int vitesseAppj3 = 10;
int limitej3 = 1225;
ballej3 ballesj3[] = new ballej3[1225];
int tempsj3 = 0;
//jeu 3

//jeu 4
float xj4 = 50;
float yj4 = 50;
float Vitj4 = 5.5;
float VitEj4 = 1.2;
boolean [] EnBar1j4 = {false,false,false,true,false,false,false};
boolean [] EnBar2j4 = {false,false,true,false,false,false,false};
float xBar1j4 = 600;
float xBar2j4 = 900;
int scorej4 = 0;
boolean menuj4 = true;
boolean jeuj4 = false;
boolean mortj4 = false;
//jeu 4

//jeu 5
PImage ciblej5;
PImage hangarj5;
float yCj5[] = {random(10,500),random(10,500),random(10,500),random(10,500),random(10,500)};
float xCj5[] = {random(10,500),random(10,500),random(10,500),random(10,500),random(10,500)};
boolean visj5[] = {false,false,false,false,false};
float tempsj5;
float tempsMij5 = 2;
float tempsMaj5 = 6;
float tempsEj5 = random(tempsMij5,tempsMaj5);
float tempsSj5;
//jeu 5

//jeu 6
float xj6 = random(10, 360);
float yj6 = random(50, 360);
float x1j6 = random(10, 360);
float y1j6 = random(50, 360);
float x22j6 = random(10, 360);
float y22j6 = random(50, 360);
float x3j6 = random(10, 360);
float y3j6 = random(50, 360);
float x4j6 = random(10, 360);
float y4j6 = random(50, 360);
float x5j6 = random(10, 360);
float y5j6 = random(50, 360);
int scorej6 = 0;
float[] Couleurj6 = {random(0, 254), random(0, 254), random(0, 254), random(0, 254), random(0, 254), random(0, 254), random(0, 254), random(0, 254), random(0, 254), random(0, 254), random(0, 254), random(0, 254), random(0, 254), random(0, 254), random(0, 254), random(0, 254), random(0, 254), random(0, 254)};
boolean Mortj6 = false;
//jeu 6

//jeu 7
String text7 = "";
String textCry7 = "";
boolean rein7 = false;
//jeu 7

//jeu 8
float x8 = 50;
float y8 = 50;
boolean saut8 = false;
float Vit8 = 9;
float Grav8 = 7;
int score8 ;
int Meilscore8;
float xBar18 = 600;
float xBar28 = 900;
float yBar18 = random(150, 350);
float yBar28 = random(150, 350);
float VitE8 = 7.5;
//jeu 8

//jeu 9
float x9, y9;
float rot9 = 0;
float vitx9 = 0;
float vity9 = 0;
float grav9 = 0.17;
float mot9 = 0.25;
boolean pose9 = false;
boolean gp9 ;
boolean crash9 = false;
int etat9 = 0;
float fuel9 = 100;
//jeu 9

//jeu 10
balle10 plan10[] = new balle10[400];
//jeu 10

//jeu 11
float x11 = 300;
float y11 = 300;
int xR11 = -200;
int yR11 = -200;
int xR211 = 200;
int yR211 = -200;
float z11;
int leftKey11, rightKey11, downKey11, upKey11;
float xB11 = 100;
float yB11 = 100;
float xVB11 = -2;
float yVB11 = 2;
boolean GB11, DB11, HB11, BB11, GR11, DR11, HR11, BR11;
boolean invincibilit11 = false;
float Temps11 = millis()/1000;
int vie11 = 5;
float tempsMili11 = 0;
float tempsSau11;
boolean clino11 = false;
boolean extr11 = false;
boolean [] secondB11 = {false, false, false, false, false, false, false, false, false, false};
float [] xBI11 = {200, 200, 200, 200, 200, 200, 200, 200, 200, 200};
float [] yBI11 = {200, 200, 200, 200, 200, 200, 200, 200, 200, 200};
float [] xVBI11 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
float [] yVBI11 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
boolean Mort11 = false;
//jeu 11

//jeu 12
int nbrCasesX12 = 500, nbrCasesY12 = 500;
boolean cases12[][] = new boolean[nbrCasesX12][nbrCasesY12];
int nbrTour12 = 0;
float taille12 = 1;
boolean touches12[] = new boolean[250];
float posCX12 = 0, posCY12 = 0;
boolean crea12 = true;
int t12 = 0, t212 = 0, t312 = 0, t412 = 0;
boolean posCel12 = true;
int fr12 = 20;
boolean demiBlock12 = false, affMenu12 = true;
boolean retourGD12 = false, retourHB12 = false;
int nbrVaisseau12 = 10, nbrCanon12 = 1, nbrStable12 = 5, nbrInstable12 = 4;
int Va12 = 1, Ca12 = 1, Sa12 = 1, Ia12 = 1;
int strS12 = 0;
String [] mi12, madeIn12, Acorn12, recta12, tourne12, test12, destru12, explosif12, pong12, pulsar12, vaisseau12, bombardier12, canonABombardier12, ship12, spaceship12, spider12, vaisseau212, vaisseau312, vaisseau412, vaisseau512, wingSpaceship12;
String structure12[] = new String[500];
boolean ttGrilleaff12 = false;
boolean info12 = true;
//jeu 12

//jeu 13
int yLi13 = 0;
float Vit113 = 1.5;
float Vit213 = 2;
float Vit313 = 2.5;
float []yC113 = {0, -150, -300, -450};
float []VitC113 = {Vit313, Vit213, Vit113, Vit313};
float []yC213 = {0, -150, -300, -450};
float []VitC213 = {Vit113, Vit313, Vit213, Vit313};
float []yC313 = {0, -150, -300, -450};
float []VitC313 = {Vit113, Vit213, Vit313, Vit213};
int score13;
//jeu 13

//jeu 14
String reponse14;
int nbrP14 = 120;
float nbrMinM14 = 2;
float nbrMaxM14 = 25;
int FrameR14 = 60;
float densite14 = 1;
float Force14 = 0.0001;
String Cam14 = "n";

float x14[] = new float[nbrP14-1];
float y14[] = new float[nbrP14-1];
float masse14[] = new float[nbrP14-1];
float dx14[] = new float[nbrP14-1];
float dy14[] = new float[nbrP14-1];
float rayon14[] = new float[nbrP14-1];
boolean SuivreG14 = false;
Camera14 worldCamera14;
//jeu 14

//jeu 15
int nbrPointClic15 = 700;
int nbrPointAlea15 = 100;
int nbrPointAppa15 = 200;
float prcR15 = 25;
color c15 = color(0, 0, 0);
ver15 point15[] = new ver15[nbrPointClic15];
int nbrPoints15 = 1;
ver15 pointAlea15[] = new ver15[nbrPointAlea15];
int numAp15 = 1;
ver15 pointappa15[] = new ver15[nbrPointAppa15];
boolean fin15 = false;
//jeu 15

//jeu 16
int nbrP16 = 1;
float vitesseDepla16 = 4;
float px16[] = new float[1500];
float py16[] = new float[1500];
float x16 = 100, y16 = 400;
int z16=0, q16=0, s16=0, d16=0;
float angleAct16 = 0;
Enemis16 enmi16 [] = new Enemis16[50];
Star16 etoiles16[] = new Star16[50];
float m16, p16;
int score16 = 0;
int vie16 = 3;
float invasion16 = 0;
float etat16 = 2;
PImage laser16, vaisseau16, monster16;
boolean mission16 = false;
float temps16 = 0;
//jeu 16

//jeu 17
int bloc17[][] = new int[75][75];
float prcBB17 = 75;
float x17,y17;
float vit17 = 1.5;
float temps17 = 0;
//jeu 17

//jeu 18
float [] posY18 = new float [500];
float ecart18 = 3;
float temps18;
float tempsS18;
float esp18 = 50;
float score18;
int vie18 = 5;
float scoreM18;
float difcl18 = 70;
int r18 = 230;
int v18 = 230;
int b18 = 230;
//jeu 18

//jeu 19
int x19 = 0;
int y19 = 0;
int vie19 = 10;
int xE19 = 510;
int yE19 = 510;
float xP19 = 480;
float yP19 = 480;
boolean gauche19, droite19, haut19, bas19;
int xSauv19 =0;
int ySauv19 = 0;
float tempsMilli19;
float tempsSauv19;
boolean cooldown19 = false;
boolean clinio19 = false;
int score19 = 0;
int backGround19 = 20;
int VB19 = 1;

boolean menu19 = true;
boolean jeu19  = false;
boolean mort19 = false;
//jeu 19

//jeu 20
orbit20 vague20[] = new orbit20[1225];
float divi20 = 1.16;
float divj20 = 1.12;
//jeu 20

//jeu 21
int SKey21;
int Skeyr21;
float x21 = 50;
float y21 = 200;
float xR21 [] = {550, 750, 950};
float yDim21 [] = {random(100, 300), random(100, 300), random(100, 300)};
boolean jeu21 = true;
int score21 =0;
//jeu 21

//jeu 22
String [] Sujet22 = {"Dieu", "Un Pelican", "Un Robot", "Chuck Norris", "Link", "Ce jeu", "Tu", "Kirby", "Nintendo", "Pokemon", "Sonic", "Matieu Sommet", "Hitler", "Dark Vador", "Farod", "Un zombie", "François Hollande", "Trump", "La tour Eiffel", "Une vache", "Un chat", "La vie", "Un crocodile", "John Cena", "Antoine Daniel", "La france entière", "L'allemagne", "Poutine", "Siphano", "Pikachu", "Le créateur du jeu"};
String [] Verbe22 = {"se film avec", "saute sur", "se tait face à", "rencontre", "coupe la parole à", "vole", "s'est fait voler", "brule", "écrase", "coupe", "mange", "conquit", "détruit", "monte", "achète", "fuit", "lance", "est", "va devenir", "construit", "gèle", "possède", "fabrique", "est perdu dans", "connait", "voit", "croit en", "à trouver", "aime bien", "tient", "tartine", "traine", "sent", "n'aime pas", "passe par", "court vers", "pense à", "sort avec", "vit avec", "cherche"};
String [] Adverbe22 = {"en écoutant la radio", "sous l'eau", "en mangeant un McDo", "au moment de sa mort", "buggé", "qui est possédé", "mondialement", "dans un twist final", "en attendant le bus", "secrètement", "lors d'une conquète spatial", "en 10 minutes", "instantanément", "rapidement", "très lentement", "admirablement", "incognito", "rudement", "encore", "soudainement", "délicatement", "sans aucun souci", "et trouve ça normal", "finalement", "difficilement", "appeuré", "tristement", "maladroitement", "en Andalousie"};
String [] Apverbe22 = {"Chuck Norris", "un blopfish", "ton cerveau", "un trou noir", "ton ordinateur", "R2D2", "un acide", "Mario", "les Nazis", "une forêt", "Voldemort", "Squeezie", "une classe d'enfant", "un téléphone", "Antoine Daniel", "le Joueur du Grenier", "les tortues ninja", "une pomme", "la France", "le monde", "un cheval", "un gros", "un roux", "tout les chats", "un stabilo", "la mort", "le respect", "une glace", "ton ami", "tes yeux", "un vaisseau spatial"};
int AlS22 = int(random(Sujet22.length));
int AlV22 = int(random(Verbe22.length));
int Alad22 = int(random(Adverbe22.length));
int AlA22 = int(random(Apverbe22.length));
float C122 = random(20, 250);
float C222 = random(20, 250);
float C322 = random(20, 250);
boolean couleur22 = false;
boolean jeu22 = true;
boolean commencer22 = false;
//jeu 22

//jue 23
Planete23 [] lesPl23 = new Planete23[157];
float posZ23 = 0;
//jeu 23

//jeu 24
float RectX24 = 250;
float RectX224 = 250;
float CercleX24 = 50;
float CercleY24 = 100;
float VitCercleX24 = 7;
float VitCercleY24 = 7;
int Vies24 = 5;
int ViesEn24 = 5;
float PosEn24 = 250;
float VitB24 = 7;
//jeu 24

//jeu 25
float x25 = 200;
float y25 = 200;
float score25 = 0;
float x225 = 100;
float y225 = 100;
boolean mortt25 = false;
float temps25 = 0;
float scoreF25 = 0;
//jeu 25

//jeu 26
int x26 = 200;
float xE26 = 200;
float yE26 = 50;
boolean Asc26 = false;
float VitY26 = 0;
float VitX26 = 0;
//jeu 26

//jeu 27
String texte27 = "";
String texteS27 = "";
int longText27;
char[] tabl227 = new char[100];
//jeu 27

//jeu 28
float [] posY28 = new float [500];
int ecart28 = 15;
float yRec28 = 50;
float xRec28 = 50;
float grav28 = 0.8;
PImage Avion28;
PImage Canadaire28;
PImage Humain28;
boolean Avions28 = true;
boolean menu28 = true;
int vies28 = 5;
float temps28 = 0;
float tempsS28 = 0;
float YH28 = 200;
int sauv28;
int xH28;
int score28;
int yP28 = -50;
//jeu 28

//jeu 29
PImage HeadSnakeH29;
PImage HeadSnakeB29;
PImage HeadSnakeG29;
PImage HeadSnakeD29;
PImage gateau29;
PImage gateau229;
PImage gateau329;
PImage gateau429;
PImage Epinard29;
PImage SuperGateau29;
PImage BodySnake29;
PImage Engrenage29;
int score29,xS29,yS29;
int gateauI29 = 4;
int DeplaX29 = 0;
int DeplaY29 = 0;
int x329 = 40;
int y329 = 40;
int xBr29 = 20*int(random(1,24));
int yBr29 = 20*int(random(1,24));
int [] xB29 = new int[650];
int [] yB29 = new int[650];
int nbrDeCorps29 = score29+2;
boolean TG29 = false;
boolean TD29 = false;
boolean TB29 = false;
boolean TH29 = false;
boolean Mort29 = false;
float xR29 = random(0,500);
float yR29 = random(0,500);
float HS29;
String []hightscore29;
//jeu 29

//jeu 30 space dash
PImage asteoI30, vaisseau30;
float xV30 = 350, yV30 = 600;
float vitV30 = 5;
float score30 = 0;
int vie30 = 5;
boolean cligno30 = false;
asteo30 astorides30[] = new asteo30[10];
float temps30 = 0;
//jeu 30

//jeu 31
float x31 = 0;
float y31 = 0;
float vx31 = 0,vy31 = 0;
//jeu 31

//jeu 32
char lettres32[] = {' ','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'};
String texte32 = "felicitation pour ce code";
int tailleChar32;
colone32 nbrC32 [];
//jeu 32

//jeu 33
float x33 = 225;
float y33 = 225;
boolean dedans33 = false;
float min33 = -4;
float max33 = 4;
boolean Mort33 = false;
float temps33 = 0;
//jeu 33

//jeu 34
float posYt34 = 0;
boolean tombe34 = false;
boolean haut34 = true;
boolean bas34 = false;
float score34 = 0;
int essais34 = 0;
float scoreF34 = 0;
float scoreS34;
float dif34 = 0, grav34 = 0.2;
//jeu 34

//jeu 35
int TF35 = 400;
int x35;
int y35;
float xE35[] = {random(0, 400), random(0, 400), random(0, 400), random(0, 400), random(0, 400), random(0, 400)};
float yE35[] = {410, 460, 510, 560, 610, 650};
boolean gauche35 = false;
boolean Mort35 = true;
int Vie35 = 10;
float temps35 = 0;
float tempsS35 = 0;
int score35;
//jeu 35

void setup() {
  size(700, 700);
}


void setup35 (){
  x35=0;
  y35=100;
  size(700, 700);
}

void setup32(){
  tailleChar32 = width/(texte32.length());
  nbrC32 = new colone32[texte32.length()];
  for(int i = 0; i < texte32.length() ; i ++){
    nbrC32[i] = new colone32(i);
  }
}

void setup30() {
  asteoI30 = loadImage("Asteroide.png");
  vaisseau30 = loadImage("Vaisseau.png");
  for (int i = 0; i < 10; i ++) {
    astorides30[i] = new asteo30();
  }
}

void setup29(){
  size(700,700);
  highscore29();
  imageL29();
  image(HeadSnakeD29,x329,y329,20,20);
  image(BodySnake29,x329-20,y329,20,20);
  posiPomme29();
}

void setup28() {
  size(700, 700);
  posY28[0] = 250;
  for (int i = 1; i <= 499; i++) {
    posY28[i] = posY28[i-1] + random(-3, 3);
  }
  Avion28 = loadImage("Avion.png"); // Avion.png ou Canadaire.png
  Canadaire28 = loadImage("Canadaire.png");
  Humain28 = loadImage("gugus.png");
  YH28 = posY28[400];
}

void setup23() {
  frameRate(60);
  for (int i = 50; i < 700; i +=50) {
    for (int j = 50; j < 700; j+=50) {
      lesPl23[((i/50)-1)*12+((j/50)-1)] = new Planete23((i), (j));
    }
  }
}


void setup18() {
  posY18[0] = 250;
  for (int i = 1; i <= 499; i++) {
    posY18[i] = posY18[i-1] + random(-ecart18, ecart18);
  }
}

void setup20() {
  for (int i = 0; i < 700; i+= 20) {
    for (int j = 0; j < 700; j+= 20) {
      vague20[(i/20)*35+(j/20)] = new orbit20(radians( (i/divi20) + (j/divj20) ), i, j);
    }
  }
}

void setup17(){
  crea17();
}

void setup16() {
  frameRate(30); // définit le nombre d'image par seconde
  crea16(); // créé les points qui servent à la ligne magnétique
  for (int i = 0; i < 50; i++) { // Initialise les ennemis et les étoiles
    enmi16[i] = new Enemis16(random(1800, 2500)+i*500, random(10, 740), random(0.1, 7) );
    etoiles16[i] = new Star16(random(0, 1500)+i*10, random(10, 740), random(-0.1, 0) );
  }
  chargeImage16(); // charge les images
}

void setup15() {
  background(255);
  for (int i = 0; i < nbrPointAlea15; i ++) {
    pointAlea15[i] = new ver15(int(random(0, 700)), int(random(0, 700)));
  }
}

void setup14(){
  Force14 = Force14/10000*densite14;
  if (Cam14.equals( "y")) {
    SuivreG14 = true;
  } else {
    SuivreG14 = false;
  }
  worldCamera14 = new Camera14();
  frameRate(FrameR14);
  //fullScreen(P3D);
  initialisation14();
}

void setup12(){
  chargStructure12();
  remplaTabl12(wingSpaceship12);
}

void setup2(){
  for (int i = 0; i < 15; i++) {
    float rand = random(0, 2*PI);
    astej2[nbrAstej2] = new asteoridj2(350+cos(rand)*random(500, 700), 350+sin(rand)*random(500, 700), rand+PI+random(-0.5, 0.5), random(30, 100), random(30, 100));
    nbrAstej2 ++;
  }
}

void setup3(){
  for (int i = 0; i < nbrBallej3; i ++) {
    ballesj3[i] = new ballej3(random(50, 650), random(50, 650), random(-PI, PI), i);
  }
  if (limitej3 > 1225) {
    limitej3 = 1225;
  }
}

void setup10(){
  for (int i = 0; i< 20; i++) {
    for (int j = 0; j < 20; j++) {
      plan10[i*20+j] = new balle10(50+i*30, 50+j*30);
    }
  }
}

void setup5(){
  ciblej5 = loadImage("cible.JPG");
  hangarj5 = loadImage("hangar.jpg");
}

void setup9(){
  x9 = random(100, 600);
  y9 = 50;
  rot9 = random(-PI/9.0, PI/9.0);
  float forceD = random(0.1, 2);
  vitx9 = cos(rot9+PI/2.0)*(forceD);
  vity9 = sin(rot9+PI/2.0)*(forceD);
}
