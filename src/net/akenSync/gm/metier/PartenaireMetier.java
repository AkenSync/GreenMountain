package net.akenSync.gm.metier;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import net.akenSync.gm.formModele.PartenaireFormModel;
import net.akenSync.gm.modele.BaseModele;
import net.akenSync.gm.modele.Partenaire;

public class PartenaireMetier extends BaseMetier{
	public void add(PartenaireFormModel p) throws Exception{
		Partenaire part=new Partenaire();
		p.getBaseModele(part);
		this.insert(part); 
	}

	public Partenaire[] search(Partenaire p) throws Exception {
		List<BaseModele> liste=this.findCriteria(p);
		Partenaire[] listepart=new Partenaire[liste.size()];
		int id=0;
		for(BaseModele b:liste){
			Partenaire temp=(Partenaire)b;
			listepart[id]=temp;
			id++;
		}
		return listepart;
	}
}
