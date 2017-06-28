package net.akenSync.gm.formModele;

import net.akenSync.gm.modele.BaseModele;
import net.akenSync.gm.modele.Partenaire;

public class PartenaireFormModel extends BaseFormModel{
	private String id;
	private String idtypepartenaire;
	private String libelle;
//	private String typePartenaire;
	public void getBaseModele(Partenaire b) throws Exception{
		b.setId(Integer.parseInt(getId()));
		b.setIdtypepartenaire(Integer.parseInt(getIdTypePartenaire()));
		b.setLibelle(getLibelle());
	}
	public PartenaireFormModel() {
		super();
	}

	public PartenaireFormModel(String id, String idTypePartenaire, String libelle) {
		super();
		this.id = id;
		this.idtypepartenaire = idTypePartenaire;
		this.libelle = libelle;
		//this.typePartenaire = typePartenaire;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	/*public String getTypePartenaire() {
		return typePartenaire;
	}

	public void setTypePartenaire(String typePartenaire) {
		this.typePartenaire = typePartenaire;
	}
*/
	public String getIdTypePartenaire() {
		return idtypepartenaire;
	}

	public void setIdTypePartenaire(String idTypePartenaire) {
		this.idtypepartenaire = idTypePartenaire;
	}

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}


}
