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
public class Taxi extends Voiture {
    private TaxiDriver conducteur;
    private float tempsT;
    private Course courses = new Course();
    private boolean libre = true;
    Taxi(String imma, TaxiDriver conducteuri){
        super(imma);
        conducteur=conducteuri;
    }
    
    public void startCourse(Personne client){
        if(libre){
            courses.start(0);
            libre = false;
        }
    }
    
    public void stopCourse(){
        tempsT += courses.stop(100);
        libre =true;
    }
    
}
