/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BEaraignee;
import java.util.ArrayList;
/**
 *
 * @author Antoine Zurcher
 */
public class Plateau {
    
    private Pion[][] plateau;//Plateau de jeu
    private int dimx,dimy;//Dimensions du plateau : 3 et 3, mais permet d'être flexible si on veut faire évoluer le jeu
    private int[][] adj = {{-1,0},{1,0},{0,1},{0,-1},{-1,-1},{1,-1},{1,1},{-1,1}};//Liste des cases adjacentes à la case (0,0), sans prendre en compte plus de règle de jeu
    private int[] caseSelect= {-1,-1};//Case selectionnée, si négatif : pas de case selectionné
    private int[][] adjCaseSelect;//Tableau des cases adjacentes à la case selectionnée, vide si pas de case selectionnée
    private int placement ;//Permet de gérer la 1ère phase de placement
    private int tour = 1;//1 ou -1 en fonction de qui a la main 
    private int victoire = 0;// 0 : pas de victoire, 1 ou -1 victoire de 1 ou -1
    
    Plateau(int dimensionx,int dimensiony){
        dimx = dimensionx;
        dimy = dimensiony;
        plateau = new Pion[dimensionx][dimensiony];
        for(int i = 0 ; i < dimensionx ; i ++){
            for(int j = 0 ; j < dimensiony ; j ++){
            plateau[i][j] = new Pion(0);
            }
        }
        placement = 2*dimensionx;
    }
    
    public void restart(){
        // Réinitialise le jeu pour une nouvelle partie
        for(int i = 0 ; i < dimx ; i ++){//Reinitialisation du plateau
            for(int j = 0 ; j < dimy ; j ++){
            plateau[i][j] = new Pion(0);
            }
        }
        caseSelect[0] = -1;//deselection de case
        caseSelect[1] = -1;
        adjCaseSelect = new int[0][2];
        tour = 1;//X commence
        victoire = 0;//Personne n'a encore gagné
        placement = 2*dimx;
    }
    
    public boolean selectCase(int x,int y){
        // Selectionne la case x,y, 
        // Si c'est la 1ère phase : place si vide
        // Si aucune case n'est selectionnée, la selectionne et définit ses déplacements possibles
        // Si la case n'est pas une case de déplacement, la selectionne et définit ses déplacements possibles
        // Si la case est une case de déplacement, déplace
        // Si la case est la case déja selectionnée, déselectionne
        
        boolean rep = false;
        int[] pos = {x,y};
        if(x >= 0 && x < dimx && y >= 0 && y < dimy){//Dans la zone
            
            if(placement > 0){//1ère phase : placement
                if (plateau[x][y].getEquipe() == 0){// La case doit être vide
                    placement --;
                    placement(x,y,tour);
                    tour *= -1;
                    caseSelect[0] = -1;
                    caseSelect[1] = -1;
                    adjCaseSelect = new int[0][2];
                }
            }else{//2ème phase : déplacement
                if(caseSelect[0] >= 0 && caseSelect[1] >= 0 && deplacable(pos,adjCaseSelect) ){//On avait select une case, et la nouvelle case select est dans les deplacements
                    deplace(caseSelect[0],caseSelect[1],x,y);
                }else{//Sinon
                    if(caseSelect[0] == x && caseSelect[1] == y){//Même case : deselectionne
                        caseSelect[0] = -1;
                        caseSelect[1] = -1;
                        adjCaseSelect = new int[0][2];
                    }else if(plateau[x][y].getEquipe() == tour){// Case d'un pion de l'équipe qui a la main -> la selectionnne et definit ses deplacmeents possibles
                        caseSelect[0] = x;
                        caseSelect[1] = y;
                        adjCaseSelect = deplacementPossible(x,y);
                    }else{//Sinon : deselectionne
                        caseSelect[0] = -1;
                        caseSelect[1] = -1;
                        adjCaseSelect = new int[0][2];
                    }
                }
            }
            
            rep = true;
        }
        return rep;
    }
    
    public int getEquipe(int x,int y){
        //Renvoie l'équipe du pion en (x,y)
        return plateau[x][y].getEquipe();
    }
    
    public boolean isSelect(int x,int y){
        //Renvoie vrai si la case (x,y) est la case selectionnée
        return caseSelect[0] == x && caseSelect[1] == y;
    }
    
    public boolean isDepl(int x,int y){
        //Renvoie vrai si la case fait partie des deplacements possible
        int pos[] = {x,y};
        return deplacable(pos,adjCaseSelect) ;
    }
    
    public int getTour(){
        //Getteur de tour
        return tour;
    }
    
    public int getVictoire(){
        //getteur de victoire
        return victoire;
    }
    
    public int getPlacement(){
        //getteur de placement
        return placement;
    }
    
    public void setTour(int touri){
        //setteur de tour
        tour = touri;
    }
    
    private boolean placement(int x,int y,int equipe){
        // Place un pion de l'équipe equipe sur la case x,y, Si c'est possible renvoie true, sinon false
        // Vérifie aussi la condition de victoire
        boolean rep = false;
        if(x >= 0 && x < dimx && y >= 0 && y < dimy){//Dans la zone de jeu
            if(plateau[x][y].getEquipe() == 0){//Case vide
                plateau[x][y].setEquipe(equipe);
                rep = true;
            }
        }
        
        
//        for(int xf = 0; xf < 3 ; xf ++){
//            for(int yf = 0 ; yf < 3 ; yf ++){
//                System.out.print(plateau[xf][yf].getEquipe());
//            }
//            System.out.println("");
//        }
        
        victoire();//Verifi si victoire il y a
        
        
        
        return rep;
    }

    private int[][] deplacementPossible(int x, int y){
        //Renvoie le tableau des déplacements possible pour le Pion en x,y
        ArrayList<int[]> rep = new ArrayList<>();//Il est possible que ça bug, dans ce cas commenter rep, et décommenter secourBug et secourbugnb
//        int secourBug[][] = new int[9][2];
//        int secourBugnb = 0;
        
        if(plateau[x][y].getEquipe() == tour){//Le joueur doit avoir la main pour pouvoir le déplacer
            if(x >= 0 && x < dimx && y >= 0 && y <= dimy){//Doit être dans la zone
                if(plateau[x][y].getEquipe() != 0){//Une case vide ne se déplace pas (en soit déjà verifié par le tour)
                    for(int i = 0; i < adj.length ; i ++){ // On parcours la liste des adjacences
                        if(i <= 3 || (x+y)%2 == 0 ){//Règle de la toile : toute les cases ne peuvent pas permettre un mouvement diagonal (stocké après l'indice 3), les cases dont la sommes des coordonnées est pair peuvent se déplacer en diagonale
                            if(x+adj[i][0] >= 0 && x+adj[i][0] < dimx && y+adj[i][1] >= 0 && y+adj[i][1] < dimy){//La case adjacente considérée doit être dans la zone de jeu
                                if(plateau[x+adj[i][0]][y+adj[i][1]].getEquipe() == 0){//La case considéré doit être vide
                                    int rept[] = {x+adj[i][0],y+adj[i][1]};
                                    rep.add(rept);//ajoute la position à la liste
//                                    secourBug[secourBugnb] = rept;
//                                    secourBugnb ++;
                                }
                            }
                        }
                    }
                }
            }
        }
        
        //Transfert la liste dans le tableau de sortie
        int repd[][] = new int[rep.size()][2];
        for(int i = 0; i < rep.size() ; i ++){
            repd[i] = rep.get(i);
        }
        
//        int repd[][] = new int[secourBugnb][2];
//        for(int i = 0; i < secourBugnb ; i ++){
//            repd[i] = secourBug[i];
//        }
        
        return repd;
    }

    private void deplace(int xD,int yD,int xA,int yA){
        //Déplace un pion de (xD,yD) en (xA,yA)
        plateau[xA][yA] = new Pion(plateau[xD][yD].getEquipe());
        plateau[xD][yD] = new Pion(0);
        caseSelect[0] = -1;
        caseSelect[1] = -1;
        adjCaseSelect = new int[0][2];
        tour *= -1;
        victoire();//après un déplacement, on vérifi si il y a victoire
    }
    
    private boolean deplacable(int[]pos, int[][] liste ){
        // Permet de savoir si (pos) est dans le tableau liste
        // Notament pour savoir si une case est dans les déplacements possibles
        boolean rep = false;
        if(liste.length > 0){
            for(int i = 0; i < liste.length ; i ++){
                    if(pos[0] == liste[i][0] && pos[1] == liste[i][1]){//Attention on suppose que liste est de dimension (n,2)
                        rep = true;
                    }
            }
        }
        return rep;
    }
    
    private void victoire(){
        // Actions à réaliser afin de tester la victoire
        victoire = testVictoire();
        if(victoire != 0){
            System.out.println("Victoire de l'equipe "+victoire);
        }
    }
    
    private int testVictoire(){
        // Test la victoire
        // S'il n'y a pas de victoire : renvoie 0
        // Sinon renvoie l'équipe (-1 ou 1) gagnante
        int rep = 0;
        
        //Alignement en ligne
        for(int x = 0; x < dimx ; x ++){
            boolean colonneVict = true;
            for(int y = 0; y < dimy ; y ++){
                if(plateau[x][y].getEquipe() != plateau[x][0].getEquipe()){
                    colonneVict = false;
                }
            }
            if(colonneVict && plateau[x][0].getEquipe() != 0){
                rep = plateau[x][0].getEquipe();
                
            }
            
        }
        
        //Alignement en colonne
        for(int y = 0; y < dimy ; y ++){
            boolean ligneVict = true;
            for(int x = 0; x < dimx ; x ++){
                if(plateau[x][y].getEquipe() != plateau[0][y].getEquipe()){
                    ligneVict = false;
                }
            }
            if(ligneVict && plateau[0][y].getEquipe()!= 0){
                rep = plateau[0][y].getEquipe();
            }
        }
        
        
        //Alignement diagonal
        boolean diag1 = true;
        for(int x = 0; x < Math.min(dimx,dimy) ; x ++){
            if(plateau[x][x].getEquipe() != plateau[0][0].getEquipe()){
                diag1 = false;
            }
        }
        if(diag1){rep = plateau[0][0].getEquipe();}
        
        //Alignement diagonal
        boolean diag2 = true;
        for(int x = 0; x < Math.min(dimx,dimy) ; x ++){
            if(plateau[x][Math.min(dimx,dimy)-1-x].getEquipe() != plateau[0][Math.min(dimx,dimy)-1].getEquipe()){
                diag2 = false;
            }
        }
        if(diag2){rep = plateau[0][Math.min(dimx,dimy)-1].getEquipe();}
        
        
        return rep;
    }
    
}
