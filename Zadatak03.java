package edunova;

import javax.swing.JOptionPane;

public class Zadatak03 {

	public static void main(String[] args) {
		// Kreirati program koji za dva unesena broja ispisuje sve prim brojeve izmeðu njih.
		
		int a=Integer.parseInt(JOptionPane.showInputDialog("Unesi 1.broj"));
		int b=Integer.parseInt(JOptionPane.showInputDialog("Unesi 2.broj"));
	
		boolean prim = false;
		
		for(int i = a; i <= b; i++) {
			prim = false;
			for(int j=2; j<i; j++) {
			

        if(i%j==0) {
        	break;
        }
        else {
        	prim = true;
        }
	
			}
		if (prim == true) 
			System.out.println(i);
		}
	}
}

        

	
