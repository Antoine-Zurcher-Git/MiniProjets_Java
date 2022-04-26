// jeu 4
void deplaj4() {
  if (touches[37] || touches[81]) {
    xj4 -= Vitj4;
  }
  if (touches[39] || touches[68]) {
    xj4 += Vitj4;
  }
  if (touches[38] || touches[90]) {
    yj4 -= Vitj4;
  }
  if (touches[40] || touches[83]) {
    yj4 += Vitj4;
  }
}
void Murj4() {
  if (yj4 < 0) {
    yj4 = 0;
  } else if (yj4 > 460) {
    yj4 = 460;
  }
  if (xj4 < 0) {
    xj4 = 0;
  } else if (xj4 > 460) {
    xj4 = 460;
  }
  if (xBar1j4 <= -70) {
    xBar1j4 = 600;
    for (int k = 0; k <= 6; k ++) {
      EnBar1j4[k] = false;
    }
    EnBar1j4[int(random(0, 6.4))] = true;
    VitEj4 += 0.2;
    scorej4 ++;
  }
  if (xBar2j4 <= -70) {
    xBar2j4 = 600;
    for (int k = 0; k <= 6; k ++) {
      EnBar2j4[k] = false;
    }
    EnBar2j4[int(random(0, 6.4))] = true;
    VitEj4 += 0.1;
    scorej4 ++;
  }
}
void CollisionBoxj4() {
  if (xj4+40 >= xBar1j4+10 && xj4+40 <= xBar1j4+60) {
    for (int l = 0; l <= 6; l ++) {
      if (EnBar1j4[l] == true) {
        if (yj4 > l*70 && yj4 < (l*70)+70) {
        } else {
          jeuj4 = false;
          mortj4 = true;
        }
      }
    }
  }
  if (xj4+40 >= xBar2j4+10 && xj4+40 <= xBar2j4+60) {
    for (int m = 0; m <= 6; m ++) {
      if (EnBar2j4[m] == true) {
        if (yj4 > m*70 && yj4 < (m*70)+70) {
        } else {
          jeuj4 = false;
          mortj4 = true;
        }
      }
    }
  }
}
void Dessinj4() {
  fill(200);
  textSize(27);
  text("Score : "+scorej4, 10, 30);
  noStroke();
  for (int i = 0; i <= 6; i++) {
    if (EnBar1j4[i] == true) {
      fill(100, 200, 100);
      rect(xBar1j4, (i*70)+(2*i), 70, 70);
    } else {
      fill(200, 100, 100);
      ellipse(xBar1j4+35, (i*70)+35+(2*i), 70, 70);
    }
  }
  xBar1j4 -= VitEj4;
  for (int j = 0; j <= 6; j++) {
    if (EnBar2j4[j] == true) {
      fill(100, 200, 100);
      rect(xBar2j4, (j*70)+(2*j), 70, 70);
    } else {
      fill(200, 100, 100);
      ellipse(xBar2j4+35, (j*70)+35+(2*j), 70, 70);
    }
  }
  xBar2j4 -= VitEj4;
  fill(100, 100, 200);
  triangle(xj4, yj4, xj4, yj4+40, xj4+40, yj4+20);
}
//jeu 4

//jeu 5
void affj5() {
  for (int g = 0; g <= 4; g++) {
    if (visj5[g] == true) {
      image(ciblej5, xCj5[g], yCj5[g], 106, 150);
    }
  }
}
void corPosj5() {
  for (int i = 0; i <= 4; i++) {
    for (int j = 0; j <= 4; j++) {
      if (xCj5[i] > xCj5[j] && xCj5[i] < xCj5[j]+106 && i != j && yCj5[i] > yCj5[j] && yCj5[i] < yCj5[j]+150) {
        xCj5[i] = random(10, 500);
        yCj5[i] = random(10, 500);
      }
      if (xCj5[i]+106 > xCj5[j] && xCj5[i]+106 < xCj5[j]+106 && i != j && yCj5[i] > yCj5[j] && yCj5[i] < yCj5[j]+150) {
        xCj5[i] = random(10, 500);
        yCj5[i] = random(10, 500);
      }
    }
  }
}
void viseurj5() {
  fill(20);
  stroke(20);
  line(mouseX, mouseY, mouseX-35, mouseY);
  line(mouseX, mouseY, mouseX+35, mouseY);
  line(mouseX, mouseY, mouseX, mouseY-35);
  line(mouseX, mouseY, mouseX, mouseY+35);
  noFill();
  ellipse(mouseX, mouseY, 20, 20);
  ellipse(mouseX, mouseY, 50, 50);
}
void tempsj5() {
  if (tempsj5 > tempsEj5 + tempsSj5) {
    tempsSj5 = tempsj5;
    int s = int(random(0, 5));
    for (int i = 0; i <= 4; i++) {
      if ( visj5[s] == true) {
        s = int(random(0, 5));
      }
    }
    visj5[s] = true;
    tempsEj5 = random(tempsMij5, tempsMaj5);
  }
}
//jeu 5

//jeu 6
void Cubej6() {
  noStroke();
  fill(Couleurj6[0], Couleurj6[1], Couleurj6[2]);
  rect(xj6, yj6, 30, 30);
  rect(150, 10, 30, 30);
  fill(Couleurj6[3], Couleurj6[4], Couleurj6[5]);
  rect(x1j6, y1j6, 30, 30);
  fill(Couleurj6[6], Couleurj6[7], Couleurj6[8]);
  rect(x22j6, y22j6, 30, 30);
  fill(Couleurj6[9], Couleurj6[10], Couleurj6[11]);
  rect(x3j6, y3j6, 30, 30);
  fill(Couleurj6[12], Couleurj6[13], Couleurj6[14]);
  rect(x4j6, y4j6, 30, 30);
  fill(Couleurj6[15], Couleurj6[16], Couleurj6[17]);
  rect(x5j6, y5j6, 30, 30);
}
//jeu 6

//jeu 7
void Cry7() {
  textCry7 = text7;//.toUpperCase()
  for (int i = 0; i < textCry7.length(); i ++) {
    int charAsc = int(textCry7.charAt(i));
    charAsc += i+1;
    String nouvT = changeChar7(textCry7, i, char(charAsc));
    textCry7 = nouvT;
  }
}
//jeu 7

//jeu 8
void Colli8() {
  for (int i = 0; i <= 70; i++) {
    if (x8+35-i >= xBar18 && x8+35-i <= xBar18+10 && y8-15 < yBar18) {
      score8 = 0;
    } else if (x8+35-i >= xBar18 && x8+35-i <= xBar18+10 && y8-15 > yBar18+150) {
      score8 = 0;
    }
  }
  for (int j = 0; j <= 70; j++) {
    if (x8+35-j >= xBar18 && x8+35-j <= xBar18+10 && y8+15 < yBar18) {
      score8 = 0;
    } else if (x8+35-j >= xBar18 && x8+35-j <= xBar18+10 && y8+15 > yBar18+150) {
      score8 = 0;
    }
  }

  for (int k = 0; k <= 70; k++) {
    if (x8+35-k >= xBar18 && x8+35-k <= xBar18+10 && y8-15 < yBar18) {
      score8 = 0;
    } else if (x8+35-k >= xBar18 && x8+35-k <= xBar18+10 && y8-15 > yBar18+150) {
      score8 = 0;
    }
  }
  for (int l = 0; l <= 70; l++) {
    if (x8+35-l >= xBar18 && x8+35-l <= xBar18+10 && y8+15 < yBar18) {
      score8 = 0;
    } else if (x8+35-l >= xBar18 && x8+35-l <= xBar18+10 && y8+15 > yBar18+150) {
      score8 = 0;
    }
  }
}
void Dessin8() {
  noStroke();
  fill(100, 100, 200);
  rect(xBar18, 0, 10, yBar18);
  rect(xBar28, 0, 10, yBar28);
  rect(xBar18, yBar18+150, 10, 500-(yBar18+150));
  rect(xBar28, yBar28+150, 10, 500-(yBar28+150));
  fill(200, 100, 100);
  ellipse(x8, y8, 30, 30);
  textSize(30);
  fill(230);
  text("Score : "+score8, 10, 30);
  text("Best : "+Meilscore8, 360, 30);
}

void Depla8() {
  if (keyPressed == true) {
    if (key == ' ' && saut8 == false ) {
      saut8 = true;
    }
  }

  if (saut8 == false) {
    y8 += Grav8;
  } else if (saut8 == true) {
    y8 -= Vit8;
    Vit8 -= 1;
    if (Vit8 <= -Grav8+3) {
      saut8 = false;
      Vit8 = 10;
    }
  }
}
void DeplaBar8() {
  xBar18 -= VitE8;
  xBar28 -= VitE8;
  if (xBar18 < -10) {
    xBar18 = 600;
    yBar18 = random(150, 350);
    score8 ++;
  }
  if (xBar28 < -10) {
    xBar28 = 600;
    yBar28 = random(150, 350);
    score8 ++;
  }
}


void Mur8() {
  if (y8+15 > 500) {
    y8 = 485;
    score8 = 0;
  } else if (y8-15 < 0) {
    y8 = 15;
  }
}
//jeu 8

//jeu 9
void restart9() {
  x9 = random(100, 600);
  y9 = 50;
  rot9 = random(-PI/9.0, PI/9.0);
  float forceD = random(0.1, 2);
  vitx9 = cos(rot9+PI/2.0)*(forceD);
  vity9 = sin(rot9+PI/2.0)*(forceD);
  pose9 = false;
  crash9 = false;
  etat9 = 0;
  fuel9 = 100;
}

void fuse9(float px, float py, boolean flame) {
  pushMatrix();
  pushStyle();
  fill(0);
  stroke(255);

  translate(px+15, py+60);
  rotate(rot9);
  translate(-(px+15), -(py+60));

  translate(px, py);
  triangle(0, 0, 30, 0, 15, -40);
  rect(0, 0, 30, 120);
  triangle(-20, 120, 0, 120, 0, 70);
  triangle(50, 120, 30, 120, 30, 70);
  strokeWeight(4);
  line(0, 120, -20, 140);
  line(30, 120, 50, 140);
  if (flame == true) {
    strokeWeight(7);
    stroke(240, 27, 27);
    fill(242, 165, 22);
    arc(15, 120, 30, 30, 0, PI, OPEN);
  }
  popStyle();
  popMatrix();
}
//jeu 9

//jeu 11
void apparition11() {
  if (Temps11 >= 15) {
    secondB11[0] = true;
  }
  if (Temps11 >= 30) {
    secondB11[1] = true;
  }
  if (Temps11 >= 45) {
    secondB11[2] = true;
  }
  if (Temps11 >= 60) {
    secondB11[3] = true;
  }
  if (Temps11 >= 75) {
    secondB11[4] = true;
  }
  if (Temps11 >= 90) {
    secondB11[5] = true;
  }
  if (Temps11 >= 105) {
    secondB11[6] = true;
  }
  if (Temps11 >= 120) {
    secondB11[7] = true;
  }
  if (Temps11 >= 135) {
    secondB11[8] = true;
  }
  if (Temps11 >= 150) {
    secondB11[9] = true;
  }
}

void mort11() {
  if (invincibilit11 == false) {
    vie11--;
    invincibilit11 = true;
    tempsSau11 = tempsMili11;
  }
}

void IA11 () {
  float xBC = xB11+15;
  float yBC = yB11+15;
  float xRC = x11+15;
  float yRC = y11+15;

  float xBRS = xRC-xBC;
  float yBRS = yRC-yBC;


  if (xBRS < 1.5 && xBRS > -1.5 && yBRS < 1.5 && yBRS > -1.5) {
    // ne change pas xBRS ni yBRS
  } else if (xBRS > 1.5) {
    if (xBRS > yBRS) {
      // xBRS le plus grand
      yBRS = yBRS*1.5/xBRS;
      xBRS = 1.5;
    } else {
      // yBRS le plus grand
      xBRS = xBRS*1.5/yBRS;
      yBRS = 1.5;
    }
  } else if (xBRS < -1.5) {
    if (xBRS < yBRS) {
      // xBRS le plus petit
      yBRS = yBRS*-1.5/xBRS;
      xBRS = -1.5;
    } else {
      // yBRS le plus petit
      xBRS = xBRS*-1.5/yBRS;
      yBRS = -1.5;
    }
  } else if (yBRS > 1.5) {
    if (xBRS > yBRS) {
      // xBRS le plus grand
      yBRS = yBRS*1.5/xBRS;
      xBRS = 1.5;
    } else {
      // yBRS le plus grand
      xBRS = xBRS*1.5/yBRS;
      yBRS = 1.5;
    }
  } else if (yBRS < -1.5) {
    if (xBRS < yBRS) {
      // xBRS le plus petit
      yBRS = yBRS*-1.5/xBRS;
      xBRS = -1.5;
    } else {
      // yBRS le plus petit
    }
  }
  if (yBRS > 1.5) {
    yBRS = 1.5;
  }
  if (yBRS < -1.5) {
    yBRS = -1.5;
  }

  xVB11 = xBRS;
  yVB11 = yBRS;
  xB11 = xB11 + xVB11;
  yB11 = yB11 + yVB11;
}

void IA211 () {
  for (int loop2 = 0; loop2 < 9; loop2++ ) {
    if ( ( (millis()/100) % 3) == 0) {
      xVBI11[loop2] = random(-2, 2);
      yVBI11[loop2] = random(-2, 2);
      // nbre pair
    } else {
      // nbre impair
    }
    xBI11[loop2] = xBI11[loop2] + xVBI11[loop2];
    yBI11[loop2] = yBI11[loop2] + yVBI11[loop2];
    if (xBI11[loop2] > 370 || xBI11[loop2] < 0 || yBI11[loop2] > 370 || yBI11[loop2] < 0) {
      xBI11[loop2] = 200;
      yBI11[loop2] = 200;
    }
  }
}




void Limite11() {
  if (x11 > 370) {
    x11 = 369;
    mort11();
  } else if (x11 <= 1) {
    x11 = 1;
    mort11();
  }
  if (y11 > 370) {
    y11 = 369;
    mort11();
  } else if (y11 <= 1) {
    y11 = 1;
    mort11();
  }
}

void nettoyer11() {
  background(20, 20, 20);
}

void rectV11() {
  noStroke();


  //fill(160,160,160);
  //rect(175,0,50,400);
  if (clino11 == false) {
    fill(117, 215, 117);
    rect(x11, y11, 30, 30);

    fill(250, 250, 250);
    textSize(35);
  }
  fill(250, 250, 250);
  text("Vies : " + vie11, 10, 35);
  text("Score : "+tempsMili11, 180, 35);

  fill(254, 199, 78);
  rect(xB11, yB11, 30, 30);

  for (int loop = 0; loop < 9; loop++ ) {
    if (secondB11[loop] == true) {
      fill(111, 85, 203);
      rect(xBI11[loop], yBI11[loop], 30, 30);
    }
  }
  if (x11 >= xB11 && x11 <= xB11+30) {
    if (y11 >= yB11 && y11 <= yB11+30) {
      mort11();
    }
    if (y11+30 >= yB11 && y11+30 <= yB11+30) {
      mort11();
    }
  }
  if (x11+30 >= xB11 && x11+30 <= xB11+30) {
    if (y11 >= yB11 && y11 <= yB11+30) {
      mort11();
    }
    if (y11+30 >= yB11 && y11+30 <= yB11+30) {
      mort11();
    }
  }
  for (int loop3 = 0; loop3 <= 9; loop3++) {

    if (secondB11[loop3] == true) {
      if (x11 >= xBI11[loop3] && x11 <= xBI11[loop3]+30) {
        if (y11 >= yBI11[loop3] && y11 <= yBI11[loop3]+30) {
          mort11();
        }
        if (y11+30 >= yBI11[loop3] && y11+30 <= yBI11[loop3]+30) {
          mort11();
        }
      }
      if (x11+30 >= xBI11[loop3] && x11+30 <= xBI11[loop3]+30) {
        if (y11 >= yBI11[loop3] && y11 <= yBI11[loop3]+30) {
          mort11();
        }
        if (y11+30 >= yBI11[loop3] && y11+30 <= yBI11[loop3]+30) {
          mort11();
        }
      }
    }
  }
}

void Deplacement11() {
  if (touches[37] || touches[81]) {
    x11 = x11 -6.5;
  }
  if (touches[39] || touches[68]) {
    x11 = x11 + 6.5;
  }
  if (touches[38] || touches[90]) {
    y11 = y11 - 6.5;
  }
  if (touches[40] || touches[83]) {
    y11 = y11 + 6.5;
  }
}

//jeu 11

//jeu 12
void chargStructure12() { // type de structure : canon,vaisseau,stable,instable
  explosif12 = loadStrings("explosif.txt");// instable
  pong12 = loadStrings("pong.txt");//stable
  pulsar12 = loadStrings("pulsar.txt");//stable
  vaisseau12 = loadStrings("vaisseau.txt");//vaisseau
  bombardier12 = loadStrings("bombardier.txt");//vaisseau
  canonABombardier12 = loadStrings("canonBombardier.txt");//canon
  ship12 = loadStrings("ship.txt");//vaisseau
  spaceship12 = loadStrings("spaceship.txt");//vaisseau
  spider12 = loadStrings("spider.txt");//vaisseau
  vaisseau212 = loadStrings("vaisseau2.txt");//vaisseau
  vaisseau312 = loadStrings("vaisseau3.txt");//vaisseau
  vaisseau412 = loadStrings("vaisseau4.txt");//vaisseau
  vaisseau512 = loadStrings("vaisseau5.txt");//vaisseau
  wingSpaceship12 = loadStrings("wingSpaceship.txt");//vaisseau
  destru12 = loadStrings("destruction.txt");// instable
  tourne12 = loadStrings("tourne.txt");// stable
  recta12 = loadStrings("recta.txt");//stable
  Acorn12 = loadStrings("Acorn.txt");//instable
  madeIn12 = loadStrings("madeIn.txt");//instable
  mi12 = loadStrings("mi.txt");//sable
  test12 = loadStrings("test.txt");
}

void posBlock12() {
  t12 ++;

  int px = int((mouseX/taille12)/10+posCX12/10);
  int py = int((mouseY/taille12)/10+posCY12/10);
  if (px > 499) {
    px = 499;
  }
  if (py > 499) {
    py = 499;
  }
  if (px < 0) {
    px = 0;
  }
  if (py < 0) {
    py = 0;
  }

  int lgS = 550;
  if (affMenu12 == false) {
    lgS = 800;
  }

  int oui = 0;
  if (mouseX > lgS) {
    oui ++;
  }
  if (demiBlock12 == true) {
    int axp = px%2;
    int ayp = py%2;
    if (axp != ayp) {
      oui++;
    }
  }

  if (mousePressed == true && mouseButton == LEFT && oui == 0) {
    if (posCel12 == true) {
      cases12[px][py] = true;
    } else {
      cases12[px][py] = false;
    }
  }
  if (mousePressed == true && mouseButton == RIGHT && oui == 0) {
    if (posCel12 == false) {
      cases12[px][py] = true;
    } else {
      cases12[px][py] = false;
    }
  }

  //if(touches[67]){creaStructure(canonABombardier,px,py,retourGD,retourHB);} // c
  //if(touches[86]){creaStructure(vaisseau,px,py,retourGD,retourHB);}// v
  //if(touches[66]){creaStructure(bombardier,px,py,retourGD,retourHB);}// b
  //if(touches[78]){creaStructure(pulsar,px,py,retourGD,retourHB);}// n
  //if(touches[88]){creaStructure(explosif,px,py,retourGD,retourHB);}// x
  if (touches[70]) {
    creaStructure12(test12, px, py, retourGD12, retourHB12);
  }// f
  if (touches[71]) {
    creaStructure12(structure12, px, py, retourGD12, retourHB12);
  }// g

  if (touches[67]) {
  }
}

void touche12() {
  t212 ++;
  t312 ++;
  t412 ++;

  if (touches[32] == true && t212 > 0.2*frameRate) {
    if (crea12 == true) {
      crea12 = false;
    } else {
      crea12 = true;
    }
    t212 = 0;
  } // espace
  if (touches[80]) {
    nettoyer12();
  }// p
  if (touches[77] && t312 > 0.2*frameRate) {
    if (affMenu12 == true) {
      affMenu12 = false;
    } else {
      affMenu12 = true;
    }
    t312 = 0;
  }//m
  if (touches[73] && t412 > 0.2*frameRate) {
    if (info12 == true) {
      info12 = false;
    } else {
      info12 = true;
    }
    t412 = 0;
  }
  //println(keyCode);
}

void nettoyer12() {
  for (int i = 0; i < nbrCasesX12; i ++) {
    for (int j = 0; j < nbrCasesY12; j ++) {
      cases12[i][j] = false;
    }
  }
}


void deplaCam12() {
  float addi = 5;
  if (touches[37] || touches[81]) {
    posCX12 -= addi*(1/taille12)+addi;
  }
  if (touches[38] || touches[90]) {
    posCY12 -= addi*(1/taille12)+addi;
  }
  if (touches[39] || touches[68]) {
    posCX12 += addi*(1/taille12)+addi;
  }
  if (touches[40] || touches[83]) {
    posCY12 += addi*(1/taille12)+addi;
  }
  //if(posCX < 0){posCX = 0;}
  //if(posCY < 0){posCY = 0;}
  //if(posCX > nbrCasesX*10-500){posCX = nbrCasesX*10-500;}
  //if(posCY > nbrCasesY*10-500){posCY = nbrCasesY*10-500;}
  translate(-posCX12, -posCY12);
}

void affichage12() {

  float mx2 = nbrCasesX12;
  float my2 = nbrCasesY12;

  if (posCX12+700/taille12 < (nbrCasesX12)*10) {
    mx2 = (posCX12+700/taille12)/10;
  }
  if (posCY12+700/taille12 < (nbrCasesY12)*10) {
    my2 = (posCY12+700/taille12)/10;
  }

  noStroke();
  for (int i = 0; i < mx2; i ++) {
    for (int j = 0; j < my2; j ++) {
      if (cases12[i][j] == true) {
        fill(0);
        rect(i*10, j*10, 10, 10);
      } else {
        fill(255);
        rect(i*10, j*10, 10, 10);
      }
    }
  }
  stroke(0);
  strokeWeight(2);
  line(0, 0, nbrCasesX12*10, 0);
  line(0, 0, 0, nbrCasesY12*10);
  line(nbrCasesX12*10, nbrCasesY12*10, nbrCasesX12*10, 0);
  line(nbrCasesX12*10, nbrCasesY12*10, 0, nbrCasesY12*10);

  strokeWeight(0.1);
  stroke(100);

  float add = 1;
  float mx = nbrCasesX12;
  float my = nbrCasesY12;
  if ((1/taille12) >= 1 && ttGrilleaff12 == false) {
    add = (1/taille12);
  }
  if (posCX12+700/taille12 < (nbrCasesX12+1)*10) {
    mx = (posCX12+700/taille12)/10;
  }
  if (posCY12+700/taille12 < (nbrCasesY12+1)*10) {
    my = (posCY12+700/taille12)/10;
  }
  //posCX+500/taille
  for (int i = 0; i < mx; i += add) {
    line(i*10, 0, i*10, my*10);
  }
  for (int i = 0; i < my; i += add) {
    line(0, i*10, mx*10, i*10);
  }

  if (affMenu12 == true) {
    pushMatrix();
    translate(posCX12-100, posCY12);
    scale(1/taille12);
    strokeWeight(3);
    stroke(20);
    fill(255);
    rect(650, 0, 150, 500);

    if (crea12 == true) {
      fill(250);
      rect(650, 110, 150, 45);//-------------------------------------------
      fill(200);
      rect(650, 0, 150, 30);
    } else {
      fill(200);
      rect(650, 110, 150, 45);//-------------------------------------------
      fill(250);
      rect(650, 0, 150, 30);
    }

    fill(0);
    rect(650, 125+30, 75, 75);//-------------------------------------------
    fill(255);
    rect(650+75, 125+30, 75, 75);//-------------------------------------------

    if (demiBlock12 == true) {
      fill(250);
      rect(650, 125+105, 150, 30);//-------------------------------------------
    } else {
      fill(200);
      rect(650, 125+105, 150, 30);//-------------------------------------------
    }

    fill(200);
    rect(675, 30, 100, 50);
    fill(250);
    rect(650, 30, 25, 50);
    rect(775, 30, 25, 50);
    line(675, 30, 655, 55);
    line(775, 30, 795, 55);
    line(675, 80, 655, 55);
    line(775, 80, 795, 55);

    fill(200);
    rect(650, 125+135, 150, 30);//-------------------------------------------

    if (retourHB12 == true) {
      fill(250);
      rect(650, 125+165, 75, 30);//-------------------------------------------
    } else {
      fill(200);
      rect(650, 125+165, 75, 30);//-------------------------------------------
    }

    if (retourGD12 == true) {
      fill(250);
      rect(650+75, 125+165, 75, 30);//-------------------------------------------
    } else {
      fill(200);
      rect(650+75, 125+165, 75, 30);//---------------------------------------------------------------------
    }

    fill(200);
    rect(650, 380, 150, 30);
    rect(650, 410, 150, 30);
    rect(650, 350, 150, 30);
    rect(650, 440, 150, 30);

    switch(strS12) {
      case(0):
      fill(250);
      rect(650, 350, 150, 30);
      break;
      case(1):
      fill(250);
      rect(650, 380, 150, 30);
      break;
      case(2):
      fill(250);
      rect(650, 410, 150, 30);
      break;
      case(3):
      fill(250);
      rect(650, 440, 150, 30);
      break;
    }
    if (ttGrilleaff12 == false) {
      fill(200);
      rect(650, 80, 150, 30);
    } else {
      fill(250);
      rect(650, 80, 150, 30);
    }
    fill(250);
    rect(650, 320, 150, 30);
    rect(650, 470, 150, 30);

    line(650, 350, 725, 320);
    line(800, 350, 725, 320);

    line(650, 470, 725, 500);
    line(800, 470, 725, 500);

    textSize(20);
    fill(0);
    text("Créatif", 695, 150);
    text("Jouer", 695, 22);
    text("1/2 blocks", 675, 255);
    text("FPS : "+fr12, 690, 65);
    text("Nettoyer", 685, 280);
    if (posCel12 == true) {
      fill(255);
      text("Gauche", 655, 200);
      fill(0);
      text("Droit", 655+75, 200);
    } else {
      fill(255);
      text("Droit", 655, 200);
      fill(0);
      text("Gauche", 655+75, 200);
    }
    text("G|D", 670, 310);
    text("H|B", 670+75, 310);
    text("Vaisseau : "+Va12, 670, 402);
    text("Canon : "+Ca12, 675, 372);
    text("Stable : "+Sa12, 680, 432);
    text("Instable : "+Ia12, 670, 462);
    text("Grille taille r", 665, 102);

    popMatrix();
  }

  if (info12 == true) {
    pushMatrix();
    translate(posCX12, posCY12);
    scale(1/taille12);
    translate(10, 360);

    strokeWeight(1.5);
    stroke(100);
    fill(230, 230, 230, 100);
    rect(-10, -20, 155, 160);

    fill(0);
    textSize(13);
    text("g: structure", 0, 0);
    text("m: Affichage du menu", 0, 15);
    text("p: Nettoyer", 0, 30);
    text("espace: créatif", 0, 45);
    text("zqsd: déplacement", 0, 60);
    text("scrool: dé/zoom", 0, 75);
    text("écran x : "+taille12, 0, 90);
    text("FPS : "+int(frameRate), 0, 105);
    text("i: info", 0, 120);
    text("f: test", 0, 135);

    popMatrix();
  }
}
void changeStruct12(String typeStruct, int num) { //explosif,pong,pulsar,vaisseau,bombardier,canonABombardier,ship,spaceship,spider,vaisseau2,vaisseau3,vaisseau4,vaisseau5,wingSpaceship;
  if (typeStruct == "instable") {
    if (num == 1) {
      remplaTabl12(explosif12);
    } else if (num == 2) {
      remplaTabl12(destru12);
    } else if (num == 3) {
      remplaTabl12(Acorn12);
    } else if (num == 4) {
      remplaTabl12(madeIn12);
    }
  } else if (typeStruct == "stable") {
    if (num == 1) {
      remplaTabl12(pulsar12);
    } else if (num == 2) {
      remplaTabl12(pong12);
    } else if (num == 3) {
      remplaTabl12(tourne12);
    } else if (num == 4) {
      remplaTabl12(recta12);
    } else if (num == 5) {
      remplaTabl12(mi12);
    }
  } else if (typeStruct == "canon") {
    if (num == 1) {
      remplaTabl12(canonABombardier12);
    }
  } else if (typeStruct == "vaisseau") {
    if (num == 1) {
      remplaTabl12(vaisseau12);
    } else if (num == 2) {
      remplaTabl12(bombardier12);
    } else if (num == 3) {
      remplaTabl12(ship12);
    } else if (num == 4) {
      remplaTabl12(spaceship12);
    } else if (num == 5) {
      remplaTabl12(spider12);
    } else if (num == 6) {
      remplaTabl12(vaisseau212);
    } else if (num == 7) {
      remplaTabl12(vaisseau312);
    } else if (num == 8) {
      remplaTabl12(vaisseau412);
    } else if (num == 9) {
      remplaTabl12(vaisseau512);
    } else if (num == 10) {
      remplaTabl12(wingSpaceship12);
    }
  }
}

void remplaTabl12(String[] tablen) {
  for (int i = 0; i < int(tablen[1])+2; i++) {
    structure12[i] = tablen[i];
  }
}


void action12() {
  boolean casesN[][] = new boolean[nbrCasesX12][nbrCasesY12];
  //casesN = cases;

  for (int i = 0; i < nbrCasesX12; i ++) {
    for (int j = 0; j < nbrCasesY12; j ++) {
      casesN[i][j] = cases12[i][j];
    }
  }

  for (int i = 0; i < 500; i ++) {
    for (int j = 0; j < 500; j ++) {

      int nbrCV = detectCV12(i, j);
      if (cases12[i][j]) {

        if (nbrCV < 2 || nbrCV > 3) {
          casesN[i][j] = false;
        }
      } else {
        if (nbrCV == 3) {
          casesN[i][j] = true;
        }
      }
    }
  }
  cases12 = casesN;
}
void creaStructure12(String nomF[], int xp, int yp, boolean r, boolean d) {

  int m = 1;
  if (r == true) {
    m = -1;
    xp += 4;
  }

  int p = 1;
  if (d == true) {
    p = -1;
    yp += 3;
  }

  for (int i = 0; i < int(nomF[0]); i ++) {
    for (int j = 2; j < int(nomF[1])+2; j ++) {
      if (nomF[j].charAt(i) == 'x') {
        cases12[xp+i*p][yp+(j-2)*m] = true;
      } else if (nomF[j].charAt(i) == 'o') {
        cases12[xp+i*p][yp+(j-2)*m] = false;
      }
    }
  }
}
//jeu 12

//jeu 13
void Mur13() {
  for (int l = 0; l <= 3; l++) {
    if (yC113[l] >= 800) {
      score13 -= 4;
      yC113[l] = -100;
      float ra = random(0, 3);
      if (ra < 1) {
        VitC113[l] = Vit113;
      } else if (ra < 2) {
        VitC113[l] = Vit213;
      } else {
        VitC113[l] = Vit313;
      }
    }
  }

  for (int l = 0; l <= 3; l++) {
    if (yC213[l] >= 800) {
      score13 -= 4;
      yC213[l] = -100;
      float ra = random(0, 3);
      if (ra < 1) {
        VitC213[l] = Vit113;
      } else if (ra < 2) {
        VitC213[l] = Vit213;
      } else {
        VitC213[l] = Vit313;
      }
    }
  }


  for (int l = 0; l <= 3; l++) {
    if (yC313[l] >= 800) {
      score13 -= 4;
      yC313[l] = -100;
      float ra = random(0, 3);
      if (ra < 1) {
        VitC313[l] = Vit113;
      } else if (ra < 2) {
        VitC313[l] = Vit213;
      } else {
        VitC313[l] = Vit313;
      }
    }
  }
}


void Aff13() {
  stroke(20);
  line(200, 800, 200, 0);
  line(400, 800, 400, 0);
  line(0, 720, 600, 720);
  line(0, 670, 600, 670);
}

void recta13() {
  noStroke();

  for (int i = 0; i <= 3; i++) {
    if (VitC113[i] == Vit113) {
      fill(100, 200, 100);
    } else if (VitC113[i] == Vit313) {
      fill(200, 100, 100);
    } else if (VitC113[i] == Vit213) {
      fill(100, 100, 200);
    }
    rect(0, yC113[i], 200, 50);
    yC113[i] += VitC113[i];
  }

  for (int j = 0; j <= 3; j++) {
    if (VitC213[j] == Vit113) {
      fill(100, 200, 100);
    } else if (VitC213[j] == Vit313) {
      fill(200, 100, 100);
    } else if (VitC213[j] == Vit213) {
      fill(100, 100, 200);
    }
    rect(200, yC213[j], 200, 50);
    yC213[j] += VitC213[j];
  }

  for (int j = 0; j <= 3; j++) {
    if (VitC313[j] == Vit113) {
      fill(100, 200, 100);
    } else if (VitC313[j] == Vit313) {
      fill(200, 100, 100);
    } else if (VitC313[j] == Vit213) {
      fill(100, 100, 200);
    }
    rect(400, yC313[j], 200, 50);
    yC313[j] += VitC313[j];
  }
}
void Collia13() {
  for (int k = 0; k <= 3; k++) {
    if (yC113[k] >= 670 && yC113[k] <= 720) {
      score13 += 8;
      yC113[k] = -100;
      float ra = random(0, 3);
      if (ra < 1) {
        VitC113[k] = Vit113;
      } else if (ra < 2) {
        VitC113[k] = Vit213;
      } else {
        VitC113[k] = Vit313;
      }
    } else if (yC113[k]+50 >= 670 && yC113[k]+50 <= 720) {
      score13 += 8;
      yC113[k] = -100;
      float ra = random(0, 3);
      if (ra < 1) {
        VitC113[k] = Vit113;
      } else if (ra < 2) {
        VitC113[k] = Vit213;
      } else {
        VitC113[k] = Vit313;
      }
    } else {
      score13 --;
    }
  }
}

void Colliz13() {
  for (int k = 0; k <= 3; k++) {
    if (yC213[k] >= 670 && yC213[k] <= 720) {
      score13 += 8;
      yC213[k] = -100;
      float ra = random(0, 3);
      if (ra < 1) {
        VitC213[k] = Vit113;
      } else if (ra < 2) {
        VitC213[k] = Vit213;
      } else {
        VitC213[k] = Vit313;
      }
    } else if (yC213[k]+50 >= 670 && yC213[k]+50 <= 720) {
      score13 += 8;
      yC213[k] = -100;
      float ra = random(0, 3);
      if (ra < 1) {
        VitC213[k] = Vit113;
      } else if (ra < 2) {
        VitC213[k] = Vit213;
      } else {
        VitC213[k] = Vit313;
      }
    } else {
      score13 --;
    }
  }
}

void Collie13() {
  for (int k = 0; k <= 3; k++) {
    if (yC313[k] >= 670 && yC313[k] <= 720) {
      score13 += 4;
      yC313[k] = -100;
      float ra = random(0, 3);
      if (ra < 1) {
        VitC313[k] = Vit113;
      } else if (ra < 2) {
        VitC313[k] = Vit213;
      } else {
        VitC313[k] = Vit313;
      }
    } else if (yC313[k]+50 >= 670 && yC313[k]+50 <= 720) {
      score13 += 4;
      yC313[k] = -100;
      float ra = random(0, 3);
      if (ra < 1) {
        VitC313[k] = Vit113;
      } else if (ra < 2) {
        VitC313[k] = Vit213;
      } else {
        VitC313[k] = Vit313;
      }
    } else {
      score13 --;
    }
  }
}
//jeu 13

//jeu 14
void aff14() {
  for (int i = 0; i <= nbrP14-2; i++) {
    if (rayon14[i] <= 5) {
      fill(250);
    } else if (rayon14[i] <= 10) {
      fill(131, 240, 169);
    } else if (rayon14[i] <= 15) {
      fill(40, 230, 110);
    } else if (rayon14[i] <= 20) {
      fill(6, 155, 60);
    } else if (rayon14[i] <= 25) {
      fill(130, 145, 245);
    } else if (rayon14[i] <= 30) {
      fill(70, 90, 225);
    } else if (rayon14[i] <= 35) {
      fill(10, 30, 150);
    } else if (rayon14[i] <= 40) {
      fill(245, 115, 115);
    } else if (rayon14[i] <= 45) {
      fill(255, 0, 0);
    } else if (rayon14[i] <= 45) {
      fill(200, 90, 245);
    } else if (rayon14[i] <= 45) {
      fill(160, 50, 210);
    } else if (rayon14[i] <= 45) {
      fill(100, 10, 140);
    } else {
      fill(255, 230, 15);
    }
    ellipse(x14[i], y14[i], rayon14[i], rayon14[i]);
  }
}

//---------------------------------------------------------------------------------------------------------------------------------

void indication14(float Px, float Py, float Pz) {
  for (int i = 0; i <= nbrP14-2; i++) {
    float distance = sqrt(abs((mouseX+Px-x14[i])*(mouseX+Px-x14[i]))+abs((mouseY+Py-y14[i])*(mouseY+Py-y14[i])));
    float bla = abs(dx14[i])+abs(dy14[i]);
    float dirX = dx14[i]*50/(bla);
    float dirY = dy14[i]*50/(bla);
    if (rayon14[i]/2 >= distance) {
      noStroke();
      fill(100);
      rect(Px+1570, Py+940, 350, 120);
      fill(250);
      textSize(30);
      text("Masse : "+masse14[i], Px+1580, Py+1050);
      text("Vitesse : "+(abs(dx14[i])+abs(dy14[i]))*10000, Px+1580, Py+980);
      stroke(220, 50, 50);
      line(x14[i], y14[i], x14[i]+dirX, y14[i]+dirY);
    }
  }
}
void Attraction14() {
  for (int j = 0; j <= nbrP14-2; j++) {
    for (int k = 0; k <= nbrP14-2; k++) {
      float distance = sqrt(abs((x14[j]-x14[k])*(x14[j]-x14[k]))+abs((y14[j]-y14[k])*(y14[j]-y14[k])));
      float attraction = (masse14[j]*masse14[k])/((distance+1)*(distance+1));
      float angle = atan2(y14[k]-y14[j], x14[k]-x14[j]);
      float dirx = attraction*cos(angle);
      float diry = attraction*sin(angle);
      if (j != k && (rayon14[j]/2)+(rayon14[k]/2) >= distance) {
        if (masse14[k] > masse14[j]) {
          masse14[k] += masse14[j];
          masse14[j] = 0;
          x14[j] = -100;
          y14[j] = -100;
        } else {
          masse14[j] += masse14[k];
          masse14[k] = 0;
          x14[k] = -100;
          y14[k] = -100;
        }
      } else if (j != k) {
        dx14[j] += dirx*Force14;
        dy14[j] += diry*Force14;
        x14[j] += (dx14[j]);
        y14[j] += (dy14[j]);
      }
    }
  }
}

//---------------------------------------------------------------------------------------------------------------------------------

void initialisation14() {
  for (int i = 0; i <= nbrP14-2; i++) {
    float xa = random(nbrMinM14, nbrMaxM14);
    x14[i] = random(80, 1900);
    y14[i] = random(80, 960);
    masse14[i] = PI*(xa*xa);
    dx14[i] = 0;
    dy14[i] = 0;
    rayon14[i] = xa/densite14;
  }
}
//jeu 14

//15

void appa15(float prc, int ppx, int ppy) {
  if (numAp15 >= nbrPointAppa15-1) {
    numAp15 = 1;
    fin15 = true;
  }
  int ra = int(random(0, 100));
  if (ra < prc) {
    pointappa15[numAp15] = new ver15(ppx, ppy);
    numAp15 ++;
  }
}
//15

//16
void crea16() { // Créé les points de la lignes magnétique

  py16[0] = random(200, 600);
  nbrP16 = 1;
  float posX = 0;
  while ( posX < 1500) {
    float r = random(1, 200);
    float r2 = random(-50, 50);
    posX += r;
    if (py16[nbrP16-1]+r2 > 800) {
      r2 = 800-py16[nbrP16-1];
    } else if (py16[nbrP16-1]+r2 < 0) {
      r2 = py16[nbrP16-1];
    }
    px16[nbrP16] = posX;
    py16[nbrP16] = py16[nbrP16-1]+r2;
    nbrP16 ++;
  }
}
float Dangle16() {
  float angleA = 0;
  int i = 0;
  while (px16[i] < 100) {
    i ++;
  }
  angleA = atan((py16[i-1]-py16[i])/(px16[i-1]-px16[i]));
  return angleA;
}

void nouvPoint16() {

  float r = random(1, 200);
  float r2 = random(-50, 50);
  px16[nbrP16] = px16[nbrP16-1] + r;
  if (py16[nbrP16-1]+r2 > 800) {
    r2 = 800-py16[nbrP16-1];
  } else if (py16[nbrP16-1]+r2 < 0) {
    r2 = py16[nbrP16-1];
  }
  py16[nbrP16] = py16[nbrP16-1] + r2;
  nbrP16 ++;
}
void chargeImage16() { // charge les images
  laser16 = loadImage("Laser.png");
  vaisseau16 = loadImage("SpaceShi.png");
  monster16 = loadImage("Ennemi6.png");
}
//16

//17
void crea17() {
  for (int i = 0; i < 75; i ++) {
    for (int j = 0; j < 75; j ++) {
      float ra = random(0, 100);
      if (ra < prcBB17) {
        bloc17[i][j] = 0;
      } else {
        bloc17[i][j] = 1;
      }
    }
  }
  int rx = int(random(1, 74));
  int ry = int(random(1, 74));

  while (bloc17[rx][ry] == 1) {
    rx = int(random(1, 74));
    ry = int(random(1, 74));
  }

  x17 = rx *10;
  y17 = ry * 10;

  int rx2 = int(random(1, 74));
  int ry2 = int(random(1, 74));

  while (bloc17[rx2][ry2] == 1) {
    rx2 = int(random(1, 74));
    ry2 = int(random(1, 74));
  }
  bloc17[rx2][ry2] = 2;
}

void depla17() {
  if (touches[90] || touches[38]) { 
    y17 -= vit17;
  };
  if (touches[83] || touches[40]) { 
    y17 += vit17;
  };
  if (touches[81] || touches[37]) { 
    x17 -= vit17;
  };
  if (touches[68] || touches[39]) { 
    x17 += vit17;
  };
}

void collision17() {
  float lg = 0, ld = 730, lh = 0, lb = 730;

  if (bloc17[int((x17)/10)][int((y17+5)/10)] == 1) { // gauche
    lg = int((x17)/10)*10+10;
  } else if (bloc17[int((x17)/10)][int((y17+5)/10)] == 2) {
    crea17();
  }
  if (bloc17[int((x17+10)/10)][int((y17+5)/10)] == 1) { // droite
    ld = int((x17+10)/10)*10-10;
  } else if (bloc17[int((x17+10)/10)][int((y17+5)/10)] == 2) {
    crea17();
  }
  if (bloc17[int((x17+5)/10)][int((y17)/10)] == 1) { // haut
    lh = int((y17)/10)*10+10;
  } else if (bloc17[int((x17+5)/10)][int((y17)/10)] == 2) {
    crea17();
  }
  if (bloc17[int((x17+5)/10)][int((y17+10)/10)] == 1) { // bas
    lb = int((y17+10)/10)*10-10;
  } else if (bloc17[int((x17+5)/10)][int((y17+10)/10)] == 2) {
    crea17();
  }
  //stroke(255,0,0);
  //line(int((x+10)/10)*10,0,int((x+10)/10)*10,750);
  if (x17 < lg) {
    x17 = lg;
  }
  if (x17 > ld) {
    x17 = ld;
  }
  if (y17 < lh) {
    y17 = lh;
  }
  if (y17 > lb) {
    y17 = lb;
  }
}

void aff17() {
  noStroke();
  for (int i = 0; i < 75; i ++) {
    for (int j = 0; j < 75; j ++) {
      if (bloc17[i][j] == 0) {
        fill(255);
        rect(i*10, j*10, 10, 10);
      } else if (bloc17[i][j] == 1) {
        fill(0);
        rect(i*10, j*10, 10, 10);
      } else if (bloc17[i][j] == 2) {
        fill(0, 0, 255);
        rect(i*10, j*10, 10, 10);
      }
    }
  }
  fill(255, 0, 0);
  rect(x17, y17, 10, 10);
}
//17

//18
void aff18() {
  fill(20);
  strokeWeight(2);
  for (int i = 1; i <= 499; i++) {
    line(i, posY18[i], i, 500);
    line(i, posY18[i]-esp18, i, 0);
  }

  for (int k = 0; k <= 498; k ++) {
    posY18[k] = posY18[k+1];
  }
  posY18[499] = posY18[499] + random(-ecart18, ecart18);

  for (int i = 0; i <= 499; i ++) {
    if (posY18[i] > 500) {
      posY18[i] = 500;
    } else if (posY18[i] < 50) {
      posY18[i] = 50;
    }
  }
}

void coll18() {
  for (int i = 0; i <= 499; i ++) {
    if (mouseX == i) {
      if (mouseY < posY18[i]*(700.0/500) && mouseY > (posY18[i]-esp18)*(700.0/500)) {
        score18 += 0.05;
      } else {
        mort18();
      }
    }
  }
}

void mort18() {
  if (mouseX > 0*(700.0/500) && mouseX < 700*(700.0/500) && mouseY > 0*(700.0/500) && mouseY < 700*(700.0/500)) {
    if (temps18 > tempsS18 + 5) {
      tempsS18 = temps18;
      vie18 --;
    }
  }
}
//18

//19
void depla19() {
  if (touches[68] || touches[39]) {
    x19 += 30;
  }
  if (touches[81] || touches[37]) {
    x19 -= 30;
  }
  if (touches[90] || touches[38]) {
    y19  -= 30;
  }
  if (touches[83] || touches[40]) {
    y19 += 30;
  }
  if (x19 <= 0) {
    x19 = 0;
  }
  if (x19+30 >= 690) {
    x19 = 660;
  }
  if (y19 <= 0) {
    y19 =0;
  }
  if (y19+30 >= 690) {
    y19=660;
  }
}

void deplaE19() {
  if (x19 > xE19) {
    xE19 += 15;
  } else if (x19 < xE19) {
    xE19 -= 15;
  } else if (x19 == xE19) {
    if (y19 > yE19) {
      yE19 += 15;
    } else if (y19 < yE19) {
      yE19 -= 15;
    }
  }
}

void collisions19() {
  if (x19 == xE19 && y19 == yE19 && cooldown19 == false) {
    vie19 -= 1;
    tempsSauv19 = tempsMilli19;
  }
  if (x19 >= xP19-30  && x19 <= xP19+60 && y19 >= yP19-30 && y19 <= yP19+60) {
    xP19 = random(0, 670);
    yP19 = random(0, 670);
    score19 ++;
  }
}
//19

//21
void coli21() {
  for (int loop2 = 0; loop2 <= 2; loop2++) {
    if (x21 == xR21[loop2] || x21+25== xR21[loop2]) {
      if (y21 < yDim21[loop2] || y21+30 > 400-(400-(yDim21[loop2]+80))) {
        mort21();
      }
    }
    if (x21+25== xR21[loop2]) {
      score21++;
    }
  }
}
void mort21() {
  jeu21 = false;
  textSize(35);
  fill(20, 20, 20);
  rect(0, 0, 200, 60);
  fill(60, 60, 60);
  rect(200, 0, 200, 60);
  fill(254, 254, 254);
  text("Score : " + score21, 10, 40);
  textSize(26);
  text("Recommencer", 210, 40);
}
void recta21() {
  for (int loop = 0; loop <= 2; loop++) {
    if (xR21[loop] < -50) { // si il est a gauche
      xR21[loop] = 550;
      yDim21[loop] = random(100, 300);
      if (loop == 0) {
        if (yDim21[loop] > yDim21[2]+100 || yDim21[loop] < yDim21[2]-100) {
          yDim21[loop] = random(100, 300);
        }
      } else {
        if (yDim21[loop] > yDim21[loop-1]+100 || yDim21[loop] < yDim21[loop-1]-100) {
          yDim21[loop] = random(100, 300);
        }
      }
    }
    xR21[loop] = xR21[loop]-5;
    rect(xR21[loop], 0, 30, yDim21[loop]);
    rect(xR21[loop], 400-(400-(yDim21[loop]+80)), 30, 400-(yDim21[loop]+80));
  }
}

void rectV21() {
  noStroke();
  fill(254, 245, 75);
  rect(x21, y21, 30, 30);
}

void Deplacement21() {
  if (touches[90] || touches[38]) {
    y21 = y21-5;
  }
  if (touches[83] || touches[40]) {
    y21 = y21+5;
  }
}

void limite21() {
  if (y21 > 370) {
    y21 = 369;
  } else if (y21 < 0) {
    y21 =1;
  }
  if (x21 > 370) {
    x21 = 369;
  } else if (x21 < 0) {
    x21 =1;
  }
}
//21

//24
void Aff24() {
  rect(RectX24, 650, 100, 20);
  rect(PosEn24, 50, 100, 20);
  ellipse(CercleX24, CercleY24, 20, 20);
  textSize(30);
  text("Vies : "+Vies24, 10, 630);
  text("Vies : "+ViesEn24, 10, 30);
  pushStyle();
  stroke(255);
  strokeWeight(3);
  line(0, 0, 0, 700);
  line(500, 0, 500, 700);
  popStyle();
}


void Mur24() {
  if (RectX24 > 400) {
    RectX24 = 400;
  } else if (RectX24 < 0) {
    RectX24 = 0;
  }

  if (CercleY24+10 >= 650 && CercleY24+10 <= 670 && CercleX24-10 > RectX24-20 && CercleX24+10 < RectX24 + 120) {
    VitCercleY24 = random((VitB24-1), (VitB24+1));
    VitCercleY24 = -VitCercleY24;
  }

  if (CercleY24+10 >= 50 && CercleY24+10 <= 70 && CercleX24-10 > PosEn24-20 && CercleX24+10 < PosEn24 + 120) {
    VitCercleY24 = random(-(VitB24-1), -(VitB24+1));
    VitCercleY24 = -VitCercleY24;
  }

  if (Vies24 <= 0) {
    RectX24 = 250;
    RectX224 = 250;
    CercleX24 = 50;
    CercleY24 = 100;
    VitCercleX24 = 7;
    VitCercleY24 = 7;
    Vies24 = 5;
    ViesEn24 = 5;
    PosEn24 = 250;
    VitB24 = 7;
  } else if (ViesEn24 <= 0) {
    RectX24 = 250;
    RectX224 = 250;
    CercleX24 = 50;
    CercleY24 = 100;
    VitCercleX24 = 7;
    VitCercleY24 = 7;
    Vies24 = 5;
    ViesEn24 = 5;
    PosEn24 = 250;
    VitB24 = 7;
  }

  if (RectX224 > PosEn24) {
    PosEn24 += 10-ViesEn24;
  } else if (RectX224 < PosEn24) {
    PosEn24 -= 10-ViesEn24;
  }
}

void DeplaCercle24() {
  if (CercleX24 > 490) {
    VitCercleX24 = random((VitB24-1), (VitB24+1));
    VitCercleX24 = -VitCercleX24;
  } else if (CercleX24 < 10) {
    VitCercleX24 = random(-(VitB24-1), -(VitB24+1));
    VitCercleX24 = -VitCercleX24;
  }

  if (CercleY24 > 690) {
    Vies24 --;
    CercleX24 = 50;
    CercleY24 = 100;
  } else if (CercleY24 < 10) {
    ViesEn24 --;
    CercleX24 = 250;
    CercleY24 = 600;
  }

  CercleX24 += VitCercleX24;
  CercleY24 += VitCercleY24;
}
//24

//26
void Mur26() {
  x26 = mouseX*500/700-50;
  if (x26 < 0) {
    x26 = 0;
  } else if ( x26 > 400) {
    x26 = 400;
  }// yE max = 440
  if (yE26+20 > 460 && yE26 -20 < 490 && xE26 +20 >= x26 && xE26-20 <= x26+100) {
    Asc26 = true;
    VitY26 = -VitY26;
    VitX26 += random(-2, 2);
  }
  if (xE26+20 > 500) {
    xE26 = 480;
    VitX26 = -VitX26;
  } else if (xE26-20 < 0) {
    xE26 = 20;
    VitX26 = -VitX26;
  }
  if (yE26 > 550) {
    x26 = 200;
    xE26 = 200;
    yE26 = 50;
    Asc26 = false;
    VitY26 = 0;
    VitX26 = 0;
  }
}

void Dessin26() {
  noStroke();
  fill(20);
  rect(x26, 460, 100, 30);
  fill(200, 100, 100);
  ellipse(xE26, yE26, 40, 40);
}

void DeplaE26() {

  if (Asc26 == false) {
    VitY26 += 0.2;
  } else if (Asc26 == true) {
    VitY26 += 0.2;
  }
  yE26 += VitY26;
  xE26 += VitX26;
}
//26

//27
void affichage27 () {
  noStroke();

  fill(254, 254, 254);
  rect(20, 380, 460, 100);

  fill(0, 0, 0);
  textSize(20);
  text(texte27, 25, 400);

  textSize(27);
  fill(250, 250, 250);
  text("Entrez le mot à retourner :", 25, 40);
  textSize(20);
  text(texteS27, 25, 240);




  if (longText27 > 0) {
    for (int lp = 0; lp < longText27; lp++) {
      text(tabl227[lp], 10+lp*11, 100);
    }

    for (int lpa = 0; lpa < longText27; lpa++) {
      text(tabl227[lpa], 5+lpa*25, 150);
    }
    if (longText27 >20) {
      for (int lpb = 20; lpb < longText27; lpb++) {
        text(tabl227[lpb], 5+(lpb-20)*25, 185);
      }
    }
  }
  stroke(250, 250, 250);

  line(0, 130, 500, 130);
  line(0, 160, 500, 160);
  line(0, 190, 500, 190);
  line(0, 220, 500, 220);

  for (int li = 0; li <=20; li++) {
    line(25+li*25, 130, 25+li*25, 160);
  }
  for (int li = 0; li <=20; li++) {
    line(25+li*25, 160, 25+li*25, 190);
  }
  for (int li = 0; li <=20; li++) {
    line(25+li*25, 190, 25+li*25, 220);
  }
  // +25
}
//27

//28
void Sol28() {
  strokeWeight(2);
  for (int j = 0; j <= 499; j ++) {
    stroke(32, 180, 25);
    line(j, posY28[j], j, posY28[j]+ecart28);
    stroke(147, 96, 32);
    line(j, posY28[j]+ecart28, j, 500);
  }

  for (int k = 0; k <= 498; k ++) {
    posY28[k] = posY28[k+1];
  }
  posY28[499] = posY28[499] + random(-3, 3);
}

void Mur28() {
  if (posY28[499] < 150) {
    posY28[499] = 150;
  } else if (posY28[499] > 450) {
    posY28[499] = 450;
  }

  if (yRec28 < -20) {
    yRec28 = -20;
  }
  if (xRec28 < 0) {
    xRec28 = 0;
  } else if (xRec28 > 220) {
    xRec28 = 220;
  }


  if ( posY28[int(xRec28+32)] <= yRec28+47) {
    touc28();
    yRec28 = posY28[int(xRec28+32)]-47;
    fill(200, 100, 100);
    noStroke();
    rect(115, 5, 80, 35);
    fill(250);
  } else if ( posY28[int(xRec28+12)] <= yRec28+47) {
    touc28();
    yRec28 = posY28[int(xRec28+12)]-47;
    fill(200, 100, 100);
    noStroke();
    rect(115, 5, 80, 35);
    fill(250);
  }

  if (xRec28+60 >= xH28 && xRec28+10 <= xH28 && yRec28+20 >= YH28-40) {
    score28++; //-------------------------------------------------------------------------------------------
    fill(27, 180, 25);
    noStroke();
    rect(195, 5, 80, 35);
    fill(250);
    YH28 = posY28[int(random(450, 499))];
  }


  if (vies28 <= 0) {
    menu28 = true;
    vies28 = 5;
    yRec28 = 50;
    xRec28 = 50;
    score28 = 0;
  }
}

void humain28() {
  for (int m = 0; m <= 499; m++) {
    if (posY28[m] == YH28) {
      image(Humain28, m, posY28[m]-20, 10, 22);
      xH28 = m;
    } else {
      sauv28 ++;
    }
  }
  if (sauv28 == 500) {
    YH28 = posY28[int(random(450, 499))];
  }
  sauv28 = 0;
}

void touc28() {
  if (temps28 >= tempsS28+3) {
    tempsS28 = temps28;
    vies28 --;
  }
}
void rectan28() {
  yRec28 += grav28;

  if (touches[90]|| touches[38]) {
    grav28 = 0;
    yRec28 -= 1;
  }
  if (touches[83]|| touches[40]) {
    grav28 = 1.6;
  }
  if (touches[83] == false|| touches[40] == false) {
    if (touches[90] == false|| touches[38] == false) {
      grav28 = 0.8;
    }
  }

  if (touches[81] || touches[37]) {
    xRec28 -= 3.5;
  }
  if (touches[68] || touches[39]) {
    xRec28 += 3.5;
  }
  if (Avions28 == true) {
    image(Avion28, xRec28, yRec28, 64, 64);
  } else {
    image(Canadaire28, xRec28, yRec28, 64, 64);
  }
}
//28

//29
void Body29(){
  if((x329%20) == 0 && (y329%20) == 0){ // Si la tête est dans une case
    for(int i = nbrDeCorps29; i > 0 ; i --){
      xB29[i] = xB29[i-1];
      yB29[i] = yB29[i-1];
    }
    xB29[0] = x329;
    yB29[0] = y329;
  }
  for(int j = 1; j <= 649; j++){
    if(xB29[j] != 0 && yB29[j] != 0){
      image(BodySnake29,xB29[j],yB29[j],20,20);
    }
  }
}

//-------------------------------------------------------------------------------------------------------------------------

void lignes29(){
  stroke(150);
  for(int lx = 20; lx <= height; lx += 20){
    line(lx,20,lx,500);
  }
  for(int llx = 20; llx <= width; llx += 20){
    line(20,llx,500,llx);
  }
}

//-------------------------------------------------------------------------------------------------------------------------

void texte29(){
  fill(250);
  textSize(20);
  text("Score : "+score29,20,18);
  text("Meilleur Score : "+parseInt(HS29),150,18);
  //image(Engrenage,0,0,40,40);
}

//-------------------------------------------------------------------------------------------------------------------------

void texteMort29(){
  noStroke();
  fill(250);
  textSize(30);
  text("Cliquez pour recommencer",75,40);
  text("Score : "+ score29,180,200);
  text("Meilleur score : "+ parseInt(HS29),135,250);
  if(score29 == HS29){
    frameRate(5);
    fill(random(0,255),random(0,255),random(0,255));
    text("NOUVEAU RECORD !",125,350);
  }
}

void MurInvi29(){
  if(x329 < 20){
    x329 = 480;
  }else if(y329 < 20){
    y329 = 480;
  }else if(x329 > 480){
    x329 = 20;
  }else if(y329 > 480){
    y329 = 20;
  }
  if(x329 == xR29 && y329 == yR29){
    if(gateauI29 == 4){
      score29 += 3;
    }
    posiPomme29();
    BrocoNouv29();
    score29++;
  }else if(gateauI29 == 4 ){
    if(x329 == xR29+20 && y329 == yR29){
      posiPomme29();
      BrocoNouv29();
      score29 +=4;
    }else if(x329 == xR29+20 && y329 == yR29+20){
      posiPomme29();
      BrocoNouv29();
      score29 +=4;
    }else if(x329 == xR29 && y329 == yR29+20){
      posiPomme29();
      BrocoNouv29();
      score29 +=4;
    }
  }
  if(x329 == xBr29 && y329 == yBr29){
    BrocoNouv29();
    scoreM29();
  }
}

//-------------------------------------------------------------------------------------------------------------------------

void Collisions29(){
  for(int pr = 1; pr < nbrDeCorps29+1; pr ++){
    if(x329 == xB29[pr] && y329 == yB29[pr] ){
      if(TG29 == true || TD29 == true || TB29 == true || TH29 == true){
        Mort29 = true;
      }
    }
  }
}


void perso29(){
  
  if ( (x329 % 20) == 0 && (y329 % 20) == 0) {
    if(touches[81] && TD29 == false || touches[37] && TD29 == false){
      image(HeadSnakeG29,x329,y329,20,20);
      TG29 = true;
      TD29 = false;
      TH29 = false;
      TB29 = false;
    }else if(touches[39] && TG29 == false || touches[68] && TG29 == false){//rightKey == 1 && TG29 == false
      image(HeadSnakeD29,x329,y329,20,20);
      TG29 = false;
      TD29 = true;
      TH29 = false;
      TB29 = false;
    }else if(touches[90] && TB29 == false || touches[38] && TB29 == false){//upKey == 1 && TB29 == false
      image(HeadSnakeH29,x329,y329,20,20);
      TG29 = false;
      TD29 = false;
      TH29 = true;
      TB29 = false;
    }else if(touches[40] && TH29 == false || touches[83] && TH29 == false){//downKey == 1 && TH29 == false
      image(HeadSnakeB29,x329,y329,20,20);
      TG29 = false;
      TD29 = false;
      TH29 = false;
      TB29 = true;
    }else if(TG29 == true){
      image(HeadSnakeG29,x329,y329,20,20);
      //image(BodySnake,x3+20,y3);
    }else if(TD29 == true){
      image(HeadSnakeD29,x329,y329,20,20);
      //image(BodySnake,x3-20,y3);
    }else if(TH29 == true){
      image(HeadSnakeH29,x329,y329,20,20);
      //image(BodySnake,x3,y3+20);
    }else if(TB29 == true){
      image(HeadSnakeB29,x329,y329,20,20);
      //image(BodySnake,x3,y3-20);
    }else{
      image(HeadSnakeD29,x329,y329,20,20);
      //image(BodySnake,x3-20,y3);
    }
  }else{
    if(TG29 == true){
      image(HeadSnakeG29,x329,y329,20,20);
      if(y329 == yB29[1]){
        image(BodySnake29,x329+20,y329,20,20);
      }
    }else if(TD29 == true){
      image(HeadSnakeD29,x329,y329,20,20);
      if(y329 == yB29[1]){
        image(BodySnake29,x329-20,y329,20,20);
      }
    }else if(TH29 == true){
      image(HeadSnakeH29,x329,y329,20,20);
      if(x329 == xB29[1]){
        image(BodySnake29,x329,y329+20,20,20);
      }
    }else if(TB29 == true){
      image(HeadSnakeB29,x329,y329,20,20);
      if(x329 == xB29[1]){
        image(BodySnake29,x329,y329-20,20,20);
      }
    }else{
      image(HeadSnakeD29,x329,y329,20,20);
      if(y329 == yB29[1]){
        image(BodySnake29,x329-20,y329,20,20);
      }
    }
  }
}

//-------------------------------------------------------------------------------------------------------------------------

void deplacement29(){
  if ( (x329 % 20) == 0 && (y329 % 20) == 0) {
    if(TG29 == true){
      DeplaX29 = -2;
      DeplaY29 = 0;
    }else if(TD29 == true){
      DeplaX29 = 2;
      DeplaY29 = 0;
    }else if(TH29 == true){
      DeplaY29 = -2;
      DeplaX29 = 0;
    }else if(TB29 == true){
      DeplaY29 = 2;
      DeplaX29 = 0;
    }else{
      DeplaY29 = 0;
      DeplaX29 = 0;
    }
  } else {
     
  }
  x329 += DeplaX29;
  y329 += DeplaY29;
}
void boule29(){
  noStroke();
  if(gateauI29 == 0){
    image(gateau29,xR29,yR29,20,20);
  }else if(gateauI29 == 1){
    image(gateau229,xR29,yR29,20,20);
  }else if(gateauI29 == 2){
    image(gateau329,xR29,yR29,20,20);
  }else if(gateauI29 == 3){
    image(gateau429,xR29,yR29,23,24);
  }else if(gateauI29 == 4){
    image(SuperGateau29,xR29,yR29,40,40);
  }else{
    image(gateau29,xR29,yR29,20,20);
  }
}

//-------------------------------------------------------------------------------------------------------------------------

void posiPomme29(){
  gateauI29 = int(random(0,5));
  if(gateauI29 == 4){
    float ra = random(0,3);
    if(ra == 0){
      gateauI29 = int(random(0,5));
    }else if(ra == 1){
      gateauI29 = int(random(0,5));
    }else if(ra == 2){
      gateauI29 = 4;
    }else{
      gateauI29 = int(random(0,5));
    }
  }
  yR29 = 20*int(random(1,24));
  xR29 = 20*int(random(1,24));
  for(int i = 0; i <= 10; i++){
    for(int j = 1; j <= nbrDeCorps29+1;j++){
      if(xR29 == xB29[j] && yR29 == yB29[j]){
        yR29 = 20*int(random(1,24));
        xR29 = 20*int(random(1,24));
      }
    }
  }
}

//-------------------------------------------------------------------------------------------------------------------------

void BrocoAff29(){
  image(Epinard29,xBr29,yBr29,20,20);
}

//-------------------------------------------------------------------------------------------------------------------------

void BrocoNouv29(){
  xBr29 = 20*int(random(1,24));
  yBr29 = 20*int(random(1,24));
  if(xBr29 == xR29 && yBr29 == yR29){
    xBr29 = 20*int(random(1,24));
    yBr29 = 20*int(random(1,24));
  }
  for(int i = 0; i <= 10; i++){
    for(int j = 1; j <= nbrDeCorps29+1;j++){
      if(xBr29 == xB29[j] && yBr29 == yB29[j]){
        yR29 = 20*int(random(1,24));
        xR29 = 20*int(random(1,24));
      }
    }
  }
}



void imageL29(){
  HeadSnakeB29 = loadImage("HeadSnakeB.png");
  HeadSnakeH29 = loadImage("HeadSnakeH.png");
  HeadSnakeG29 = loadImage("HeadSnakeG.png");
  HeadSnakeD29 = loadImage("HeadSnakeD.png");
  gateau29 = loadImage("gateau.png");
  gateau229 = loadImage("gateau2.png");
  gateau329 = loadImage("gateau3.png");
  gateau429 = loadImage("gateau4.png");
  Epinard29 = loadImage("Epinard.png");
  SuperGateau29 = loadImage("SuperGateau.png");
  BodySnake29 = loadImage("Snake.png");
  Engrenage29 = loadImage("engrenage.png");
}

void mort29(){
  Mort29 = false;
  score29 = 0;
  x329 = 40;
  y329 = 40;
  TG29 = false;
  TB29 = false;
  TH29 = false;
  TD29 = false;
  frameRate(60);
  for(int loop = 1; loop <= 649; loop ++){
    xB29[loop] = 0;
    yB29[loop] = 0;
  }
}

//-------------------------------------------------------------------------------------------------------------------------

void highscore29(){
  hightscore29 = loadStrings("highscore.txt");
  int longeur = hightscore29.length;
  HS29 = 0;
  for(int i = longeur-1; i >= 0 ; i --){
    HS29 += parseInt(hightscore29[i])*pow(10,i);
  }
}

//-------------------------------------------------------------------------------------------------------------------------

void scoreM29(){
  xB29[score29+1] = 0;
  yB29[score29+1] = 0;
  score29 --;
}

//-------------------------------------------------------------------------------------------------------------------------

void MAJ29(){
  if(score29 > HS29){
    String[] sa = {Float.toString(score29),"Bon anniversaire Papa !"};
    saveStrings("highscore.txt",sa);
    highscore29();
  }
  if(score29 < 0){
    Mort29 = true;
  }
}
//29

// 34
void depla34() {
  //score = (570*2)-(2*(570-posYt));
  //posYt += 3;
  dif34 += grav34;
  if (haut34 == true) {
    posYt34 = 0;
  } else if (tombe34 == true) {
    posYt34 += dif34;
  } else if (bas34 == true) {
  }
  if (posYt34 >= 520+50) {
    score34 = 0;
    haut34 = true;
    tombe34 = false;
    bas34 = false;
  }
}

void aff34() {
  noStroke();
  fill(200, 100, 100);
  rect(0, posYt34, 350, 50);
  rect(350, 650-posYt34, 350, 50);
  stroke(250);
  line(0, 620, 350, 620);
  line(350, 80, 700, 80);
  fill(200);
  textSize(22);
  text("Score : "+score34, 10, 25);
  text("Score Max : "+scoreS34, 10, 50);
}
//34

//35
void dessiner35(){

  if (gauche35 == false) {
    x35+=5;
  } 
  else {
    x35-=5;
  }
  if (x35>395)
  {
    gauche35 = true;
    x35 = 395;
  } 
  else if (x35<0) {
    x35 = 0;
    gauche35 = false;
  }
  for (int lop = 0; lop <= 5; lop++) {
    yE35[lop]-=2;
  }
}
void collision35() {
  if (temps35 > tempsS35+3) {
    for (int l = 0; l <= 5; l++) {
      if (x35 >= xE35[l] && x35 <= xE35[l]+20) {
        if ( 50 >= yE35[l] && 50 <= yE35[l]+10) {
          Vie35 --;
          tempsS35 = temps35;
        }
        if ( 150 >= yE35[l] && 150 <= yE35[l]+10) {
          Vie35 --;
          tempsS35 = temps35;
        }
        if ( 250 >= yE35[l] && 250 <= yE35[l]+10) {
          Vie35 --;
          tempsS35 = temps35;
        }
      }
    }
  }
}
//35
