package edunova;

import javax.swing.JOptionPane;

public class Zadatak04 {

	public static void main(String[] args) {
		// Keirati program koji unosi dvije matrice 4x4 te ispisuje njihov zbroj
		
		int [][] matrica_1=new int [4][4];
		for (int i=0;i<=3;i++) {
			for(int j=0;j<=3;j++) {
				matrica_1[i][j] = Integer.parseInt(
						JOptionPane.showInputDialog(
								"Unesi broj na mjesto: " + (i+1) + "," + (j+1)));
			}
		}
		int [][] matrica_2=new int [4][4];
		for (int a=0;a<=3;a++) {
			for(int b=0;b<=3;b++) {
				matrica_2[a][b] = Integer.parseInt(
					JOptionPane.showInputDialog(
						"Unesi broj na mjesto: " + (a+1) + "," + (b+1)));
		
		}
	}

		int sum= matrica_1[0][0]+matrica_1[0][1]+matrica_1[0][2]+matrica_1[0][3]
				+matrica_1[1][0]+matrica_1[1][1]+matrica_1[1][2]+matrica_1[1][3]
			    +matrica_1[2][0]+matrica_1[2][1]+matrica_1[2][2]+matrica_1[2][3]
			    +matrica_1[3][0]+matrica_1[3][1]+matrica_1[3][2]+matrica_1[3][3]
			    +matrica_2[0][0]+matrica_2[0][1]+matrica_2[0][2]+matrica_2[0][3]
			    +matrica_2[1][0]+matrica_2[1][1]+matrica_2[1][2]+matrica_2[1][3]
			    +matrica_2[2][0]+matrica_2[2][1]+matrica_2[2][2]+matrica_2[2][3]
			    +matrica_2[3][0]+matrica_2[3][1]+matrica_2[3][2]+matrica_2[3][3];
		System.out.println(sum);
}
}