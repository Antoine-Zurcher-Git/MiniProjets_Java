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
public class Segment {
    private Point p1;
    private Point p2;

    public Segment(){
        p1 = new Point(0,0);
        p2 = new Point(1,1);
    }

    public Segment(Point p1i,Point p2i){
        p1 = p1i;
        p2 = p2i;
    }

    public String toString(){
        return p1.toString()+" ainsi que "+p2.toString();
    }
    
    public double longueur(){
        return( Math.sqrt((p1.cx()-p2.cx())*(p1.cx()-p2.cx())+(p1.cy()-p2.cy())*(p1.cy()-p2.cy())) );
    }
}
