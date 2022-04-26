
PImage fond;
float dimGugus = 10;

ArrayList<gugus> gugu = new ArrayList<gugus>();

int [][]posE = {{-1,-1},{0,-1},{1,-1},{1,0},{1,1},{0,1},{-1,1},{-1,0}};

void setup(){
  loadPixels();
  for(int i = 0; i < fond.width*fond.height ; i ++){
    if(pixels[i] != color(0,0,0) && pixels[i] != color(0,255,0) ){
      println(color(pixels[i]));
      println("noir : "+color(0,0,0));
      println("Vert : "+color(0,255,0));
      gugu.add(new gugus(pixels[i],random(90,110),random(15,25),i%fond.width,int(i/fond.height)));
    }
  }
}

void settings(){
  fond = loadImage("fond.png");
  size(fond.width,fond.height,P3D);
}

void draw(){
  image(fond,0,0);
  for(int i = gugu.size()-1 ; i >= 0  ; i -- ){
    gugus Gug = gugu.get(i);
    Gug.vivre(i);
  }
}

class gugus{
  color couleur;
  float age,bonheur,vie,force,px,py;
  
  gugus(color col,float vi,float forc,float posx,float posy){
    couleur = col;
    vie = vi;
    force = forc;
    px = posx;
    py = posy;
  }
  
  void vivre(int num){
    noStroke();
    fill(couleur);
    rect(px,py,1,1);
    
    loadPixels();
    
    //Age
    age ++;
    
    //Vie
    if(vie <= 0 || age > 120){
      mort(num);
    }
    
    //Bonheur
    //Force
    
    loadPixels();
    int numPixel = int(px)+int(py*fond.width);
    
    
    color [] entourage = new color[8];
    entourage[0] = color(pixels[numPixel-1-fond.width]);//haut à gauche, on tourne dans les aiguille d'une montre
    entourage[1] = color(pixels[numPixel-fond.width]);
    entourage[2] = color(pixels[numPixel+1-fond.width]);
    entourage[3] = color(pixels[numPixel+1]);
    entourage[4] = color(pixels[numPixel+1+fond.width]);
    entourage[5] = color(pixels[numPixel+fond.width]);
    entourage[6] = color(pixels[numPixel-1+fond.width]);
    entourage[7] = color(pixels[numPixel-1]);
    
   boolean attaque = false;
   int bp = 0;
   int vide = -1;
   
   for(int i = 0; i < 8; i ++){
     if(entourage[i] != couleur && entourage[i] != color(0,0,0)){
       
       attaque = true;
     }else if(entourage[i] == couleur){
       bp ++;
     }else if(entourage[i] == color(0,255,0)){
       vide = i;
     }
   }
   
   if(attaque == false){
     bonheur += bp;
   }
   
   if(bonheur > 255 && vide >= 0){
     naitre(vide,px,py);
   }
    
    
  }
  
  void naitre(int place,float pox,float poy){
    gugu.add(new gugus(couleur,random(90,110),random(15,25),pox+posE[place][0],poy+posE[place][1]));
  }
  
  
}

void mort(int num){
    gugu.remove(num);
}



  
// These are code fragments that show how to use an ArrayList.
// They won't compile because they assume the existence of a Particle class.

// Declaring the ArrayList, note the use of the syntax "<Particle>" to indicate
// our intention to fill this ArrayList with Particle objects
//ArrayList<Particle> particles = new ArrayList<Particle>();

//// Objects can be added to an ArrayList with add()
//particles.add(new Particle());

//// Particles can be pulled out of an ArrayList with get()
//Particle part = particles.get(0);
//part.display();

//// The size() method returns the current number of items in the list
//int total = particles.size();
//println("The total number of particles is: " + total);

//// You can iterate over an ArrayList in two ways.
//// The first is by counting through the elements:
//for (int i = 0; i < particles.size(); i++) {
//  Particle part = particles.get(i);
//  part.display();
//}

//// The second is using an enhanced loop:
//for (Particle part : particles) {
//  part.display();
//}

//// You can delete particles from an ArrayList with remove()
//particles.remove(0);
//println(particles.size()); // Now one less!

//// If you are modifying an ArrayList during the loop,
//// then you cannot use the enhanced loop syntax.
//// In addition, when deleting in order to hit all elements, 
//// you should loop through it backwards, as shown here:
//for (int i = particles.size() - 1; i >= 0; i--) {
//  Particle part = particles.get(i);
//  if (part.finished()) {
//    particles.remove(i);
//  }
//}