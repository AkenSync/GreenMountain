package net.akenSync.gm.test;

import java.lang.reflect.Field;

import net.akenSync.gm.formModele.LieuFormModel;
import net.akenSync.gm.modele.Lieu;

public class TestMyhaja {

	public static void main(String[] args) {
			try {
				LieuFormModel l=new LieuFormModel();
				l.setLibelle("test");
				Lieu temp=new Lieu();
				l.getBaseModele(temp);
				System.out.println(temp.getLibelle());
			} catch (Exception ex) {
				ex.printStackTrace();
			}

	}

}
