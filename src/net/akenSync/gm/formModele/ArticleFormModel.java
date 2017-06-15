package net.akenSync.gm.formModele;

public class ArticleFormModel {
	private int id;
	private String libelle;
	private String code;
	private Double prix;

	public ArticleFormModel() {
		super();
	}

	public ArticleFormModel(int id, String libelle, String code, Double prix) {
		super();
		this.id = id;
		this.libelle = libelle;
		this.code = code;
		this.prix = prix;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Double getPrix() {
		return prix;
	}

	public void setPrix(Double prix) {
		this.prix = prix;
	}

	@Override
	public String toString() {
		return "ArticleFormModel [id=" + id + ", libelle=" + libelle + ", code=" + code + ", prix=" + prix + "]";
	}

	
}
