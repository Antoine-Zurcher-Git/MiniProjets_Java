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
import java.util.ArrayList;

public class Polygone {
    private ArrayList<Point> polygone;
    //polygone = new ArrayList<Point> ();
    Polygone(){
        polygone = new ArrayList<Point> ();  
    }
    
    
    public void addPoint(Point p){
        if(estDansPolygone(p)){
            polygone.add(p);
        }
    }
    
    public String toString(){
        String c = "";
        for(Point f:polygone){
            c += f.toString();
            c += " ; ";
        }
        return c;
    }
    
    private boolean estDansPolygone(Point p){
        return (true);
    }
}
