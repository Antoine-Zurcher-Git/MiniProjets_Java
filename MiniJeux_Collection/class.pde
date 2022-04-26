
// 2
class missilej2 {
  boolean actif = true;
  float px, py;
  float or;
  float vitM = 15;
  missilej2(float pix, float piy, float orie) {
    px = pix;
    py = piy;
    or = orie;
  }

  void deplaff() {
    if (actif == true) {
      pushStyle();
      strokeWeight(2);
      stroke(255, 50, 50);
      line(px-cos(or)*10, py-sin(or)*10, px+cos(or)*10, py+sin(or)*10);
      popStyle();

      px += cos(or)*vitM;
      py += sin(or)*vitM;
    }
  }
}

class asteoridj2 {
  float pxa, pya, di;
  float orien = 0;
  float vitO, vit;
  float tx, ty;
  boolean actif = true;
  asteoridj2(float pixa, float piya, float dir, float txi, float tyi) {
    pxa = pixa;
    pya = piya;
    di = dir;
    vitO = random(-0.01, 0.01);
    tx = txi;
    ty = tyi;
    vit = random(0.2, 1);
  }

  void deplaffa() {
    if (actif == true) {
      orien += vitO;
      pushMatrix();
      pushStyle();

      translate(pxa, pya);
      rotate(orien);
      noFill();
      strokeWeight(2);
      stroke(255);
      rect(-tx/2.0, -ty/2.0, tx, ty);

      popStyle();
      popMatrix();

      pxa += cos(di)*vit;
      pya += sin(di)*vit;

      if ( tx < 10 || ty < 10) {
        actif = false;
      }
      if (nbrMissj2 > 0) {
        for (int i = 0; i < nbrMissj2; i ++) {
          //Missiles[i].deplaff();
          if (Missilesj2[i].px > pxa-tx/2.0 && Missilesj2[i].px < pxa+tx/2.0 && Missilesj2[i].py > pya-ty/2.0 && Missilesj2[i].py < pya+ty/2.0 && Missilesj2[i].actif == true) {
            nouvAs();
            Missilesj2[i].actif = false;
          }
        }
      }
      if (xj2-20 > pxa-tx/2.0 && xj2-20 < pxa+tx/2.0 && yj2-20 > pya-ty/2.0 && yj2-20 < pya+ty/2.0) {
        nouvAs();
        viej2 -= tx*ty/100.0;
      }
      if (xj2-20 > pxa-tx/2.0 && xj2-20 < pxa+tx/2.0 && yj2+20 > pya-ty/2.0 && yj2+20 < pya+ty/2.0) {
        nouvAs();
        viej2 -= tx*ty/100.0;
        ;
      }
      if (xj2+20 > pxa-tx/2.0 && xj2+20 < pxa+tx/2.0 && yj2+20 > pya-ty/2.0 && yj2+20 < pya+ty/2.0) {
        nouvAs();
        viej2 -= tx*ty/100.0;
      }
      if (xj2+20 > pxa-tx/2.0 && xj2+20 < pxa+tx/2.0 && yj2-20 > pya-ty/2.0 && yj2-20 < pya+ty/2.0) {
        nouvAs();
        viej2 -= tx*ty/100.0;
      }
    }
  }
  void nouvAs() {
    actif = false;
    astej2[nbrAstej2] = new asteoridj2(pxa-tx/2.0, pya-ty/2.0, di, tx/2, ty/2);
    nbrAstej2 ++;
    astej2[nbrAstej2] = new asteoridj2(pxa+tx/2.0, pya+ty/2.0, di, tx/2, ty/2);
    nbrAstej2 ++;
  }
}
//2

//3
class ballej3 {
  float x, y;
  float vit = 4;
  float dir = 0;
  int num;
  float lg = 0, ld = 700, lh = 0, lb = 700;
  ballej3(float px, float py, float dire, int n) {
    x= px;
    y = py;
    dir = dire;
    num = n;
  }

  void bal() {
    if (x-10 < lg ) {
      x = 10;
      if (dir >= 0) {
        dir = PI/2+(PI/2-acos(cos(dir)));
      } else {
        dir = -(PI/2+(PI/2-acos(cos(dir))));
      }
    } else if (x+10 > ld) {
      x = 690;
      if (dir >= 0) {
        dir = PI/2+(PI/2-acos(cos(dir)));
      } else {
        dir = -(PI/2+(PI/2-acos(cos(dir))));
      }
    }
    if (y-10 < lh ) {
      y = 10;
      dir = -dir;
    } else if ( y+10 > lb) {
      y = 690;
      dir = -dir;
    }

    for (int i = num+1; i < nbrBallej3; i ++) {
      if (dista(ballesj3[i].x, ballesj3[i].y) < 20) {
        dir += PI/2;
        ballesj3[i].dir = ballesj3[i].dir+PI/2;
        x += cos(dir)*(20-dista(ballesj3[i].x, ballesj3[i].y));
        y += sin(dir)*(20-dista(ballesj3[i].x, ballesj3[i].y));
        ballesj3[i].x += cos(dir)*(20-dista(ballesj3[i].x, ballesj3[i].y));
        ballesj3[i].y += sin(dir)*(20-dista(ballesj3[i].x, ballesj3[i].y));
      }
    }
    x += cos(dir)*vit;
    y += sin(dir)*vit;
    stroke(255, 0, 0);
    fill(100);
    ellipse(x, y, 20, 20);
  }

  float dista(float px, float py) {
    float dx = px-x;
    float dy = py-y;
    return sqrt(dx*dx+dy*dy);
  }
}
//3

//7
String changeChar7(String chaineBase, int numChar, char nouvChar) {
  String nouvChaine = "";

  for (int i = 0; i < chaineBase.length(); i ++) {
    if (i == numChar) {
      nouvChaine += nouvChar;
    } else {
      nouvChaine += chaineBase.charAt(i);
    }
  }

  return nouvChaine;
}
//7

//10
class balle10 {
  float px, py;
  float vx = 0, vy = 0;
  balle10(float posIx, float posIy) {
    px = posIx;
    py = posIy;
  }
  void affichage() {
    fill(255, 50, 50);
    ellipse(px, py, 10, 10);
  }
  void depla() {
    if (mousePressed == true && mouseButton == LEFT) {
      float dx = mouseX-px;
      float dy = mouseY-py;
      float angle = atan2(dx, dy);
      vx += sin(angle)*0.5;
      vy += cos(angle)*0.5;
    }
    vx = vx*0.9999;
    vy = vy*0.9999;
    px += vx;
    py += vy;
  }
}
//10

//12
int detectCV12(int pcx, int pcy) {
  int cv = 0;

  int g = pcx-1, d = pcx+1;
  int h = pcy-1, b = pcy+1;

  if (pcx == 0) {
    g = nbrCasesX12-1;
  }
  if (pcy == 0) {
    h = nbrCasesY12-1;
  }
  if (pcx == nbrCasesX12-1) {
    d = 0;
  }
  if (pcy == nbrCasesY12-1) {
    b = 0;
  }

  if (cases12[g][h]) {
    cv ++;
  }
  if (cases12[pcx][h]) {
    cv ++;
  }
  if (cases12[d][h]) {
    cv ++;
  }
  if (cases12[g][b]) {
    cv ++;
  }
  if (cases12[pcx][b]) {
    cv ++;
  }
  if (cases12[d][b]) {
    cv ++;
  }
  if (cases12[g][pcy]) {
    cv ++;
  }
  if (cases12[d][pcy]) {
    cv ++;
  }

  return cv;
}
//12

//14
class Camera14 {
  PVector pos; //Camera's position 
  float nmMpG;
  int plus;
  Camera14() {
    pos = new PVector(0, 0, 0);
  }
  void draw() {
    for (int p = 0; p <= nbrP14-2; p++) {
      if (p >0) {
        if (nmMpG < masse14[p]) {
          nmMpG = masse14[p];
          plus = p;
        }
      } else {
        nmMpG = masse14[0];
        plus = 0;
      }
    }
    fill(225, 15, 15);
    //TouchesCam(pos.y,pos.x,pos.z);
    if (keyPressed == true) {
      if (key == '-') {
        pos.z += 5;
        //println("dézoom");
      }
      if (key == '+') {
        pos.z -= 5;
        //println("zoom");
      }
      if (key == 'q') {
        pos.x -= 5;
      }
      if (key == 'd') {
        pos.x += 5;
        //println("zoom");
      }
      if (key == 'z') {
        pos.y -= 5;
        //println("zoom");
      }
      if (key == 's') {
        pos.y += 5;
        //println("zoom");
      }
      if (key == 'o') {
        pos.y = 0;
        pos.x = 0;
      }
    }
    if (SuivreG14 == true) {
      pos.y = y14[plus] - height/2;
      pos.x = x14[plus] - width/2;
    }
    indication14(pos.y, pos.x, pos.z);
  }
}
//14

//15
class ver15 {
  int x, y;
  int pos = 0;
  boolean actif = true;

  ver15(int px, int py) {
    x = px;
    y = py;
  }

  void deplaVer() {
    if (actif == true) {
      pos = y*width+x;
      loadPixels();
      int r = int(random(0, 4));

      if (pixels[pos-1] == c15 && pixels[pos-2] == c15 && pixels[pos+1] == c15 && pixels[pos+2] == c15 && pixels[pos-700] == c15 && pixels[pos-1000] == c15 && pixels[pos+700] == c15 && pixels[pos+1000] == c15) {
        actif = false;
      }

      if (r == 0 && x > 1) { // gauche
        if (pixels[pos-1] != c15 && pixels[pos-2] != c15) {
          pixels[pos-1] = c15;
          x --;
          appa15(prcR15, x, y);
        }
      } else if (r == 1 && x < width-2) { // droite
        if (pixels[pos+1] != c15 && pixels[pos+2] != c15) {
          pixels[pos+1] = c15;
          x ++;
          appa15(prcR15, x, y);
        }
      } else if (r == 2 && y > 1) { // haut
        if (pixels[pos-width] != c15 && pixels[pos-width*2] != c15) {
          pixels[pos-width] = c15;
          y --;
          appa15(prcR15, x, y);
        }
      } else if (r == 3 && y < height-2) { // bas
        if (pixels[pos+width] != c15 && pixels[pos+width*2] != c15) {
          pixels[pos+width] = c15;
          y ++;
          appa15(prcR15, x, y);
        }
      }
      updatePixels();
    }
  }
}
//15

//16
class Star16 {
  float Sx, Sy, Sv, tx;
  Star16(float xs, float ys, float vs) {
    Sx = xs;
    Sy = ys;
    Sv = vs;
    tx = random(1, 5);
  }
  void deplaS() {
    Sx += Sv;
    noStroke();
    fill(255);
    ellipse(Sx, Sy, tx, tx);
    if (Sx < -5) {
      Sx = random(1500, 1600);
      Sy = random(10, 740);
      Sv = random(-0.2, 0);
    }
  }
}
class Enemis16 {
  float xE, yE, vE;
  boolean actif = true;
  Enemis16(float xe, float ye, float ve) {
    xE=xe;
    yE=ye;
    vE=ve;
  }

  void deplaff() {
    if (actif == false) {
      if (score13 > 20) {
        xE = random(2500, 10000/(score13/50.0));
        vE = random(0.2, 5+(score13/20));
      } else if (score13 > 60) {
        xE = random(2000, 8000);
        vE = random(0.1, 8);
      } else {
        xE = random(3000, 7000);
        vE = random(0.1, 5);
      }
      yE = random(10, 740);
      actif = true;
    }
    xE -= vE+vitesseDepla16;
    if (xE < 0) {
      actif = false;
      invasion16 ++;
    }
    if (xE < 700) {
      int touche = 0;
      for (int i = int(xE); i < xE+50; i++) {
        if ( m16*xE+p16 > yE && m16*xE+p16 < yE+50) {
          //actif = false;
          //score ++;
          touche ++;
        }
      }
      if (touche > 0) {
        actif = false;
        score13 ++;
      }
    }
    if ( xE > 200 && xE < 300 && yE > y16 && yE < y16+40) {
      vie16 --;
      actif = false;
    }
    //rect(xE,yE,50,50);
    image(monster16, xE, yE, 50, 50);
  }
}
//16

//20
class orbit20 {
  float vit = 0.05;
  float rg = 40;//diametre
  float rp = 8;
  float rot = 0;
  float x, y;
  orbit20(float rotb, float px, float py) {
    rot = rotb;
    x = px;
    y = py;
  }

  void orb() {
    pushMatrix();
    stroke(0);
    translate(x, y);
    rotate(rot);
    fill(0);
    ellipse(rg/2, 0, rp, rp);
    rot += vit;
    popMatrix();
  }

  float px() {
    return x+cos(rot)*rg/2;
  }

  float py() {
    return y+sin(rot)*rg/2;
  }
}
//20

//23
class Planete23 {
  float posX, posY;
  int taille = 5;
  float VitX, VitY;
  float multi = 0.03;
  float ral = 0.01;
  Planete23(int x, int y) {
    posX = x;
    posY = y;
  }

  void depla() {
    noStroke();
    fill(200, 50, 50);
    ellipse(posX, posY, taille, taille);
    if (mousePressed == true) {
      float dx = mouseX-posX;
      float dy = mouseY-posY;
      float angle = atan2(dx, dy);
      VitX += multi*sin(angle);
      VitY += multi*cos(angle);
    } else {
      if (VitX < -0.2) {
        VitX += ral;
      } else if (VitX > 0.2) {
        VitX -= ral;
      } else {
        VitX = 0;
      }
      if (VitY < -0.2) {
        VitY += ral;
      } else if (VitY > 0.2) {
        VitY -= ral;
      } else {
        VitY = 0;
      }
    }
    posX += VitX;
    posY += VitY;
  }
}
//23

//30
class asteo30 {
  float xA, yA, xt, yt, vitya;

  asteo30() {
    xt = random(20, 150);
    yt = random(20, 150);
    xA = random(30, 670-xt);
    yA = random(-50-yt, -1000-yt);
    vitya = random(2, 6.5);
  }

  void deplaff() {
    image(asteoI30, xA, yA, xt, yt);
    yA += vitya;
    if (yA > 710) {
      xt = random(20, 150);
      yt = random(20, 150);
      xA = random(30, 670-xt);
      yA = random(-50-yt, -1000-yt);
      vitya = random(2, 6.5);
      
    }
    if( toucheJ(xV30,yV30)+toucheJ(xV30+50,yV30)+toucheJ(xV30,yV30+70)+toucheJ(xV30+50,yV30+70) > 0 && cligno30 == false){
      vie30 --;
      cligno30 = true;
    }
  }
  
  int toucheJ(float pxJ,float pyJ){
    int touche = 0;
    if(pxJ > xA && pxJ < xA+xt && pyJ > yA && pyJ < yA+yt){
      touche ++;
    }
    return touche;
    
  }
}
//30

//32
class colone32{
  float nbrChar = ((float)height/ texte32.length()) +2;
  char let[] = new char[int(nbrChar)];
  float py[] = new float[int(nbrChar)];
  float vit;
  int nuM;
  colone32(int num){
    for(int i = 0; i < int(nbrChar) ; i ++){
      let[i] = lettres32[int(random(0,27))];
      py[i] = (-2+i)*(texte32.length()+2);
      vit = random(3,15);
    }
    nuM = num;
  }
  
  void affC(float x){
    fill(0);
    for(int i = 0; i < int(nbrChar) ; i ++){
      text(let[i],x,py[i]);
      py[i] += vit;
      if(py[i] > height){
        py[i] = -2*tailleChar32;
      }
      if((nuM+1) <= texte32.length() ){
        if(let[i] == texte32.charAt(nuM) && py[i] > 250-vit && py[i] < 250+vit){
          vit = 0;
          
          float diff = 250-py[i];
          for(int j = 0; j < int(nbrChar) ; j ++){
            py[j] += diff;
          }
        }
      }
      if(vit > 0){
        let[i] = lettres32[int(random(0,27))];
      }
    }
  }
}
//32
