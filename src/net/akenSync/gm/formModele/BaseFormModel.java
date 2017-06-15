package net.akenSync.gm.formModele;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import net.akenSync.gm.modele.BaseModele;
import net.akenSync.gm.util.Utilitaire;

public class BaseFormModel {
	public void getBaseModele(BaseModele b) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException{
		Object[] listeGetters=Utilitaire.getGetters(this);
		Object[] listeSetters=Utilitaire.getSetters(b);
		
		for(Object obj: listeSetters){
			Method setter=(Method)obj;
			Method getter=Utilitaire.getGetter(listeGetters,setter);
			Object object=getter.invoke(this, null);
			setter.invoke(b, object);
		}
	}
}
