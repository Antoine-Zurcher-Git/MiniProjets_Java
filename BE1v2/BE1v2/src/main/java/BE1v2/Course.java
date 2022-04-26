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
public class Course {
    
    float tempsD;
    
    Course(){}
    
    public void start(float tempsDi){
        tempsD = tempsDi;
    }
    
    public float stop(float tempsAi){
        return (tempsAi-tempsD);
    }
}
