package net.akenSync.gm.modele;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "personne")
@SequenceGenerator(name = "sequence_id", sequenceName = "personne_idpersonne_seq", allocationSize = 1)
@AttributeOverrides({ @AttributeOverride(name = "id", column = @Column(name = "idpersonne")) })
public class Personne extends BaseModele{
	@Column(name = "idtypepersonne")
	private Integer idtypepersonne;
	@Column(name = "nom")
	private String nom;
	@Column(name = "prenom")
	private String prenom;
	@Column(name = "email")
	private String email;
	@Column(name = "telephone1")
	private String telephone1;
	@Column(name = "telephone2")
	private String telephone2;
	@Column(name = "adresse")
	private String adresse;
	public Integer getIdtypepersonne() {
		return idtypepersonne;
	}
	public void setIdtypepersonne(Integer idtypepersonne) {
		this.idtypepersonne = idtypepersonne;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelephone1() {
		return telephone1;
	}
	public void setTelephone1(String telephone1) {
		this.telephone1 = telephone1;
	}
	public String getTelephone2() {
		return telephone2;
	}
	public void setTelephone2(String telephone2) {
		this.telephone2 = telephone2;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
}
