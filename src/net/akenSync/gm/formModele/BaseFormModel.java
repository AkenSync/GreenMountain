package net.akenSync.gm.formModele;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import net.akenSync.gm.modele.BaseModele;
import net.akenSync.gm.util.Utilitaire;

public class BaseFormModel {
	public void getBaseModele(BaseModele b) throws Exception{
		System.out.println("Entree BaseFormModel");
		Object[] listeGetters=Utilitaire.getGetters(this);
		Object[] listeSetters=Utilitaire.getSetters(b);
		
		for(Object obj: listeSetters){
			Method setter=(Method)obj;
			System.out.println(setter.getName());
			Method getter=Utilitaire.getGetter(listeGetters,setter);
			System.out.println(getter.getName());
			Object object=getter.invoke(this, null);
			setter.invoke(b, object);
		}
	}
}
