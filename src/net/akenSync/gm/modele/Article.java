package net.akenSync.gm.modele;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
@Entity 
@Table(name = "Article" )
@SequenceGenerator(name="sequence_id",sequenceName="article_idproduit_seq",allocationSize=1)
@AttributeOverrides({
    @AttributeOverride(name = "id", column = @Column(name = "idarticle"))
})
public class Article  extends BaseModele{
	
	@Column(name = "libelle")
	private String libelle;
	@Column(name = "code")
	private String code;
	@Column(name = "prix")
	private Double prix;
	public Article() {
		
	}
	public Article(String libelle, String code, Double prix) {
		super();
		this.libelle = libelle;
		this.code = code;
		this.prix = prix;
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
	
}
