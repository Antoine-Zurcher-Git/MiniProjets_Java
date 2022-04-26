

void keyPressed() {
  touches[keyCode] = true;
  if (touches[82] && touches[16] && touches[59]) {// maj r .
    jeu = 0;
  }
  if (jeu == 1) {
    keyPressed1();
  }
  if(jeu == 7){
    keyPressed7();
  }
  if(jeu == 13){
    keyPressed13();
  }
  if(jeu == 14){
    keyPressed14();
  }
  if(jeu == 27){
    keyPressed27();
  }
}

void keyPressed27(){
  if (key == CODED){
    
  }else{
    if (key==BACKSPACE) {
       if (texte27.length()>0) 
       {        
         texte27=texte27.substring(0, texte27.length()-1);
       }
    }else{
    texte27+=key;
    }
    if (key==RETURN || key==ENTER){
      longText27 = texte27.length()-1;
      char[] tabl = new char[longText27+1];

      for(int loop = 0; loop < longText27;loop++){
        tabl[longText27-(loop+1)] = texte27.charAt(loop);
      }
      //doit afficher jusqu'a longText
      for(int lpe = 0; lpe < longText27; lpe++){
        tabl227[lpe] = tabl[lpe];
      }
      
      
      texte27 = "";
    }
  }
  
}

void keyPressed1() {
  if (entrerj1 == true) {
    if (key==CODED) {
    } else
    {
      if (key==BACKSPACE) {
        if (text1j1[numj1].length()>0) {
          text1j1[numj1]=text1j1[numj1].substring(0, text1j1[numj1].length()-1);
        }
      } else if (key==RETURN || key==ENTER) {
        numj1++;
        if (numj1 > 22) {
          for (int lop = 0; lop <= 22; lop++) {
            if (text1j1[lop].length() <= 0) {
              limitej1 = lop;
              lop = 23;
            }
          }
          numj1 = int(random(limitej1));
          entrerj1 = false;
        }
      } else {
        text1j1[numj1]+=key;
      }
    }
  } else {
    if (key == ENTER || key == RETURN) {
      numj1 = int(random(limitej1));
    }
  }
}

void keyPressed7(){
  if (key == CODED) {
  } else if (keyCode == BACKSPACE && text7.length() > 0) {
    text7=text7.substring(0, text7.length()-1);
  } else if (key==RETURN || key==ENTER) {
    if (rein7 == false) {
      Cry7();
      rein7 = true;
    } else {
      rein7 = false;
      text7 = "";
      textCry7 = "";
    }
  } else {
    if (keyCode != BACKSPACE) {
      text7 += key;
    }
  }
}

void keyPressed14(){
  if(key == 'm'){
    Force14 += Force14;
    if(Force14 == 0){
      Force14 += 0.0000001;
    }
  }
  if(key == 'p'){
    Force14 -= Force14;
    if(Force14 == 0){
      Force14 -= 0.0000001;
    }
  }
  if(key == 'y'){
    if(SuivreG14 == true){
      SuivreG14 = false;
    }else{
      SuivreG14 = true;
    }
  }
}

void keyPressed13() {
  fill(70);
  noStroke();
  if (key == 'a') {
    rect(0, 670, 200, 50);
    Collia13();
  } else if (key == 'z') {
    rect(200, 670, 200, 50);
    Colliz13();
  } else if (key == 'e') {
    rect(400, 670, 200, 50);
    Collie13();
  }
}

void keyReleased() {
  touches[keyCode] = false;
}