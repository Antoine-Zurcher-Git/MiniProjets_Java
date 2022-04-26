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
public class TailleHaie implements Demarrable {
    
    private boolean etat = false;
    private double cadence = 0;
    
    TailleHaie(){
        
    }
    public void SwitchOn(){
        etat = true;
        cadence = 4500;
    }
    
    public void SwitchOff(){
        etat = false;
        cadence = 0;
    }
}
