/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BE1v2;

/**
 *
 * @author antoi
 */
public class Jardinier {
    
    private String prenom;
    private Object outils;
    
    Jardinier(String nomi){
        prenom = nomi;
    }
    
    public void StartTravail(Object outil){
        outils = outil;
    }
    public void StopTravail(){
        outils = null;
    }
}
