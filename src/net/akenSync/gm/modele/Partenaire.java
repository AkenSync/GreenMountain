package net.akenSync.gm.modele;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "partenaire")
@SequenceGenerator(name = "sequence_id", sequenceName = "partenaire_idpartenaire_seq", allocationSize = 1)
@AttributeOverrides({ @AttributeOverride(name = "id", column = @Column(name = "idpartenaire")) })
public class Partenaire extends BaseModele {
	@Column(name = "idtypepartenaire")
	private Integer idtypepartenaire;
	@Column(name = "libelle")
	private String libelle;

	public Integer getIdtypepartenaire() {
		return idtypepartenaire;
	}

	public void setIdtypepartenaire(Integer idtypepartenaire) {
		this.idtypepartenaire = idtypepartenaire;
	}

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

}
