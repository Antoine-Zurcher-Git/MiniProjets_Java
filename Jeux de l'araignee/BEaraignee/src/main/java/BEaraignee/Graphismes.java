/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BEaraignee;
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import javax.imageio.ImageIO;
/**
 *
 * @author Antoine Zurcher
 */
public class Graphismes extends JFrame {
    
    private Plateau pl = new Plateau(3,3);//Plateau de jeu
    private int etat = 0;//etat de l'application : 0->Menu principal, 1->Jeu, 2-> crédits, 3->Règles du jeu
    private JPanel[] pFond = new JPanel[4];//Affichage graphique des états
    private Color fond = new Color(250,250,90);//Couleur de fond
    private JButton[][] cases = new JButton[3][3];//Bouttons servant de saces de jeu
    private JLabel affVictoire;// Affichage des tours et des victoires
    
    private Color bbase = new Color(255,255,255);//Couleur d'une case de base
    private Color bselect = new Color(140,255,110);//couleur de la case selectionnée
    private Color bdepl = new Color(100,180,255);//couleur 
    private Color bVictoire = new Color(255,145,145);
    
    private BufferedImage oIcon,xIcon,videIcon,menuPIcon,deplIcon,commencerIcon,commencerSIcon,reglesIcon,reglesSIcon,creditsIcon,creditsSIcon,mpIcon,mpSIcon,mppIcon,mppSIcon,recommencerIcon,recommencerSIcon,tourVIcon,tourRIcon,victoireVIcon,victoireRIcon;
    
    Graphismes() throws IOException{
        for(int i = 0; i < pFond.length ; i ++){//Initialise les afficheurs graphique
            pFond[i] = new JPanel();
        }

        initialisationImage();
        
        setSize(500,550);
        setVisible(true);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        menus();//Construit les menus (barre en haut)
        construct();//Construit les graphismes
        
        add(pFond[0]);//On démarre sur l'écran de démarrage
        setVisible(true);
    }
    
    private void initialisationImage() throws IOException{
        //Regroupe l'initialisation des images
        oIcon = ImageIO.read(new File("src/main/java/BEaraignee/img/araigne1.png"));
        xIcon = ImageIO.read(new File("src/main/java/BEaraignee/img/araigne2.png"));
        videIcon = ImageIO.read(new File("src/main/java/BEaraignee/img/vide.png"));
        menuPIcon = ImageIO.read(new File("src/main/java/BEaraignee/img/menuPrincipal.png"));
        deplIcon = ImageIO.read(new File("src/main/java/BEaraignee/img/deplacements.png"));
        commencerIcon = ImageIO.read(new File("src/main/java/BEaraignee/img/commencer.png"));
        commencerSIcon = ImageIO.read(new File("src/main/java/BEaraignee/img/commencerS.png"));
        reglesIcon = ImageIO.read(new File("src/main/java/BEaraignee/img/regles.png"));
        reglesSIcon = ImageIO.read(new File("src/main/java/BEaraignee/img/reglesS.png"));
        creditsIcon = ImageIO.read(new File("src/main/java/BEaraignee/img/credits.png"));
        creditsSIcon = ImageIO.read(new File("src/main/java/BEaraignee/img/creditsS.png"));
        mpIcon = ImageIO.read(new File("src/main/java/BEaraignee/img/mp.png"));
        mpSIcon = ImageIO.read(new File("src/main/java/BEaraignee/img/mpS.png"));
        mppIcon = ImageIO.read(new File("src/main/java/BEaraignee/img/mpp.png"));
        mppSIcon = ImageIO.read(new File("src/main/java/BEaraignee/img/mppS.png"));
        recommencerIcon = ImageIO.read(new File("src/main/java/BEaraignee/img/recommencer.png"));
        recommencerSIcon = ImageIO.read(new File("src/main/java/BEaraignee/img/recommencerS.png"));
        tourVIcon = ImageIO.read(new File("src/main/java/BEaraignee/img/tourV.png"));
        tourRIcon = ImageIO.read(new File("src/main/java/BEaraignee/img/tourR.png"));
        victoireVIcon = ImageIO.read(new File("src/main/java/BEaraignee/img/victoireV.png"));
        victoireRIcon = ImageIO.read(new File("src/main/java/BEaraignee/img/victoireR.png"));
        affVictoire = new JLabel(new ImageIcon(tourRIcon));
    }
    
    private void menus(){
        // Créé les menus en haut
        // Contient une liste des états : menu principal, jeu, crédits, règles du jeu
        JMenuBar menuBar;
        menuBar = new JMenuBar();
        
        JMenu menu = new JMenu("Menu");
        JMenuItem menuItem = new JMenuItem("Principal");
        menuItem.addActionListener(new ActionListener(){public void actionPerformed(ActionEvent e){changeEtat(etat,0);}});
        menu.add(menuItem);
        menuItem = new JMenuItem("Jeu");
        menuItem.addActionListener(new ActionListener(){public void actionPerformed(ActionEvent e){changeEtat(etat,1);}});
        menu.add(menuItem);
        menuItem = new JMenuItem("Crédits");
        menuItem.addActionListener(new ActionListener(){public void actionPerformed(ActionEvent e){changeEtat(etat,2);}});
        menu.add(menuItem);
        menuItem = new JMenuItem("Règle du jeu");
        menuItem.addActionListener(new ActionListener(){public void actionPerformed(ActionEvent e){changeEtat(etat,3);}});
        menu.add(menuItem);
        menuBar.add(menu);
        
        
        menu = new JMenu("Actions");
        menuItem = new JMenuItem("Recommencer");
        menuItem.addActionListener(new ActionListener(){public void actionPerformed(ActionEvent e){restart();}});
        menu.add(menuItem);
        menuItem = new JMenuItem("Passer son tour");
        menuItem.addActionListener(new ActionListener(){public void actionPerformed(ActionEvent e){passeTour();}});
        menu.add(menuItem);
        menuBar.add(menu);
        setJMenuBar(menuBar);
                
    }
    
    private void restart(){
        // Recommence une nouvelle partie
        pl.restart();
        defButtonStyle();
        repaint();
        setVisible(true);
    }
    
    private void construct(){
        //Regroupe les différentes fonctions de construction de graphisme
        menuPrincipal();
        menuJeu();
        menuCredit();
        menuRegleDuJeu();
    }
    
    private void menuPrincipal(){
        //Construction des graphismes du menu principal
        pFond[0].setBackground(fond);
        pFond[0].setLayout(new FlowLayout());
        
        //Titre
        JPanel haut = new JPanel();
        haut.setLayout(new BorderLayout());
        haut.setBackground(fond);
        
        JButton start = new JButton(new ImageIcon(commencerIcon));//("Commencer");
        start.setBorder(BorderFactory.createEmptyBorder());
        start.setRolloverIcon(new ImageIcon(commencerSIcon)) ;
        start.setPressedIcon(new ImageIcon(commencerSIcon));
        start.setContentAreaFilled(false);
        start.setPreferredSize(new Dimension(350,60));
        //start.setFont(new Font("Dialog", Font.PLAIN,30));
        start.addActionListener(new ActionListener(){public void actionPerformed(ActionEvent e){changeEtat(etat,1);}});
        
        
        //JLabel titre = new JLabel("Jeu de l'araignée");
        //titre.setFont(new Font("Dialog", Font.PLAIN, 40));
        //titre.setPreferredSize(new Dimension(350,200));
        
        
        JButton credit = new JButton(new ImageIcon(creditsIcon));
        credit.setBorder(BorderFactory.createEmptyBorder());
        credit.setRolloverIcon(new ImageIcon(creditsSIcon)) ;
        credit.setPressedIcon(new ImageIcon(creditsSIcon));
        credit.setContentAreaFilled(false);
        credit.setPreferredSize(new Dimension(350,60));
        //credit.setFont(new Font("Dialog", Font.PLAIN,30));
        credit.addActionListener(new ActionListener(){public void actionPerformed(ActionEvent e){changeEtat(etat,2);}});
        
        JButton regles = new JButton(new ImageIcon(reglesIcon));
        regles.setBorder(BorderFactory.createEmptyBorder());
        regles.setRolloverIcon(new ImageIcon(reglesSIcon)) ;
        regles.setPressedIcon(new ImageIcon(reglesSIcon));
        regles.setContentAreaFilled(false);
        regles.setPreferredSize(new Dimension(350,60));
        //regles.setFont(new Font("Dialog", Font.PLAIN,30));
        regles.addActionListener(new ActionListener(){public void actionPerformed(ActionEvent e){changeEtat(etat,3);}});
        
        
        //haut.add(titre,BorderLayout.CENTER);
        haut.add(new JLabel(new ImageIcon(menuPIcon)),BorderLayout.CENTER);
        pFond[0].add(haut);
        pFond[0].add(start);
        pFond[0].add(credit);
        pFond[0].add(regles);
    }
    
    private void menuJeu(){
        //Construction des graphismes du jeu
        pFond[1].setBackground(fond);
        pFond[1].setLayout(new FlowLayout());
        JPanel plateauJ = new JPanel();
        plateauJ.setLayout(new GridLayout(3,3));

        for(int x = 0 ; x < 3 ; x ++){
            for(int y = 0; y < 3 ; y ++){
                cases[x][y] = new JButton(new ImageIcon(videIcon));
                final int nbx = x;
                final int nby = y;
                cases[x][y].setPreferredSize(new Dimension(120,120));

                cases[x][y].addActionListener(
                    new ActionListener(){public void actionPerformed(ActionEvent e){btnSelect(nbx,nby);}});
                plateauJ.add(cases[x][y]);
                cases[x][y].setBackground(bbase);
                //cases[x][y].setFont(new Font("Dialog", Font.PLAIN,30));
                
                //
                //button = new JButton(new ImageIcon(buttonIcon));
                
            }
        }
        
        JPanel pSecond1 = new JPanel();
        pSecond1.setBackground(fond);
        plateauJ.setBackground(fond);
        pFond[1].add(plateauJ,BorderLayout.NORTH);
        affVictoire.setFont(new Font("Dialog", Font.PLAIN,26));
        affVictoire.setPreferredSize(new Dimension(350,60));
        pSecond1.add(affVictoire);
        pFond[1].add(pSecond1,BorderLayout.SOUTH);
        
        JButton retour = new JButton(new ImageIcon(mppIcon));//("Menu Principal");
        retour.setBorder(BorderFactory.createEmptyBorder());
        retour.setRolloverIcon(new ImageIcon(mppSIcon)) ;
        retour.setPressedIcon(new ImageIcon(mppSIcon));
        retour.setContentAreaFilled(false);
        retour.setPreferredSize(new Dimension(175,30));
        //retour.setFont(new Font("Dialog", Font.PLAIN,15));
        retour.addActionListener(new ActionListener(){public void actionPerformed(ActionEvent e){changeEtat(etat,0);}});
        pFond[1].add(retour);
        
        JButton restart = new JButton(new ImageIcon(recommencerIcon));
        restart.setBorder(BorderFactory.createEmptyBorder());
        restart.setRolloverIcon(new ImageIcon(recommencerSIcon)) ;
        restart.setPressedIcon(new ImageIcon(recommencerSIcon));
        restart.setContentAreaFilled(false);
        restart.setPreferredSize(new Dimension(175,30));
        //restart.setFont(new Font("Dialog", Font.PLAIN,15));
        restart.addActionListener(new ActionListener(){public void actionPerformed(ActionEvent e){restart();}});
        pFond[1].add(restart);
        
    }
    
    private void menuCredit(){
        //Construction des graphismes des crédits
        pFond[2].setBackground(fond);
        JLabel txt = new JLabel("Jeux de l'araignée");
        txt.setFont(new Font("Dialog", Font.PLAIN,30));
        pFond[2].add(txt);
        txt = new JLabel("Dans le cadre du BE noté #1 : Le jeu de l'araignée");
        txt.setFont(new Font("Dialog", Font.PLAIN,20));
        pFond[2].add(txt);
        txt = new JLabel("Jeux fait main par");
        
        txt.setFont(new Font("Dialog", Font.PLAIN,20));
        pFond[2].add(txt);
        txt = new JLabel("Antoine Zurcher & Thibault Tischhauser");
        txt.setFont(new Font("Dialog", Font.PLAIN,20));
        pFond[2].add(txt);
        
        

        
        JButton retour = new JButton(new ImageIcon(mpIcon));
        retour.setBorder(BorderFactory.createEmptyBorder());
        retour.setRolloverIcon(new ImageIcon(mpSIcon)) ;
        retour.setPressedIcon(new ImageIcon(mpSIcon));
        retour.setContentAreaFilled(false);
        retour.setPreferredSize(new Dimension(350,60));
        //retour.setFont(new Font("Dialog", Font.PLAIN,30));
        retour.addActionListener(new ActionListener(){public void actionPerformed(ActionEvent e){changeEtat(etat,0);}});
        pFond[2].add(retour);
    }
    
    private void menuRegleDuJeu(){
        //Construction des graphismes des règles du jeu
        pFond[3].setBackground(fond);
        pFond[3].setLayout(new FlowLayout());
        JLabel txt = new JLabel("Règles du Jeu de l'Araignée");
        txt.setFont(new Font("Dialog", Font.PLAIN,30));
        txt.setPreferredSize(new Dimension(400,100));
        pFond[3].add(txt);
        txt = new JLabel("Victoire si 3 pions de même type sont alignés");
        txt.setFont(new Font("Dialog", Font.PLAIN,18));
        pFond[3].add(txt);
        txt = new JLabel("Les déplacements sont possible sur les cases adjacentes,");
        txt.setFont(new Font("Dialog", Font.PLAIN,18));
        pFond[3].add(txt);
        txt = new JLabel("et sur les cases en diagonale si elles vont vers le centre,");
        txt.setFont(new Font("Dialog", Font.PLAIN,18));
        pFond[3].add(txt);
        txt = new JLabel("à la manière d'une toile d'araignée");
        txt.setFont(new Font("Dialog", Font.PLAIN,18));
        pFond[3].add(txt);
        pFond[3].add(new JLabel(new ImageIcon(deplIcon)));
        
        
        JButton retour = new JButton(new ImageIcon(mpIcon));
        retour.setBorder(BorderFactory.createEmptyBorder());
        retour.setRolloverIcon(new ImageIcon(mpSIcon)) ;
        retour.setPressedIcon(new ImageIcon(mpSIcon));
        retour.setContentAreaFilled(false);
        retour.setPreferredSize(new Dimension(350,60));
        //retour.setFont(new Font("Dialog", Font.PLAIN,30));
        retour.addActionListener(new ActionListener(){public void actionPerformed(ActionEvent e){changeEtat(etat,0);}});
        pFond[3].add(retour);
    }
    
    private void changeEtat(int dep,int arr){
        //Permet de changer d'état (de menu)
        remove(pFond[dep]);
        add(pFond[arr]);
        etat = arr;
        repaint();
        setVisible(true);
    }
    
    private void btnSelect(int x,int y){
        //Action a réaliser lorsqu'on selectionne une case
        if(pl.getVictoire() == 0){
            pl.selectCase(x,y);
            defButtonStyle();
            repaint();
            setVisible(true);
        }
    }
    
    private void passeTour(){
        //Permet au joueur de passer son tour (solution si aucun déplacement n'est possible)
        if(pl.getPlacement() <= 0){
            pl.setTour(pl.getTour()*(-1));
        }
    }
    
    private void defButtonStyle(){
        //Permet de mettre à jour le style des boutons pour qu'il reflete l'état du jeu
        //ainsi que l'affichage de victoire et de tour
        for(int x = 0; x < 3; x ++){//Définit le texte des boutons, ainsi que sa couleur en fonction de son état
            for(int y = 0; y < 3; y ++){
                if(pl.getEquipe(x,y) == 1){//équipe 1
                    //cases[x][y].setText("X");
                    cases[x][y].setIcon(new ImageIcon(xIcon));
                }else if(pl.getEquipe(x, y) == -1){//équipe -1
                    //cases[x][y].setText("O");
                    cases[x][y].setIcon(new ImageIcon(oIcon));
                }else{//Neutre
                    //cases[x][y].setText("");
                    cases[x][y].setIcon(new ImageIcon(videIcon));
                }
                if(pl.isDepl(x,y)){//Case de déplacement possible
                    cases[x][y].setBackground(bdepl);
                }else if(pl.isSelect(x,y)){//Case selectionnée
                    cases[x][y].setBackground(bselect);
                }else{//Case de base
                    cases[x][y].setBackground(bbase);
                }
            }
        }
        
        switch (pl.getVictoire()) {//Définit le texte de victoire et de tour
            case 1:
                //affVictoire.setText("Victoire de l'équipe X !");
                affVictoire.setIcon(new ImageIcon(victoireRIcon));
                for(int x = 0 ; x < 3 ; x ++){
                    for(int y =  0 ; y < 3 ; y ++){
                        if(pl.getEquipe(x,y) == 1){
                            cases[x][y].setBackground(bVictoire);
                        }
                    }
                }
                break;
            case -1:
                //affVictoire.setText("Victoire de l'équipe O !");
                affVictoire.setIcon(new ImageIcon(victoireVIcon));
                for(int x = 0 ; x < 3 ; x ++){
                    for(int y =  0 ; y < 3 ; y ++){
                        if(pl.getEquipe(x,y) == -1){
                            cases[x][y].setBackground(bVictoire);
                        }
                    }
                }
                break;
            default:
                if(pl.getTour() == 1){
                    //affVictoire.setText("C'est à X de jouer");
                    affVictoire.setIcon(new ImageIcon(tourRIcon));
                }else{
                    //affVictoire.setText("C'est à O de jouer");
                    affVictoire.setIcon(new ImageIcon(tourVIcon));
                }
                break;
        }
    }
    
}
