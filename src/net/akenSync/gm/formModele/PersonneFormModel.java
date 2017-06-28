package net.akenSync.gm.formModele;

import javax.persistence.Column;

public class PersonneFormModel {
	private int id;
	private Integer idTypePersonne;
	private String nom;
	private String prenom;
	private String email;
	private String telephone1;
	private String telephone2;
	private String adresse;

	public PersonneFormModel() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public Integer getIdTypePersonne() {
		return idTypePersonne;
	}

	public void setIdTypePersonne(Integer idTypePersonne) {
		this.idTypePersonne = idTypePersonne;
	}
		
}
