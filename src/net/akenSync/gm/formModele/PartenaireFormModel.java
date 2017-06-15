package net.akenSync.gm.formModele;

public class PartenaireFormModel {
	private int id;
	private int idTypePartenaire;
	private String libelle;
	private String typePartenaire;

	public PartenaireFormModel() {
		super();
	}

	public PartenaireFormModel(int id, int idTypePartenaire, String libelle, String typePartenaire) {
		super();
		this.id = id;
		this.idTypePartenaire = idTypePartenaire;
		this.libelle = libelle;
		this.typePartenaire = typePartenaire;
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

	public String getTypePartenaire() {
		return typePartenaire;
	}

	public void setTypePartenaire(String typePartenaire) {
		this.typePartenaire = typePartenaire;
	}

	public int getIdTypePartenaire() {
		return idTypePartenaire;
	}

	public void setIdTypePartenaire(int idTypePartenaire) {
		this.idTypePartenaire = idTypePartenaire;
	}

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	@Override
	public String toString() {
		return "PartenaireFormModel [id=" + id + ", idTypePartenaire=" + idTypePartenaire + ", libelle=" + libelle
				+ ", typePartenaire=" + typePartenaire + "]";
	}
	
}
