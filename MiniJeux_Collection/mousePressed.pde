
void mousePressed() {
  switch(jeu) {
    //case 0:
    //  mousePressed0();
    //  break;

  case 1:
    mousePressed1();
    break;

  case 2:
    mousePressed2();
    break;

  case 5:
    mousePressed5();
    break;

  case 6:
    mousePressed6();
    break;

  case 11:
    mousePressed11();
    break;

  case 12:
    mousePressed12();
    break;

  case 16:
    mousePressed16();
    break;

  case 19:
    mousePressed19();
    break;

  case 21:
    mousePressed21();
    break;
    
  case 22:
    mousePressed22();
    break;
    
  case 25:
    mousePressed25();
    break;
    
  case 33:
    mousePressed33();
    break;
    
  case 34:
    mousePressed34();
    break;
    
  case 35:
    mousePressed35();
    break;
    
  }
}

void mousePressed1() {
  if (entrerj1 == true) {
    if (mouseX > 480 && mouseY > 650) {
      for (int lop = 0; lop <= 22; lop++) {
        if (text1j1[lop].length() <= 0) {
          limitej1 = lop;
          lop = 23;
        }
      }
      numj1 = int(random(limitej1));
      entrerj1 = false;
    }
  }
}

void mouseClicked() {
  switch(jeu) {
  case 0:
    jeu = ( 1+mouseX/114+6* (mouseY/114) );
    switch(jeu) {
    case 2:
      setup2();
      break;
    case 3:
      setup3();
      break;

    case 5:
      setup5();
      break;

    case 9:
      setup9();
      break;

    case 10:
      setup10();
      break;

    case 12:
      setup12();
      break;

    case 14:
      setup14();
      break;

    case 15:
      setup15();
      break;

    case 16:
      setup16();
      break;

    case 17:
      setup17();
      break;

    case 18:
      setup18();
      break;

    case 20:
      setup20();
      break;
      
    case 23:
      setup23();
      break;
      
    case 28:
      setup28();
      break;
      
    case 29:
      setup29();
      break;
      
    case 30:
      setup30();
      break;
      
    case 32:
      setup32();
      break;
      
    case 35:
      setup35();
      break;
      
    }
    break;

  case 15:
    mouseClicked15();
    break;

  case 20:
    mouseClicked20();
    break;
    
  
  }
}

void mousePressed35() {
  if (Mort35 == false) {
    if (gauche35 == true) {
      gauche35 = false;
    } 
    else if (gauche35 == false) {
      gauche35 = true;
    }
  } 
  else {
    if (mouseX >= 100*(700.0/400) && mouseX <= 300*(700.0/400) && mouseY >= 175*(700.0/400) && mouseY <= 225*(700.0/400) ) {
      Mort35 = false;
    }
  }
}

void mousePressed34() {
  if (haut34 == true) {
    tombe34 = true;
    haut34 = false;
    dif34 = 0;
  } else if (tombe34 == true) {
    bas34 = true;
    tombe34 = false;
    score34 = (570*2)-(2*(570-posYt34));
    scoreF34 += score34;
    dif34 = 0;
  } else if (bas34 == true) {

    haut34 = true;
    bas34 = false;
    essais34 ++;
    if (essais34 <= 1) {
      scoreS34 = score34;
    } else if (scoreS34 < score34) {
      scoreS34 = score34;
    }
    score34 = 0;
    dif34 = 0;
  }
}

void mousePressed33(){
  if(Mort33 == true){
    if(mouseX >= 150*(700.0/500) && mouseX <= 350*(700.0/500) && mouseY >= 20*(700.0/500) && mouseY <= 60*(700.0/500)){
      Mort33 = false;
      x33 = 225;
      y33 = 225;
      dedans33 = false;
      temps33 = 0;
    }
  }
}

void mousePressed25() {
  if (mortt25 == true) {
    if (mouseY > 300*(700.0/400)) {
      score25 = 0;
      mortt25 = false;
      temps25 = 0;
    }
  }
}

void mousePressed22() {
  if (jeu22 == true) {
    AlS22 = int(random(Sujet22.length));
    AlV22 = int(random(Verbe22.length));
    Alad22 = int(random(Adverbe22.length));
    AlA22 = int(random(Apverbe22.length));

    C122 = random(20, 250);
    C222 = random(20, 250);
    C322 = random(20, 250);
  }
  if (commencer22 == true) {
    if (mouseX >= 500) {
      couleur22 = false;
      commencer22 = false;
      jeu22 = true;
    } else {
      couleur22 = true;
      commencer22 = false;
      jeu22 = true;
    }
  }
}

void mousePressed21() {
  if (jeu21 == false && mouseX > 200*(700.0/400) && mouseY < 60*(700.0/400)) {
    jeu21 = true;
    score21 = 0;
    xR21 [0] = 550;
    xR21 [1] = 750;
    xR21 [2] = 950;
    yDim21[0] = random(100, 300);
    yDim21[1] = random(100, 300);
    yDim21[2] = random(100, 300);
  }
}

void mouseClicked20() {
  divi20 = mouseX/25.0;
  divj20 = mouseY/25.0;
  if (mouseButton == RIGHT) {
    for (int i = 0; i < 700; i+= 20) {
      for (int j = 0; j < 700; j+= 20) {
        vague20[(i/20)*35+(j/20)] = new orbit20(radians( (i/divi20) ), i, j);
      }
    }
  } else if (mouseButton == LEFT) {
    for (int i = 0; i < 700; i+= 20) {
      for (int j = 0; j < 700; j+= 20) {
        vague20[(i/20)*35+(j/20)] = new orbit20(radians( (i/divi20) + (j/divj20) ), i, j);
      }
    }
  }
}

void mousePressed19() {
  if (menu19 == true) {
    if (mouseX >= 225 && mouseX <= 225+250 && mouseY >= 275 && mouseY <= 325) {
      menu19 = false;
      jeu19 = true;
    }
  } else if (mort19 == true) {
    if (mouseX >= 225 && mouseX <= 225+250 && mouseY >= 275 && mouseY <= 325) {
      mort19 = false;
      jeu19 = true;
      score19 = 0;
      vie19 = 10;
      x19 = 0;
      y19 = 0;
      xE19 = 510;
      yE19 = 510;
      xP19 = 480;
      yP19 = 480;
    }
  }
}


void mouseClicked15() {

  point15[nbrPoints15] = new ver15(mouseX, mouseY);
  nbrPoints15 ++;
}

void mouseWheel(MouseEvent event) {
  switch(jeu) {

  case 12:
    mouseWheel12(event);
    break;
  }
}
void mouseWheel12(MouseEvent event) {
  float e = event.getCount();
  if (e == 1) {
    taille12 = taille12/1.2;
  } else if (e == -1) {
    taille12 = taille12*1.2;
  }
}

void mousePressed16() {
  if (etat16 == 1) {
    if (mouseX > 620*(700.0/800) && mouseX < (620+300)*(700.0/800) && mouseY > 415*(700.0/800) && mouseY < (415+70)*(700.0/800)) {
      etat16 = 2;
    }
  } else if (etat16 == 2) {
    if (mouseX > 43*(700.0/800) && mouseX < (43+250)*(700.0/800) && mouseY > (460+220)*(700.0/800) && mouseY < (460+70+220)*(700.0/800)) {
      // joue le son du récapitulatif de mission
      if (mission16 == false) {
        mission16 = true;
      } else {
        mission16 = false;
      }
    }
  }
}

void mousePressed12() {
  if (affMenu12 == true) {
    if (mouseX > 550 && mouseX < 600 && mouseY > 110 && mouseY < 155) {
      crea12 = true;
    }//---------------------------------------------------------------------Créa
    if (mouseX > 550 && mouseX < 600 && mouseY < 30) {
      crea12 = false;
    }
    if (mouseX > 550 && mouseX < 625 && mouseY > 155 && mouseY < 230) {
      posCel12 = true;
    }//---------------------------------------------------------------------G/D
    if (mouseX > 625 && mouseX < 700 && mouseY > 155 && mouseY < 230) {
      posCel12 = false;
    }//---------------------------------------------------------------------G/D
    if (mouseX > 550 && mouseX < 700 && mouseY > 230 && mouseY < 260) {//---------------------------------------------------------------------Demi Block
      if (demiBlock12 == true) {
        demiBlock12 = false;
      } else {
        demiBlock12 = true;
      }
    }
    if (mouseX > 550 && mouseX < 575 && mouseY > 30 && mouseY < 80) {
      if (fr12 > 1 && fr12 <= 10) {
        fr12 --;
      } else if (fr12 > 10) {
        fr12 -= 2;
      }
    }
    if (mouseX > 675 && mouseX < 700 && mouseY > 30 && mouseY < 80) {
      if (fr12 >= 1 && fr12 < 10) {
        fr12 ++;
      } else if (fr12 >= 10 && fr12 < 100) {
        fr12 += 2;
      }
    }
    if (mouseX > 550 && mouseX < 700 && mouseY > 260 && mouseY < 290) {
      nettoyer12();
    }//---------------------------------------------------------------------nettoyer
    if (mouseX > 550 && mouseX < 625 && mouseY > 290 && mouseY < 320) {//---------------------------------------------------------------------H/B
      if (retourHB12 == true) {
        retourHB12 = false;
      } else {
        retourHB12 = true;
      }
    }
    if (mouseX > 625 && mouseX < 700 && mouseY > 290 && mouseY < 320) {//---------------------------------------------------------------------H/B
      if (retourGD12 == true) {
        retourGD12 = false;
      } else {
        retourGD12 = true;
      }
    }

    if (mouseX > 550) {
      if (mouseY > 320 && mouseY < 350) {
        switch(strS12) {
          case(0):
          if (Ca12 < nbrCanon12) {
            Ca12 ++;
          } else {
            Ca12 = 1;
          }
          changeStruct12("canon", Ca12);
          break;
          case(1):
          if (Va12 < nbrVaisseau12) {
            Va12 ++;
          } else {
            Va12 = 1;
          }
          changeStruct12("vaisseau", Va12);
          break;
          case(2):
          if (Sa12 < nbrStable12) {
            Sa12 ++;
          } else {
            Sa12 = 1;
          }
          changeStruct12("stable", Sa12);
          break;
          case(3):
          if (Ia12 < nbrInstable12) {
            Ia12 ++;
          } else {
            Ia12 = 1;
          }
          changeStruct12("instable", Ia12);
          break;
        }
      }

      if (mouseY > 350 && mouseY < 380) {
        strS12 = 0;
        changeStruct12("canon", Ca12);
      }
      if (mouseY > 380 && mouseY < 410) {
        strS12 = 1;
        changeStruct12("vaisseau", Va12);
      }
      if (mouseY > 410 && mouseY < 440) {
        strS12 = 2;
        changeStruct12("stable", Sa12);
      }
      if (mouseY > 440 && mouseY < 470) {
        strS12 = 3;
        changeStruct12("instable", Ia12);
      }

      if (mouseY > 470) {
        switch(strS12) {
          case(0):
          if (Ca12 > 1) {
            Ca12 --;
          } else {
            Ca12 = nbrCanon12;
          }
          changeStruct12("canon", Ca12);
          break;
          case(1):
          if (Va12 > 1) {
            Va12 --;
          } else {
            Va12 = nbrVaisseau12;
          }
          changeStruct12("vaisseau", Va12);
          break;
          case(2):
          if (Sa12 > 1) {
            Sa12 --;
          } else {
            Sa12 = nbrStable12;
          }
          changeStruct12("stable", Sa12);
          break;
          case(3):
          if (Ia12 > 1) {
            Ia12 --;
          } else {
            Ia12 = nbrInstable12;
          }
          changeStruct12("instable", Ia12);
          break;
        }
      }
    }
    //rect(650,80,150,30);
    if (mouseX > 550 && mouseY > 80 && mouseY < 110) {
      if (ttGrilleaff12 == true) {
        ttGrilleaff12 = false;
      } else {
        ttGrilleaff12 = true;
      }
    }
  }
}

void mousePressed11() {
  if (Mort11 == true) {
    if (mouseX >= 100*(700.0/400) && mouseX <= 270*(700.0/400) && mouseY >= 200*(700.0/400) && mouseY <= 250*(700.0/400) ) {
      Mort11 = false;
      tempsMili11 = 0;
      vie11 = 5;
      tempsSau11 = 0;
      x11=300;
      y11=300;
      xR11 = -200;
      yR11 = -200;
      xR211 = 200;
      yR211 = -200;
      xVB11 = -2;
      yVB11 = 2;
      for (int xp = 0; xp <= 9; xp++) {
        secondB11[xp] =false;
        xBI11[xp] =200;
        yBI11[xp] = 200;
        xVBI11[xp] = 0;
        yVBI11[xp] =0;
      }
    }
  }
}

void mousePressed5() {
  for (int k = 0; k <= 4; k++) {
    if (mouseX > xCj5[k] && mouseX < xCj5[k]+106 && mouseY > yCj5[k] && mouseY < yCj5[k]+150) {
      xCj5[k] = random(10, 500);
      yCj5[k] = random(10, 500);
      visj5[k] = false;
    }
  }
}

void mousePressed2() {
  if (mouseX > 260 && mouseX < 260+200 && mouseY > 550 && mouseY < 550+70) {
    etatj2 = 0;
    viej2 = 50;
    xj2 = 350;
    yj2 = 350;
    for (int i = 0; i < nbrMissj2; i ++) {
      Missilesj2[i].actif = false;
    }
    nbrMissj2 = 0;
    for (int i = 0; i < nbrAstej2; i ++) {
      astej2[i].actif = false;
    }
    nbrAstej2 = 0;
    for (int i = 0; i < 15; i++) {
      float rand = random(0, 2*PI);
      astej2[nbrAstej2] = new asteoridj2(350+cos(rand)*random(500, 700), 350+sin(rand)*random(500, 700), rand+PI+random(-0.5, 0.5), random(30, 100), random(30, 100));
      nbrAstej2 ++;
    }
  }
}

void mousePressed6() {
  if (mouseX >= xj6*(700.0/400) && mouseX <= (xj6+30)*(700.0/400) && mouseY >= yj6*(700.0/400) && mouseY <= (yj6+30)*(700.0/400)) {
    xj6 = random(10, 360);
    yj6 = random(10, 360);
    scorej6 ++;
  } else {
    Mortj6 = true;
  }
  x1j6 = random(10, 360);
  y1j6 = random(50, 360);
  x22j6 = random(10, 360);
  y22j6 = random(50, 360);
  x3j6 = random(10, 360);
  y3j6 = random(50, 360);
  x4j6 = random(10, 360);
  y4j6 = random(50, 360);
  x5j6 = random(10, 360);
  y5j6 = random(50, 360);
  for (int loop = 0; loop <18; loop++) {
    Couleurj6[loop] = random(0, 254);
  }
  if (mouseX >= 120*(700.0/400) && mouseX <=270*(700.0/400) && mouseY >= 200*(700.0/400) && mouseY <=240*(700.0/400) && Mortj6 == true) {
    Mortj6 = false;
    scorej6 = 0;
  }
}
