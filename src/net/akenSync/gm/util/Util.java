package net.akenSync.gm.util;

import java.lang.reflect.Field;

public class Util {
	public Field[] getFields(Class obj) {
		Field[] res = null;

		String nomPackageSuper = obj.getSuperclass().getSimpleName();
		Field[] fieldObj = obj.getDeclaredFields();
		Field[] fieldSuper = obj.getSuperclass().getDeclaredFields();

		if (nomPackageSuper.compareTo("BaseModele") != 0) {
			res = new Field[fieldObj.length + fieldSuper.length];

			int indice = 0;
			int i = 0;
			for (i = 0; i < fieldObj.length; i++) {
				res[i] = fieldObj[i];
			}
			indice = i;
			for (int a = 0; a < fieldSuper.length; a++) {
				res[indice] = fieldSuper[a];
				indice++;
			}
		} else {

			res = new Field[fieldObj.length];
			for (int i = 0; i < fieldObj.length; i++) {
				res[i] = fieldObj[i];
			}
		}

		return res;
	}

	public String premierMaj(String s) {
		char[] lettreChar = s.toCharArray();
		String pl = String.valueOf(lettreChar[0]).toUpperCase();
		lettreChar[0] = pl.toCharArray()[0];
		return String.valueOf(lettreChar);
	}

	public String dateToString(java.util.Date d) {
		String day = d.getDate() + "";
		String mois = (d.getMonth() + 1) + "";
		if (d.getDate() < 10) {
			day = "0" + d.getDate();
		}
		if (d.getMonth() < 9) {
			mois = "0" + (d.getMonth() + 1);
		}

		return day + "/" + mois + "/" + (d.getYear() + 1900);
	}
}
