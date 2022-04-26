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
//package syracuse;

import java.io.IOException;

public class Syracuse {
	public static void main(String[] args) {
		byte[] b = new byte[80];
		int u;
		System.out.println("Entrez U(0) :");
		try {
			System.in.read(b);
			u = Integer.parseInt(new String(b).trim());
		} catch (IOException e) {
			System.out.println("Problème d'IO, utilise nombre par défaut 10");
			u = 10;
			e.getMessage();
		} catch (Exception e) {
			System.out.println("Problème de format détecté, entier demandé en entrée, utilise nombre par défaut 10");
			u = 10;
		}
		int i = 1, maxi = 100;
		System.out.println("U(0) = " + u);
		while (i < maxi) {
			if (u % 2 == 1)
				u = 3 * u + 1;
			else
				u = u / 2;
			System.out.println("U(" + i + ") = " + u);
			i++;
		}
	}
}