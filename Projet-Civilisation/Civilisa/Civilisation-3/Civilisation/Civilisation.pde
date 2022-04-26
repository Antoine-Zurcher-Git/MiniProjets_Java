//v3
PImage fond;
int dimGugus = 5;
gugus []gugu;
int largeur,hauteur;
int [][]posE = {{-1,-1},{0,-1},{1,-1},{1,0},{1,1},{0,1},{-1,1},{-1,0}};
float vitesse = 1;
int bonheurM = 50/int(vitesse),ageM = 160/int(vitesse);

boolean kamikaze = false;
boolean hearthstone = true;//pas logique de mettre les deux

void settings(){
  fond = loadImage("fondMonde3.png");
  largeur = fond.width;
  hauteur = fond.height;
  size(largeur,hauteur,P3D);
  gugu = new gugus[int(largeur*hauteur/(dimGugus*dimGugus))];
  
}

void setup(){
  image(fond,0,0);
  loadPixels();
  
  for(int i = 0; i < gugu.length ; i ++){
    //println("i : "+i);
    //println(  (i%(largeur/dimGugus))*dimGugus+dimGugus/2 );
    //println(int(i/(largeur/dimGugus))*dimGugus+dimGugus/2 ); //couleur                                                     vie force          x et y
    float v = random(120,180);
    float f = random(15,35);
    if(i == 163){
      //println("3 !");
      //v = 200;
      //f = 50;
      //println(color(get( (i%(largeur/dimGugus))*dimGugus+dimGugus/2 ,int(i/(largeur/dimGugus))*dimGugus+dimGugus/2 )));
      //println(color(0,38,255));
    }
    
    gugu[i] = new gugus(color(get( (i%(largeur/dimGugus))*dimGugus+dimGugus/2 ,int(i/(largeur/dimGugus))*dimGugus+dimGugus/2 )),v,f,(i%(largeur/dimGugus))*dimGugus,int(i/(largeur/dimGugus))*dimGugus,1,-2,2,-0.5,0.5 );
  }
}


void draw(){
  println(frameRate);
  //int s = 0;
  //int d = 0;
  //int f = 0;
  for(int i = 0; i < gugu.length ; i ++){
    gugu[i].vivre();
    //d ++;
    //s += gugu[i].force;
    //f += gugu[i].vie;
  }
  
  //println("Force M : "+(s/d));
  //println("Vie M : "+(f/d));
  
  
}

class gugus{
  
  color couleur;
  
  float GainBonheur,GainVieMi,GainVieMa,GainForceMi,GainForceMa;
  
  float age = 0,bonheur,vie,force,px,py,vieI;
  color noir = color(0,0,0),vert = color(0,255,0);
  boolean kami = false;
  
  gugus(color col,float vi,float forc,float posx,float posy,float Gb,float GVmi,float GVma,float GFmi,float GFma){
    couleur = col;
    vie = vi;
    force = forc;
    px = posx;
    py = posy;
    vieI = vi;
    
    GainBonheur = Gb;
    GainVieMi = GVmi;
    GainVieMa = GVma;
    GainForceMi = GFmi;
    GainForceMa = GFma;
    
    if(couleur == noir || couleur == vert){
      vie = 0;
      force = 0;
    }
  }
  
  void vivre(){
    fill(couleur);
    noStroke();
    rect(px,py,dimGugus,dimGugus);
    
    if(couleur != noir && couleur != vert){
      //println(random(0,8)+" "+px);
      //Age
      age ++;
      
      //Vie
      if(vie <= 0 || age > ageM){
        if(kami == false){
          couleur = vert;
          force = 0;
          vie = 0;
        }
      }
      
      int videNb = 0;
      int ennemiNb = 0;
      int allieNb = 0;
      int vide[][] = new int[8][2];
      int ennemi[][] = new int[8][2];
      int allie[][] = new int[8][2];
      
      int nP [] = {int(px)/dimGugus,int(py)/dimGugus};
      for(int i = 0 ; i < 8 ; i ++){
        int pos [] = {nP[0]+posE[i][0],nP[1]+posE[i][1]};
        //println(pos);
        color coul = blocC(pos);
        
        if(coul == couleur){
          allie[allieNb] = pos;
          allieNb ++;
        }else if(coul == vert){
          vide[videNb] = pos;
          videNb ++;
        }else if(coul != vert && coul != noir && coul != couleur){
          ennemi[ennemiNb] = pos;
          ennemiNb ++;
        }
        
      }
      bonheur += (1+int(allieNb/2))*GainBonheur;
      if(videNb > 0){
        int k = 0;
        int Sens [][] = new int[videNb][2];
        for(int i = 0; i < videNb ; i ++){
          int r = 0;
          if(i > 0){
            //int r[] = vide[int(random(0,videNb+1))];
            //for(int j = 0; j < i ; j ++){
            //  while
            //}
            Sens[i] = vide[r+i];
          }else{
            r = int(random(0,videNb));
            Sens[i] = vide[r];
            //println(i,r);
          }
        }
        while (bonheur > bonheurM && k < videNb){
          enfante(Sens[k]);
          //gugu[blocNum(Sens[k])].couleur = couleur;
          bonheur -= bonheurM;
          k ++;
        }
      }
      //if(videNb == 0 && bonheur > bonheurM && age > bonheurM){
      //  enfante(nP,1);
      //  bonheur -= bonheurM;
      //}
      
      //Combat 
      
      if(ennemiNb > 0){
        gugu[blocNum(ennemi[0])].vie -= force;
        if(gugu[blocNum(ennemi[0])].vie <= 0){
          if(kamikaze == true){
            gugu[blocNum(ennemi[0])].kami = true;//--------------------------------------------------------------------------------------
          }
          GainForceMa += 0.1;
        }
        if(hearthstone == true){
          vie -= gugu[blocNum(ennemi[0])].force;
        }
      }
      
      if(vie <= 0 || age > ageM){
        if(kami == true){
          couleur = vert;
          force = 0;
          vie = 0;
          kami = false;
        }
      }
      
    }
    
  }
  
  void enfante(int []pos){//type : 0 -> autre, 1 -> sa case
    gugu[blocNum(pos)].couleur = couleur;
    gugu[blocNum(pos)].age = 0;
    gugu[blocNum(pos)].vie = vieI+random(GainVieMi,GainVieMa);
    gugu[blocNum(pos)].force = force+random(GainForceMi,GainForceMa);
    gugu[blocNum(pos)].GainVieMa = GainVieMa;
    gugu[blocNum(pos)].GainVieMi = GainVieMi;
    gugu[blocNum(pos)].GainForceMa = GainForceMa;
    gugu[blocNum(pos)].GainForceMi = GainForceMi;
    GainVieMa += 0.6;
  }
  
  
  
  
}

color blocC(int []pos){// position en / 10
  int num = blocNum(pos);
  return gugu[num].couleur;
}

int blocNum(int []pos){
  return pos[0]+(largeur/dimGugus)*pos[1];
}