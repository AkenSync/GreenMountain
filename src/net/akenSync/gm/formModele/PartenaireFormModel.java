package net.akenSync.gm.formModele;

import net.akenSync.gm.modele.BaseModele;
import net.akenSync.gm.modele.Partenaire;

public class PartenaireFormModel extends BaseFormModel{
	private int id;
	private int idtypepartenaire;
	private String libelle;
//	private String typePartenaire;
	public void getBaseModele(Partenaire b) throws Exception{
		System.out.println("Entree PartenaireFOrm Model");
		b.setId(getId());
		b.setIdtypepartenaire(getIdTypePartenaire());
		b.setLibelle(getLibelle());
	}
	public PartenaireFormModel() {
		super();
	}

	public PartenaireFormModel(int id, int idTypePartenaire, String libelle) {
		super();
		this.id = id;
		this.idtypepartenaire = idTypePartenaire;
		this.libelle = libelle;
		//this.typePartenaire = typePartenaire;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getIdPartenaire() {
		return id;
	}

	public void setIdPartenaire(int idPartenaire) {
		this.id = idPartenaire;
	}

	/*public String getTypePartenaire() {
		return typePartenaire;
	}

	public void setTypePartenaire(String typePartenaire) {
		this.typePartenaire = typePartenaire;
	}
*/
	public int getIdTypePartenaire() {
		return idtypepartenaire;
	}

	public void setIdTypePartenaire(int idTypePartenaire) {
		this.idtypepartenaire = idTypePartenaire;
	}

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}


}
