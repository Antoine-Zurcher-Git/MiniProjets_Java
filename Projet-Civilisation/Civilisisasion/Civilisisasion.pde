
combattant carte[][] = new combattant[70][70];
//volonte carteV[][] = new volonte[70][70];
ArrayList<volonte> carteV  = new ArrayList<volonte>();

float deltaMutation = 0.2;

int nCivi = 15;

void setup() {
  size(700, 700);
  for (int x = 0; x < 70; x ++) {
    for (int y = 0; y < 70; y ++) {
      carte[x][y] = new combattant(x, y, color(0, 200, 0), 100, 5);
    }
  }
  for (int i = 0; i < nCivi; i ++) {
    color cc = color(random(0, 255), random(0, 255), random(0, 255));
    int x = int(random(0, 70));
    int y = int(random(0, 70));
    carte[x][y] = new combattant(x, y, cc, 100, 5);
  }
  //for (int i = 0; i < 20; i ++) {
  //  carte[10+i][30] = new combattant(10+i, 30, color(0, 0, 0), 100, 5);
  //  carte[10][30+i] = new combattant(10, 30+i, color(0, 0, 0), 100, 5);
  //  carte[10+i][50] = new combattant(10+i, 50, color(0, 0, 0), 100, 5);
  //}
  for(int i = 0; i < 70 ; i ++){
    carte[i][0] = new combattant(i,0, color(0, 0, 0), 100, 5);
  }
  for(int i = 0; i < 70 ; i ++){
    carte[i][69] = new combattant(i,69, color(0, 0, 0), 100, 5);
  }
  for(int i = 0; i < 70 ; i ++){
    carte[0][i] = new combattant(0,i, color(0, 0, 0), 100, 5);
  }
  for(int i = 0; i < 70 ; i ++){
    carte[69][i] = new combattant(69,i, color(0, 0, 0), 100, 5);
  }
  for(int i = 20; i < 50 ; i ++){
    carte[i][30] = new combattant(i,30, color(0, 0, 0), 100, 5);
  }
}

void draw() {
  affichage();
  for (int x = 0; x < 70; x ++) {
    for (int y = 0; y < 70; y ++) {
      carte[x][y].vivre();
      effets();
      carte[x][y].mourrir();
    }
  }
  reinitialisation();//carte = majCarte et rei carteV
  info();
}

FloatList vieL = new FloatList();
FloatList attaqueL = new FloatList();

void info() {
  float attaqueM = 0;
  float vieM = 0;
  int ndata = 0;
  for (int x = 0; x < 70; x ++) {
    for (int y = 0; y < 70; y ++) {
      if (carte[x][y].c != color(0, 200, 0) && carte[x][y].c != color(0, 0, 0)) {
        attaqueM += carte[x][y].att;
        vieM += carte[x][y].vieBase;
        ndata ++;
      }
    }
  }
  attaqueM /= ndata;
  vieM /= ndata;
  attaqueL.append(attaqueM);
  vieL.append(vieM);
}

void keyPressed() {
  if (keyCode == 32) {
    String data[] = new String[vieL.size()];
    for(int i = 0; i < vieL.size() ; i ++){
      data[i] = "";
    }
    for(int i = 0; i < vieL.size() ; i ++){
      data[i] += attaqueL.get(i)+";"+vieL.get(i);
    }
    saveStrings("data.txt",data);
    println("Enregistr");
  }
}

void effets() {
  for (int i = 0; i < carteV.size(); i ++) {
    volonte v = carteV.get(i);
    if (v.type == 1) {
      carte[v.x][v.y].vie -= v.degat;
    } else {
      IntList memeInsta = new IntList();
      float degmax = 0;
      int numDegMax = i;
      for (int j = 0; j < carteV.size(); j ++) {
        volonte v2 = carteV.get(i);
        if (v.x == v2.x && v.y == v2.y) {
          memeInsta.append(j);
        }
        if (v2.degat > degmax) {
          degmax = v2.degat;
          numDegMax = j;
        }
      }
      volonte v3 = carteV.get(numDegMax);
      carte[v3.x][v3.y] = new combattant(v3.x, v3.y, v3.c, v3.vie, v3.degat);

      for (int k = memeInsta.size()-1; k >= 0; k --) {
        carteV.remove(memeInsta.get(k));
      }
    }
  }
}

void reinitialisation() {
  carteV  = new ArrayList<volonte>();
}

void affichage() {
  for (int x = 0; x < 70; x ++) {
    for (int y = 0; y < 70; y ++) {
      combattant cb = carte[x][y];
      noStroke();
      fill(cb.c);
      rect(x*10, y*10, 10, 10);
    }
  }
}

class combattant {
  color c; // neutre : 0,200,0
  float vie;
  float att;
  int tempInsta = 5;
  int t = 0;
  float vieBase;
  int x, y;
  combattant(int xi, int yi, color ci, float viei, float atti) {
    c = ci;
    vie = viei;
    vieBase = viei;
    att = atti;
    x = xi;
    y = yi;
  }

  void vivre() {
    t ++;
    if(t > 100){
      vie = 0;
    }
    if (t > tempInsta && c != color(0, 200, 0) && c != color(0, 0, 0) ) {
      PVector cg, cd, ch, cb;
      if (x == 0) {
        cg = new PVector(69, y);
      } else {
        cg = new PVector(x-1, y);
      }

      if (x == 69) {
        cd = new PVector(0, y);
      } else {
        cd = new PVector(x+1, y);
      }

      if (y == 0) {
        ch = new PVector(x, 69);
      } else {
        ch = new PVector(x, y-1);
      }

      if (y == 69) {
        cb = new PVector(x, 0);
      } else {
        cb = new PVector(x, y+1);
      }

      PVector cases[] = {cg, cd, ch, cb};

      int caseN = 0;
      int caseE = 0;

      if (carte[int(cg.x)][int(cg.y)].c == color(0, 200, 0)) {
        caseN ++;
      }
      if (carte[int(cd.x)][int(cd.y)].c == color(0, 200, 0)) {
        caseN ++;
      }
      if (carte[int(ch.x)][int(ch.y)].c == color(0, 200, 0)) {
        caseN ++;
      }
      if (carte[int(cb.x)][int(cb.y)].c == color(0, 200, 0)) {
        caseN ++;
      }

      if (carte[int(cg.x)][int(cg.y)].c != c && carte[int(cg.x)][int(cg.y)].c != color(0, 0, 0) ) {
        caseE ++;
      }
      if (carte[int(cd.x)][int(cd.y)].c != c && carte[int(cd.x)][int(cd.y)].c != color(0, 0, 0) ) {
        caseE ++;
      }
      if (carte[int(ch.x)][int(ch.y)].c != c && carte[int(ch.x)][int(ch.y)].c != color(0, 0, 0) ) {
        caseE ++;
      }
      if (carte[int(cb.x)][int(cb.y)].c != c && carte[int(cb.x)][int(cb.y)].c != color(0, 0, 0) ) {
        caseE ++;
      }

      if (caseN > 0) {
        PVector caseNeutre[] = new PVector[caseN];
        int it = 0;
        if (carte[int(cg.x)][int(cg.y)].c == color(0, 200, 0)) {
          caseNeutre[it] = cg;
          it ++;
        }
        if (carte[int(cd.x)][int(cd.y)].c == color(0, 200, 0)) {
          caseNeutre[it] = cd;
          it ++;
        }
        if (carte[int(ch.x)][int(ch.y)].c == color(0, 200, 0)) {
          caseNeutre[it] = ch;
          it ++;
        }
        if (carte[int(cb.x)][int(cb.y)].c == color(0, 200, 0)) {
          caseNeutre[it] = cb;
          it ++;
        }
        int nr = int(random(0, caseN));
        carteV.add(new volonte(int(caseNeutre[nr].x), int(caseNeutre[nr].y), c, att, 0, vieBase));
        //volonte[int(caseNeutre[nr].x)][int(caseNeutre[nr].y)] = true;
        t = 0;
      } else {

        PVector caseEnn[] = new PVector[caseE];
        int it = 0;
        if (carte[int(cg.x)][int(cg.y)].c != c && carte[int(cg.x)][int(cg.y)].c != color(0, 0, 0) ) {
          caseEnn[it] = cg;
          it ++;
        }
        if (carte[int(cd.x)][int(cd.y)].c != c && carte[int(cd.x)][int(cd.y)].c != color(0, 0, 0)) {
          caseEnn[it] = cd;
          it ++;
        }
        if (carte[int(ch.x)][int(ch.y)].c != c && carte[int(ch.x)][int(ch.y)].c != color(0, 0, 0)) {
          caseEnn[it] = ch;
          it ++;
        }
        if (carte[int(cb.x)][int(cb.y)].c != c && carte[int(cb.x)][int(cb.y)].c != color(0, 0, 0)) {
          caseEnn[it] = cb;
          it ++;
        }

        if (it > 0) {
          int nr = int(random(0, it));
          float delta = random(-deltaMutation, deltaMutation);
          carteV.add(new volonte(int(caseEnn[nr].x), int(caseEnn[nr].y), c, att+delta, 1, vieBase-delta*20));
        }
        //volonte[int(cases[nr].x)][int(cases[nr].y)] = true;
      }
    }
  }

  void mourrir() {
    if (vie < 0) {
      carte[x][y] = new combattant(x, y, color(0, 200, 0), 100, 5);
    }
  }
}

class volonte {
  int x, y;
  color c;
  int type;// 0 : installation ; 1 : attaque
  float degat, vie;

  volonte(int xi, int yi, color ci, float degati, int typei, float viei) {
    x = xi;
    y = yi;
    c = ci;
    degat = degati;
    type = typei;
    vie = viei;
  }
}
