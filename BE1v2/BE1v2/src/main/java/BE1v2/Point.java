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
    


public class Point{
    private double x;
    private double y;
    Point(double xi,double yi){
        x = xi;
        y = yi;
    }

    public void affiche(){
        System.out.println(x+" et "+y);
    }

    public String toString(){
        return(x+" et "+y);
    }

    public void symetrique(){
        x *= -1;
        y *= -1;
    }
    public double distance(){
        return Math.sqrt(x*x+y*y);
    }
    public double cx(){
        return(x);
    }
    
    public double cy(){
        return(y);
    }
    
}
