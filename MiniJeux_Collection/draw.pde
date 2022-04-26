
void draw() {
  switch(jeu) {
  case 0:
    pushStyle();
    pushMatrix();
    draw0();
    popMatrix();
    popStyle();
    break;
  case 1:
    pushStyle();
    pushMatrix();
    draw1();
    popMatrix();
    popStyle();
    break;

  case 2:
    pushStyle();
    pushMatrix();
    draw2();
    popMatrix();
    popStyle();
    break;

  case 3:
    pushStyle();
    pushMatrix();
    draw3();
    popMatrix();
    popStyle();
    break;

  case 4:
    pushStyle();
    pushMatrix();
    draw4();
    popMatrix();
    popStyle();
    break;

  case 5:
    pushStyle();
    pushMatrix();
    draw5();
    popMatrix();
    popStyle();
    break;

  case 6:
    pushStyle();
    pushMatrix();
    draw6();
    popMatrix();
    popStyle();
    break;

  case 7:
    pushStyle();
    pushMatrix();
    draw7();
    popMatrix();
    popStyle();
    break;

  case 8:
    pushStyle();
    pushMatrix();
    draw8();
    popMatrix();
    popStyle();
    break;
    
  case 9:
    pushStyle();
    pushMatrix();
    draw9();
    popMatrix();
    popStyle();
    break;
    
  case 10:
    pushStyle();
    pushMatrix();
    draw10();
    popMatrix();
    popStyle();
    break;
    
  case 11:
    pushStyle();
    pushMatrix();
    draw11();
    popMatrix();
    popStyle();
    break;
    
  case 12:
    pushStyle();
    pushMatrix();
    draw12();
    popMatrix();
    popStyle();
    break;
    
  case 13:
    pushStyle();
    pushMatrix();
    draw13();
    popMatrix();
    popStyle();
    break;
    
  case 14:
    pushStyle();
    pushMatrix();
    draw14();
    popMatrix();
    popStyle();
    break;
    
  case 15:
    pushStyle();
    pushMatrix();
    draw15();
    popMatrix();
    popStyle();
    break;
    
  case 16:
    pushStyle();
    pushMatrix();
    draw16();
    popMatrix();
    popStyle();
    break;
    
  case 17:
    pushStyle();
    pushMatrix();
    draw17();
    popMatrix();
    popStyle();
    break;
    
  case 18:
    pushStyle();
    pushMatrix();
    draw18();
    popMatrix();
    popStyle();
    break;
    
  case 19:
    pushStyle();
    pushMatrix();
    draw19();
    popMatrix();
    popStyle();
    break;
    
  case 20:
    pushStyle();
    pushMatrix();
    draw20();
    popMatrix();
    popStyle();
    break;
    
  case 21:
    pushStyle();
    pushMatrix();
    draw21();
    popMatrix();
    popStyle();
    break;
    
  case 22:
    pushStyle();
    pushMatrix();
    draw22();
    popMatrix();
    popStyle();
    break;
    
  case 23:
    pushStyle();
    pushMatrix();
    draw23();
    popMatrix();
    popStyle();
    break;
    
  case 24:
    pushStyle();
    pushMatrix();
    draw24();
    popMatrix();
    popStyle();
    break;
  
  case 25:
    pushStyle();
    pushMatrix();
    draw25();
    popMatrix();
    popStyle();
    break;
    
  case 26:
    pushStyle();
    pushMatrix();
    draw26();
    popMatrix();
    popStyle();
    break;
    
  case 27:
    pushStyle();
    pushMatrix();
    draw27();
    popMatrix();
    popStyle();
    break;
    
  case 28:
    pushStyle();
    pushMatrix();
    draw28();
    popMatrix();
    popStyle();
    break;
    
  case 29:
    pushStyle();
    pushMatrix();
    draw29();
    popMatrix();
    popStyle();
    break;
    
  case 30:
    pushStyle();
    pushMatrix();
    draw30();
    popMatrix();
    popStyle();
    break;
    
  case 31:
    pushStyle();
    pushMatrix();
    draw31();
    popMatrix();
    popStyle();
    break;
    
  case 32:
    pushStyle();
    pushMatrix();
    draw32();
    popMatrix();
    popStyle();
    break;
    
  case 33:
    pushStyle();
    pushMatrix();
    draw33();
    popMatrix();
    popStyle();
    break;
    
  case 34:
    pushStyle();
    pushMatrix();
    draw34();
    popMatrix();
    popStyle();
    break;
    
  case 35:
    pushStyle();
    pushMatrix();
    draw35();
    popMatrix();
    popStyle();
    break;
    
  }
}

void draw35() {
  scale(700.0/400);
  if (Mort35 == false) {
    temps35 += 0.1;
    fill(20, 20, 20);
    background(255);
    dessiner35(); // on dessine
    ellipse(x35, 250, 10, 10);
    ellipse(x35, 150, 10, 10);
    ellipse(x35, 50, 10, 10);

    noStroke();
    fill(215, 40, 45);
    for (int lp = 0; lp <= 5; lp++) {
      rect(xE35[lp], yE35[lp], 20, 10);
    }
    for (int loop = 0; loop <= 5; loop++) {
      if (yE35[loop] <= - 30) {
        yE35[loop] = 410;
        xE35[loop] = random(0, 400);
        score35 ++;
      }
    }
    collision35();
    textSize(25);
    fill(20);
    text("Vies : " + Vie35, 10, 20);
    text("Score : " + score35, 250, 20);
    if (Vie35 <= 0) {
      temps35 = 0;
      tempsS35 = 0;
      Mort35 = true;
      xE35[0] = random(0, 400);
      xE35[1] = random(0, 400);
      xE35[2] = random(0, 400);
      xE35[3] = random(0, 400);
      xE35[4] = random(0, 400);
      xE35[5] = random(0, 400);

      yE35[0] = 410;
      yE35[0] = 460;
      yE35[0] = 510;
      yE35[0] = 560;
      yE35[0] = 610;
      yE35[0] = 660;
      score35 = 0;
      Vie35 = 10;
    }
  } 
  else {
    background(255);
    fill(20);
    rect(100, 175, 200, 50);
    fill(230);
    textSize(25);
    text("Commencer", 125, 210);
  }
}


void draw34() {
  background(20);
  aff34();
  depla34();
}

void draw33() {
  scale(700.0/500);
  if(Mort33 == false){
    
    background(200);
    noStroke();
    fill(20);
    rect(x33,y33,50,50);
    if(mouseX >= x33*(700.0/500) && mouseX <= (x33+50)*(700.0/500) && mouseY >= y33*(700.0/500) && mouseY <= (y33+50)*(700.0/500)){
      x33 += random(min33,max33);
      y33 += random(min33,max33);
      temps33 += 0.1;
      dedans33 = true;
    }else if(dedans33 == true){
      Mort33 = true;
    }
    textSize(25);
    text("Score : " + temps33,140,45);
    if(x33 < 0 || x33 > 450 || y33 < 0 || y33 > 450){
      Mort33 = true;
    }
  }else{
    background(200);
    fill(50);
    rect(150,20,200,40);
    textSize(25);
    fill(200);
    text("Recommencer",160,45);
    fill(50);
    text("Score : " + temps33,160,100);
  }
}


void draw32(){
  textSize(15);
  background(255);
  stroke(50,50,50,50);
  strokeWeight(3);
  line(0,250,width,250);
  for(int i = 0; i < texte32.length() ; i ++){
    nbrC32[i].affC((i+1)*texte32.length());
  }
}

void draw31(){
  scale(700.0/500);
  background(255);
  
  
  if(mousePressed == true){
    vx31 += (mouseX-pmouseX)/3.0;
    vy31 += (mouseY-pmouseY)/3.0;
  }
  
  if(vx31 > 0.2){
    vx31 -= 0.1;
  }else if( vy31 < -0.2){
    vx31 += 0.1;
  }
  
  if(vy31 > 0.2){
    vy31 -= 0.1;
  }else if( vy31 < -0.2){
    vy31 += 0.1;
  }
  
  x31 += vx31;
  y31 += vy31;
  
  if(x31 < -15){ //gauche
    x31 = -15;
    vx31 = -vx31/1.5;
  }
  if(y31 < -15){ // haut
    y31 = -15;
    vy31 = -vy31/1.5;
  }
  if(x31+30 > 500){ // droite
    x31 = 455;
    vx31 = -vx31/1.5;
  }
  if(y31+30 > 500){ // bas
    y31 = 455;
    vy31 = -vy31/1.5;
  }
  
  fill(0);
  stroke(100);
  rect(x31+15,y31+15,30,30);
  
}

void draw30() {
  background(20);
  score30 += 0.07;
  if(cligno30 == false || temps30%2 == 0){
    image(vaisseau30, xV30, yV30, 50, 68);
  }
  if (touches[37] == true && xV30 > 0) {
    xV30 -= vitV30;
  }
  if (touches[39] == true && xV30+50 < width) {
    xV30 += vitV30;
  }
  if (touches[38] == true && yV30 > 0) {
    yV30 -= vitV30;
  }
  if (touches[40] == true && yV30+70 < height) {
    yV30 += vitV30;
  }
  for (int i = 0; i < 10; i ++) {
    astorides30[i].deplaff();
  }
  if(vie30 <= 0){
    xV30 = 350;
    yV30 = 600;
    score30 = 0;
    vie30 = 5;
    cligno30 = false;
    for (int i = 0; i < 10; i ++) {
      astorides30[i] = new asteo30();
    }
  }
  
  fill(255);
  textSize(30);
  text("Score : "+int(score30),10,35);
  text("Vie : "+vie30,10,70);
  if(cligno30 == true){
    temps30 ++;
    if(temps30 > 50){
      temps30 = 0;
      cligno30 = false;
    }
  }
}

void draw29(){
  scale(700.0/500);
  if(Mort29 == false){
    background(20);
    nbrDeCorps29 = score29+2;
    
    texte29();
    lignes29();
    Collisions29();
    perso29();
    deplacement29();
    MurInvi29();
    boule29();
    Body29();
    BrocoAff29();
    MAJ29();
    
  }else{
    background(20);
    texteMort29();
    if(Mort29 == true && mousePressed == true){
      mort29();
    }
  }
  
}

void draw28() {
  scale(700.0/500);
  background(84, 179, 189);
  if (yP28 == 40) {
    frameRate(20);
  } else if (yP28 == 115) {
    frameRate(40);
  } else if (yP28 == 190) {
    frameRate(60);
  } else if (yP28 == 325) {
    frameRate(90);
  } else if (yP28 == 400) {
    frameRate(120);
  }

  if (menu28 == false) {
    Sol28();
    Mur28();
    rectan28();
    humain28();
    text("Vies : "+vies28, 10, 30);
    text("Score : "+score28, 300, 30);
    temps28 += 0.1;
  } else {

    noStroke();
    fill(20);
    rect(75, 225, 150, 50);
    rect(275, 225, 150, 50);
    fill(50);
    rect(175, 15, 150, 50);
    rect(175, 90, 150, 50);
    rect(175, 165, 150, 50);
    rect(175, 300, 150, 50);
    rect(175, 375, 150, 50);
    rect(5, 15, 155, 50);
    fill(230);
    textSize(28);
    text("Avion", 100, 260);
    text("Canadaire", 285, 260);

    text("Simple", 185, 50);
    text("Débutant", 185, 125);
    text("Normal", 185, 200);
    text("Complexe", 185, 335);
    text("Difficile", 176, 410);
    text("Difficulté : ", 10, 50);
    if (mousePressed == true) {
      if (mouseX >= 75*(700.0/500) && mouseX <= 225*(700.0/500) && mouseY >= 225*(700.0/500) && mouseY <= 325*(700.0/500)) {
        Avions28 = true;
        menu28 = false;
      } else if (mouseX >= 275*(700.0/500) && mouseX <= 425*(700.0/500) && mouseY >= 225*(700.0/500) && mouseY <= 325*(700.0/500)) {
        Avions28 = false;
        menu28 = false;
      } else if (mouseX >= 175*(700.0/500) && mouseX <= 325*(700.0/500) && mouseY >= 15*(700.0/500) && mouseY <= 65*(700.0/500)) {
        yP28 = 40;
      } else if (mouseX >= 175*(700.0/500) && mouseX <= 325*(700.0/500) && mouseY >= 90 *(700.0/500)&& mouseY <= 140*(700.0/500)) {
        yP28 = 115;
      } else if (mouseX >= 175*(700.0/500) && mouseX <= 325*(700.0/500) && mouseY >= 165*(700.0/500) && mouseY <= 215*(700.0/500)) {
        yP28 = 190;
      } else if (mouseX >= 175*(700.0/500) && mouseX <= 325*(700.0/500) && mouseY >= 300*(700.0/500) && mouseY <= 350*(700.0/500)) {
        yP28 = 325;
      } else if (mouseX >= 175*(700.0/500) && mouseX <= 325*(700.0/500) && mouseY >= 375*(700.0/500) && mouseY <= 425*(700.0/500)) {
        yP28 = 400;
      }
    }
    ellipse(350, yP28, 25, 25);
  }
}

void draw27 (){
  scale(700.0/500);
  background(20,20,20);
  affichage27();
}

void draw26() {
  scale(700.0/500);
  background(230);
  Mur26();
  Dessin26();
  DeplaE26();
}

void draw25() {
  scale(700.0/400);
  background(20, 20, 20);
  if (mortt25 == false) {
    temps25 += 0.05;
    scoreF25 = (score25/((temps25)+1/100))*10;
    fill(104, 100, 210);
    noStroke();
    rect(x25, y25, 30, 30);
    fill(88, 235, 117);
    rect(x225, y225, 30, 30);
    if (mouseX > x25*(700.0/400) && mouseX < (x25+30)*(700.0/400) && mouseY > y25*(700.0/400) && mouseY < (y25+30)*(700.0/400)) {
      x25 = random(5, 365);
      y25 = random(5, 365);
      x225 = random(5, 365);
      y225 = random(5, 365);
      if ( (x225+20)*(700.0/400) > mouseX && (x225-20)*(700.0/400) < mouseX && (y225+20)*(700.0/400) > mouseY && (y225-20)*(700.0/400) < mouseY) {
        x225 = random(5, 365);
        y225 = random(5, 365);
      }
      score25++;
    }

    if (mouseX > x225*(700.0/400) && mouseX < (x225+30)*(700.0/400) && mouseY > y225*(700.0/400) && mouseY < (y225+30)*(700.0/400)) {
      mortt25 = true;
    }
    if (x225 > x25-20 && x225 < x25+20 && y225 > y25-20 && y225 < y25+20) {
      x225 = random(5, 365);
      y225 = random(5, 365);
    }
    fill(254, 254, 254);
    textSize(32);
    text("Score : "+scoreF25, 10, 30);
    fill(20);
    noStroke();
    rect(195, 5, 200, 30);
  } else {
    fill(150, 150, 150); 
    rect(0, 300, 400, 100);
    fill(254, 254, 254);
    textSize(35);
    text("Vous êtes mort !", 80, 180);
    text("Score : " + scoreF25, 130, 230);
    text("Recommencer", 90, 355);
  }
}

void draw24() {
  translate(100, 0);
  RectX24 = mouseX-50;
  RectX224 = CercleX24-50;
  VitB24 = 12-((Vies24+ViesEn24)/2);
  background(50);
  Mur24();
  Aff24();
  DeplaCercle24();
}


void draw23() {
  background(20);
  stroke(200, 50, 50);
  line(width/2, height/2-30, width/2, height/2+30);
  line(width/2-30, height/2, width/2+30, height/2);
  for (int a = 0; a < 144; a ++) {
    lesPl23[a].depla();
  }
}

void draw22() {
  if (couleur22 == true) {
    background(C122, C222, C322);
  } else {
    background(20, 20, 20);
  }

  if (jeu22 == true) {
    textSize(20);
    text(Sujet22[AlS22] + " " + Verbe22[AlV22]  + " " + Apverbe22[AlA22] + ", " + Adverbe22[Alad22], 10, 100);
  }
  if (commencer22 == true) {
    noStroke();
    fill(59, 102, 234);
    rect(0, 0, 500, 200);

    fill(20, 20, 20);
    rect(500, 0, 500, 200);

    fill(250, 250, 250);
    textSize(33);
    text("Avec couleur", 130, 30);
    text("Sans couleur", 630, 30);
  }
}

void draw21() {
  scale(700.0/400);
  if (jeu21 == true) {
    background(20, 20, 20);
    Deplacement21();
    rectV21();
    limite21();
    recta21();
    coli21();
  }
}

void draw20() {
  translate(50, 50);
  scale(0.8);
  background(255);
  for (int i = 0; i < 35; i++) {
    for (int j = 0; j < 35; j++) {
      vague20[i*35+j].orb();
    }
  }
  for (int i = 0; i < 1225; i ++) {
    if (i < 1225-36 && ((i-(int(i/35)))/((int(i/35)+1))%34) != 0) {
      stroke(255);
      fill(100);
      quad(vague20[i].px(), vague20[i].py(), vague20[i+1].px(), vague20[i+1].py(), vague20[i+1+35].px(), vague20[i+1+35].py(), vague20[i+35].px(), vague20[i+35].py() );
    }
  }
  quad(vague20[0].px(), vague20[0].py(), vague20[1].px(), vague20[1].py(), vague20[1+35].px(), vague20[1+35].py(), vague20[35].px(), vague20[35].py() );
  textSize(25);
  text("x : "+(mouseX/25.0), 23*2-100, 432*2-100);
  text("y : "+(mouseY/25.0), 23*2-100, 432*2-100+30);
}

void draw19() {
  if (jeu19 == true) {
    if ( vie19 <= 0) {
      jeu19 = false;
      mort19 = true;
    }
    if ( tempsMilli19 - tempsSauv19 < 400 ) {
      cooldown19 = true;
    } else {
      cooldown19 = false;
    }
    tempsMilli19 = millis();

    stroke(20, 20, 20);
    background(254, 254, 254);
    depla19();
    deplaE19();
    collisions19();
    if (clinio19 == false) {
      stroke(231, 53, 55);
      fill(231, 53, 55);
      rect(x19, y19, 30, 30);
      if (cooldown19 == true) {
        clinio19 = true;
      }
    } else if (clinio19 == true) {
      clinio19 = false;
    }
    stroke(100, 220, 200);
    fill(100, 220, 200);
    rect(xE19, yE19, 30, 30); 

    stroke(245, 250, 60);
    fill(245, 250, 60);
    rect(xP19, yP19, 45, 45); 

    textSize(32);
    fill(30, 50, 230);
    text("Vies : " + vie19, 10, 30);
    text("Score : " + score19, 510, 30);
  } else if (menu19 == true) {
    background(backGround19);
    noStroke();
    fill(250);
    rect(225, 275, 250, 50);
    fill(20);
    textSize(30);
    text("Commencer", 225+25, 305);

    backGround19 += VB19;
    if (backGround19 > 255) {
      VB19 = -VB19;
    } else if (backGround19 < 0) {
      VB19 = -VB19;
    }
  } else if (mort19 == true) {
    background(backGround19);
    noStroke();
    fill(250);
    rect(225, 275, 250, 50);
    rect(225, 125, 250, 50);
    fill(20);
    textSize(30);
    text("Recommencer", 250, 305);
    text("Score : "+score19, 250, 155);

    backGround19 += VB19;
    if (backGround19 > 255) {
      VB19 = -VB19;
    } else if (backGround19 < 0) {
      VB19 = -VB19;
    }
  }
}

void draw18() {
  scale(700.0/500);
  background(r18, v18, b18);
  temps18 += 0.1;
  ecart18 = 3+(temps18/difcl18);
  esp18 = 50+ecart18;
  aff18();
  coll18();
  fill(250);
  textSize(25);
  text("Score : "+int(score18), 10, 25);
  text("Vies : "+vie18, 400, 25);
  if (vie18 <= 0) {
    temps18 = 0;
    tempsS18 = 0;

    score18 = 0;
    vie18 = 5;
  }
  if (score18 > scoreM18) {
    scoreM18 = score18;
  }
}

void draw17(){
  scale(700.0/740);
  //background(255);
  aff17();
  depla17();
  collision17();
  temps17 += 0.1;
}

void draw16() {
  scale(700.0/800);
  if (etat16 == 0) {
    background(30, 5, 170);
    fill(0);
    stroke(200);
    strokeWeight(5);
    for (int i = 1; i < nbrP16; i ++) {
      line(px16[i], py16[i], px16[i-1], py16[i-1]);
    }
    for (int i = 0; i < nbrP16; i ++) {
      px16[i] -= vitesseDepla16;
    }
    if (px16[nbrP16-1] < 1505) {
      nouvPoint16();
    }
    if (mousePressed == true && mouseButton == RIGHT) {
      crea16();
      vie16 --;
    } else if (mousePressed == true && mouseButton == LEFT) {
    }
    if (touches[90] || touches[38]) {
      y16 -= 10;
    }
    if (touches[83] || touches[40]) {
      y16 += 10;
    }
    if (y16 < 20) {
      y16 = 20;
    }
    if (y16 > 780) {
      y16 = 780;
    }
    //if(d == 1){
    //  vitesseDepla = 4;
    //}else{
    //  vitesseDepla = 0;
    //}
    float angle = Dangle16();
    //println(angle);
    pushMatrix();
    if (angleAct16 < angle-0.01) {
      angleAct16 += 0.01;
    } else if (angleAct16 > angle+0.01) {
      angleAct16 -= 0.01;
    }
    translate(x16, y16);
    rotate(angleAct16);
    //rect(-50,-20,100,40);
    image(vaisseau16, -50, -32, 100, 67);
    image(laser16, 50, -8, 1846, 16);
    //line(-800,0,1800,0);
    popMatrix();
    //y = mx+p m= 1/tan(angleAct) p = -m*200+y+20
    m16 = tan(angleAct16);
    p16 = -m16*200+y16;
    //line(200,m*200+p,1500,m*1500+p);
    //line(200,0,200,800);

    fill(255);
    textSize(25);

    text("Vie : "+vie16, 10, 25);
    text("Tué : "+score13, 10, 55);
    text("Invasion : "+invasion16, 10, 85);

    for (int i = 0; i < 50; i ++) {
      enmi16[i].deplaff();
      etoiles16[i].deplaS();
    }
    if (vie16 <= 0 || invasion16 >= 50) {
      etat16 =1 ;
    }
  } else if (etat16 == 1) {
    background(150);
    fill(0);
    textSize(40);
    strokeWeight(5);
    text("Résultat de la bataille", 550, 300);
    strokeWeight(2);
    if (invasion16 == 0) {
      text(score13*100, 570+50, 320+50);
    } else {
      text((score13/invasion16)*100, 570+50, 320+50);
    }
    fill(200);
    stroke(100);
    strokeWeight(5);
    rect(620, 415, 300, 70);
    fill(0);
    textSize(30);
    //println(mouseX+" "+mouseY);
    text("Retour à la base", 655, 460);
  } else if (etat16 == 2) {
    background(30, 5, 170);
    fill(0);
    stroke(200);
    strokeWeight(5);
    for (int i = 1; i < nbrP16; i ++) {
      line(px16[i], py16[i], px16[i-1], py16[i-1]);
    }
    for (int i = 0; i < nbrP16; i ++) {
      px16[i] -= vitesseDepla16;
    }
    if (px16[nbrP16-1] < 1505) {
      nouvPoint16();
    }
    image(vaisseau16, 150, 400, 100, 67);
    for (int i = 0; i < 50; i ++) {
      etoiles16[i].deplaS();
    }

    fill(255);
    textSize(40);
    if (temps16 < 1.5) {
      text("Appuyez sur espace pour commencer", 35, 70);
    } else if (temps16 > 2.1) {
      temps16 = 0;
    }
    
    pushMatrix();
    translate(23, 460); // base 960 180 puis 430 et 260

    fill(255, 72, 72, 190);
    stroke(255, 72, 72, 220);
    rect(0, 0, 300, 320);

    fill(255);
    textSize(30);
    text("Touches :", 20, 45);

    pushStyle();
    textSize(20);
    text("Descendre : s", 20, 90);
    text("Monter : z", 20, 120);
    text("Récapitulatif de la mission", 20, 185);

    fill(150, 150, 150, 190);
    stroke(150, 150, 150, 220);
    rect(20, 220, 250, 70);
    popStyle();

    text("MISSION", 85, 265);

    popMatrix();

    if (mission16 == true) {
      translate(333, 460); // 760 300
      fill(250, 250, 250, 190);
      stroke(250, 250, 250, 220);
      rect(0, 0, 535, 325);

      fill(100);
      textSize(18);
      text("La planète se fait attaquer par des aliens !", 15, 30);
      text("L'humanitée à réussie à construire un vaisseau", 15, 30+30);
      text("assez rapidement pour pouvoir se défendre.", 15, 30+60);
      text("Malheuresement Donald Trump à voulu s'occuper", 15, 30+90);
      text("du système directionnel. Votre vaisseau ne va", 15, 30+120);
      text("donc pas pouvoir se diriger et va suivre les ", 15, 30+150);
      text("ligne magnétique de l'éspace. Bonne chance pilote !", 15, 30+180);
      text("Vous êtes notre dernier mur face aux aliens !", 15, 30+210);
      text("Votre vaisseau ne résistera pas à plus de 3 aliens", 15, 30+240);
      text("et la Terre sera envahit dès que 50 aliens y seront", 15, 30+270);
    }

    if (keyPressed == true && key == ' ') {
      etat16 = 0;
      vie16 = 3;
      score16 = 0;
      invasion16 = 0;
      crea16(); // créé les points qui servent à la ligne magnétique
      for (int i = 0; i < 50; i++) { // Initialise les ennemis et les étoiles
        enmi16[i] = new Enemis16(random(1800, 2500)+i*500, random(10, 740), random(0.1, 7) );
        etoiles16[i] = new Star16(random(0, 1500)+i*10, random(10, 740), random(-0.1, 0) );
      }
    }
    temps16 += 0.1;
  }
}

void draw15() {
  if (nbrPoints15 > 0) {
    for (int i = 1; i < nbrPoints15; i ++) {
      point15[i].deplaVer();
    }
  }
  for (int i = 0; i < nbrPointAlea15; i ++) {
    pointAlea15[i].deplaVer();
  }
  if (numAp15 > 0) {
    if (fin15 == true) {
      for (int i = 1; i < numAp15; i ++) {
        pointappa15[i].deplaVer();
      }
      for (int i = numAp15; i < nbrPointAppa15-1; i ++) {
        pointappa15[i].deplaVer();
      }
    } else {
      for (int i = 1; i < numAp15; i ++) {
        pointappa15[i].deplaVer();
      }
    }
  }
}

void draw14() {
  background(20);
  //println(Force);
  translate(-worldCamera14.pos.x, -worldCamera14.pos.y);
  worldCamera14.draw();

  noStroke();
  aff14();
  Attraction14();
  for (int g = 0; g <= nbrP14-2; g++) {
    rayon14[g] = (sqrt(masse14[g]/PI))/densite14;
  }
}

void draw13(){
  translate(0, -200);
  scale(800.0/700);

  Vit113 += 0.00002;
  background(230);
  fill(20);
  textSize(35);
  text("Score : "+(score13/4), 10, 130+85);
  Aff13();
  recta13();
  Mur13();
}

void draw12(){
  background(255);
  scale(taille12);
  touche12();
  if (crea12 == false) {
    frameRate(fr12);
    action12();
    nbrTour12 ++;
  } else {
    frameRate(100);
    posBlock12();
  }
  deplaCam12();
  affichage12();
}

void draw11() {
  scale(700.0/400);
  if (Mort11 == false) {
    tempsMili11 += 0.05;

    nettoyer11();
    Deplacement11();
    rectV11();
    Limite11();
    IA211();
    IA11();
    if (invincibilit11 == true) {
      if (tempsMili11 > tempsSau11+1) {
        invincibilit11 = false;
      } else {
        if (clino11 == false) {
          clino11 = true;
        } else {
          clino11 = false;
        }
      }
    } else {
      clino11 = false;
    }
    Temps11 = tempsMili11;
    apparition11();
    if (vie11 <= 0) {

      Mort11 = true;
    }
  } else {
    background(20, 20, 20);
    fill(250, 250, 250);
    text("GAME OVER", 80, 60);
    rect(100, 200, 170, 50);
    fill(20);
    text("Restart", 130, 230);
  }
}


void draw10(){
  if (mousePressed == true && mouseButton == RIGHT) {
    translate(500, 500);
    scale(0.5);
    translate(-500, -500);
  }
  background(255);
  stroke(50);
  fill(150);
  ellipse(mouseX, mouseY, 20, 20);
  for (int i = 0; i < 400; i++) {
    plan10[i].depla();
    plan10[i].affichage();
  }
}

void draw7() {
  background(20);
  noStroke();
  fill(230);
  textSize(25);
  text(text7, 10, 50);
  text(textCry7, 10, 150);
  stroke(230);
  line(0, 100, 500, 100);
  for (int i = 0; i< 3; i ++) {
    text(char(int(random(65-26, 65+26))), random(16, 654), random(190, 675) );
  }
}

void draw9(){
  boolean fl = false;
  if (pose9 == false) {
    if ( y9+60+(80)*sin(rot9+PI/2.0)+cos(rot9+PI/2.0)*30 >= 800) {
      y9 = 800-cos(rot9+PI/2.0)*30-(80)*sin(rot9+PI/2.0)-60;
      pose9 = true;
      gp9 = true;
      if (sqrt(vitx9*vitx9+vity9*vity9) > 2) {
        crash9 = true;
      }
    } else if ( y9+60+(80)*sin(rot9+PI/2.0)-cos(rot9+PI/2.0)*30 >= 800) {
      y9 = 800-60-(80)*sin(rot9+PI/2.0)+cos(rot9+PI/2.0)*30;
      pose9 = true;
      gp9 = false;
      if (sqrt(vitx9*vitx9+vity9*vity9) > 2) {
        crash9 = true;
      }
    } else {
      x9 += vitx9;
      y9 += vity9;
      vity9 += grav9;
    }
    if (touches[37] || touches[81]) {
      rot9 -= 0.01;
    }
    if (touches[39] || touches[68]) {
      rot9 += 0.01;
    }
    if (touches[38] && fuel9 > 0 || touches[90] && fuel9 > 0) {
      vitx9 += cos(rot9+PI/2.0+PI)*mot9;
      vity9 += sin(rot9+PI/2.0+PI)*mot9;
      fl = true;
      fuel9 -= 0.35;
    }
  } else {
    if (gp9 == true && rot9 <= -0.01 && rot9 >= -PI/2) {
      if ( rot9 > -PI/9.0 && crash9 == false) {
        rot9 += 0.01;
      } else {
        rot9 -= 0.01;
        y9 += 0.3;
        crash9 = true;
      }
    } else if (rot9 > 0.01 && rot9 <= PI/2) {
      if ( rot9 < PI/9.0 && crash9 == false) {
        rot9 -= 0.01;
      } else {
        rot9 += 0.01;
        y9 += 0.3;
        crash9 = true;
      }
    } else {
      etat9 = 1;
    }
    if (mousePressed == true || touches[32]) {
      restart9();
    }
  }
  
  background(0);
  translate(0,-100);
  pushStyle();
  stroke(255);
  strokeWeight(3);
  fill(32, 106, 10);
  rect(20, 120, fuel9*660/100.0, 30);
  noFill();
  rect(20, 120, 660, 30);

  popStyle();

  pushStyle();
  stroke(30);
  strokeWeight(4);
  fill(100);
  ellipse(350, 5000+710, 10000, 10000);
  noFill();
  stroke(30);
  ellipse(123, 745, 35, 25);
  ellipse(558, 768, 132, 41);
  ellipse(277, 756, 93, 48);
  noStroke();
  if ( sqrt(vitx9*vitx9+vity9*vity9) > 2 ) {
    fill(255, 0, 0);
    ellipse(677, 700, 20, 20);
  } else {
    fill(0, 255, 0);
    ellipse(677, 700, 20, 20);
  }
  popStyle();

  fuse9(x9, y9, fl);
  if (etat9 == 1) {
    if (crash9 == false) {
      fill(255, 50, 50);
      textSize(50);
      text("Victoire !", 220, 320);
    } else {
      fill(50, 50, 255);
      textSize(50);
      text("MORT !", 260, 310);
    }
  }
}

void draw8() {
  scale(700.0/500);
  background(20);
  Dessin8();
  DeplaBar8();
  Depla8();
  Mur8();
  Colli8();
  if (score8 > Meilscore8) {
    Meilscore8 = score8;
  }
}

void draw6() {
  scale(700.0/400);
  if (Mortj6 == false) {
    background(20, 20, 20);
    Cubej6();
    textSize(27);
    fill(254, 254, 254);
    text("Clics : " + scorej6, 20, 30);
  } else {
    background(20, 20, 20);
    fill(254, 254, 254);
    textSize(35);
    text("Score : " + scorej6, 120, 190);
    stroke(254, 254, 254);
    rect(120, 200, 150, 40);
    fill(0, 0, 0);
    text("Restart", 135, 230);
    noStroke();
  }
}

void draw1() {
  background (20, 20, 20);
  if (entrerj1 == true) {
    fill(254, 254, 254);
    textSize(25);
    for (int loop = 0; loop < 23; loop++) {
      text(text1j1[loop], 10, 30+(30*loop));
    }
    rect(480, 650, 200, 50);
    fill(0, 0, 0);
    text("Commencer", 490, 680);
  } else {
    noStroke();
    fill(240, 240, 240);
    rect(0, 0, 650, 50);
    fill(20, 20, 20);
    text("Appuyer sur Entrer pour afficher un nouveau mot", 15, 30);
    fill(240, 240, 240);
    text(text1j1[numj1], 20, 200);
  }
}

void draw0() {
  background(20);
  noFill();
  stroke(200);
  strokeJoin(ROUND);
  strokeWeight(5);
  for (int i = 0; i < 6; i ++) {
    for (int j = 0; j < 6; j ++) {
      rect(15+114*i, 15+114*j, 100, 100);
    }
  }
  fill(200);
  textSize(40);
  for (int i = 0; i < 6; i ++) {
    for (int j = 0; j < 6; j ++) {
      text(str(j*6+i+1),42+114*i, 42+114*j, 100, 100);
    }
  }
}

void draw2() {
  if (etatj2 == 0) {
    if (nbrAstej2 >= 9999) {
      nbrAstej2 = 0;
    }
    background(0);
    pushStyle();
    fill(255, 50, 50);
    textSize(20);
    text("Vie : "+viej2, 11, 24);
    popStyle();
    pushMatrix();
    pushStyle();
    translate(xj2, yj2);
    rotate(orienj2);
    noFill();
    strokeWeight(2);
    stroke(255);
    triangle(0, 0-35, 0+(sqrt(2)/2.0)*20, 0+(sqrt(2)/2.0)*20, 0-(sqrt(2)/2.0)*20, 0+(sqrt(2)/2.0)*20);
    popStyle();
    popMatrix();
    //println(keyCode);
    if (touches[37] || touches[81]) {
      orienj2 -= 0.03;
    }
    if (touches[39] || touches[68]) {
      orienj2 += 0.03;
    }
    if (touches[38] || touches[90]) {
      xj2 -= cos(orienj2+PI/2.0)*vitj2;
      yj2 -= sin(orienj2+PI/2.0)*vitj2;
    }
    if (touches[40] || touches[83]) {
      xj2 += cos(orienj2+PI/2.0)*vitj2;
      yj2 += sin(orienj2+PI/2.0)*vitj2;
    }
    if (xj2 < 20) {
      xj2 = 20;
    }
    if (yj2 < 20) {
      yj2 = 20;
    }
    if (xj2 > 680) {
      xj2 = 680;
    }
    if (yj2 >680) {
      yj2 = 680;
    }
    coolDj2 ++;
    if (touches[32] && coolDj2 > 10 || mousePressed == true && coolDj2 > 10 ) {
      Missilesj2[nbrMissj2] = new missilej2(xj2, yj2, orienj2-PI/2.0);
      nbrMissj2 ++;
      coolDj2 = 0;
      if (nbrMissj2 >= 500) {
        nbrMissj2 = 0;
      }
    }
    if (nbrMissj2 > 0) {
      for (int i = 0; i < nbrMissj2; i ++) {
        Missilesj2[i].deplaff();
      }
    }
    if (nbrAstej2 > 0) {
      for (int i = 0; i < nbrAstej2; i ++) {
        astej2[i].deplaffa();
      }
    }
    if (coolDaj2 > 100) {
      float rand = random(0, 2*PI);
      astej2[nbrAstej2] = new asteoridj2(350+cos(rand)*random(500, 700), 350+sin(rand)*random(500, 700), rand+PI+random(-0.5, 0.5), random(30, 100), random(30, 100));
      nbrAstej2 ++; 
      coolDaj2 = 0;
    }
    coolDaj2 ++;
    if (viej2 <= 0) {
      etatj2 = 1;
    }
  } else if (etatj2 == 1) {
    background(0);
    strokeWeight(2);
    stroke(255);
    noFill();
    ellipse(360, 200, 150, 150);
    triangle(350, 233, 350+20, 233, 350+10, 233-30);
    ellipse(330, 170, 20, 20);
    ellipse(380, 170, 20, 20);
    line(326, 318, 326+70, 318);
    for (int i = 0; i <= 30; i += 15) {
      line(326+i, 267, 326+i, 267+50);
      line(326+70-i, 267, 326+70-i, 267+50);
    }
    fill(70);
    rect(260, 550, 200, 70);
    fill(255);
    textSize(30);
    text("Restart", 310, 595);
  }
}

void draw3() {
  background(255);
  ballesj3[0].bal();
  for (int i = 1; i < nbrBallej3; i ++) {
    ballesj3[i].bal();
  }
  tempsj3 ++;
  int coold = vitesseAppj3;
  if (vitesseAppj3 < 0) {
    coold = nbrBallej3;
  }
  if (tempsj3 > coold && nbrBallej3 < limitej3) {
    ballesj3[nbrBallej3] = new ballej3(random(50, 650), random(50, 650), random(-PI, PI), nbrBallej3);
    nbrBallej3 ++;
    tempsj3 = 0;
  }
}

void draw4() {
  scale(700.0/500);
  if (jeuj4 == true) {
    background(50);
    deplaj4();
    Murj4();
    Dessinj4();
    CollisionBoxj4();
  } else if (menuj4 == true) {
    background(50);
    fill(200);
    noStroke();
    rect(175, 225, 150, 50);
    fill(20);
    textSize(23);
    text("Commencer", 184, 255);
    if (mousePressed == true && mouseX >= (700.0/500)*175 && mouseX <= (700.0/500)*325 && mouseY >= (700.0/500)*225 && mouseY <= (700.0/500)*275) {
      menuj4 = false;
      jeuj4 = true;
    }
  } else if (mortj4 == true) {
    background(50);
    fill(200);
    noStroke();
    rect(175, 225, 170, 50);
    fill(20);
    textSize(23);
    text("Recommencer", 180, 255);
    fill(200);
    text("Score : "+scorej4, 180, 155);
    if (mousePressed == true && mouseX >= (700.0/500)*175 && mouseX <= (700.0/500)*325 && mouseY >= (700.0/500)*225 && mouseY <= (700.0/500)*275) {
      mortj4 = false;
      jeuj4 = true;
      xj4 = 50;
      yj4 = 50;
      xBar1j4 = 600;
      xBar2j4 = 900;
      scorej4 = 0;
    }
  }
}

void draw5() {
  tempsj5 += 0.1;
  if (tempsj5/100 < 4) {
    tempsMij5 = 2-tempsj5/100;
    tempsMaj5 = 6-tempsj5/100;
  } else {
    tempsMij5 = 1;
    tempsMaj5 = 4;
  }
  background(250);
  image(hangarj5, 0, 0, 1504, 700);
  affj5();
  corPosj5();
  viseurj5();
  tempsj5();
}
