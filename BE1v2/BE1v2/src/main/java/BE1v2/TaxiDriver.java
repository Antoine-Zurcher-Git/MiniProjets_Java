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
public class TaxiDriver extends Personne {
    String id;
    public TaxiDriver(String nom,String identifiant){
        super(nom);
        id = identifiant;
    }
}
