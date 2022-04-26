/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BEaraignee;

/**
 *
 * @author Antoine Zurcher
 */
public class Pion {
    
    private int equipe;// 0 -> vide ; sinon 1 ou -1
    
    Pion(int equi){
        equipe = equi;
    }
    
    public int getEquipe(){
        return equipe;
    }
    
    public void setEquipe(int equi){
        equipe = equi;
    }
    
    
}
