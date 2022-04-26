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
public class Individu {
    private String prenom;
    private int age;

    Individu(String prenomi, int agei){
        setPrenom(prenomi);
        setAge(agei);
    }

    public void setPrenom(String nPrenom){
        prenom = nPrenom;
    }

    public void setAge(int nAge){
        if(nAge >= 0){
            age = nAge;
        }
    }

    public String getPrenom(){
        return prenom;
    }
    public int getAge(){
        return age;
    }
    public String toString(){
        return (prenom+" ; "+age);
    }
}
