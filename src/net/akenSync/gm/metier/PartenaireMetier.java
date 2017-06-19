package net.akenSync.gm.metier;

import java.lang.reflect.InvocationTargetException;

import net.akenSync.gm.formModele.PartenaireFormModel;
import net.akenSync.gm.modele.Partenaire;

public class PartenaireMetier extends BaseMetier{
	public void add(PartenaireFormModel p) throws Exception{
		Partenaire part=new Partenaire();
		p.getBaseModele(part);
		this.insert(part); 
	}
}
