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
public class Capitaine {
    private int age;
    private String nom;
    Capitaine(int agei,String nomi) throws MauvaisAgeException{
        setAge(agei);
        nom = nomi;
    }
    
    public void setAge(int agei)throws MauvaisAgeException{
        if(agei >= 18 && agei <= 65){
            age = agei;
        }else{
            System.out.println("Mauvais age malheureux !");
            throw new MauvaisAgeException();
        }
    }
}
