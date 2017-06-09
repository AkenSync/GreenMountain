package net.akenSync.gm.modele;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
@Entity 
@Table(name = "Lieu" )
@SequenceGenerator(name="sequence_id",sequenceName="seqlieu",allocationSize=1)
@AttributeOverrides({
    @AttributeOverride(name = "id", column = @Column(name = "idlieu"))
})
public class Lieu extends BaseModele{
	@Column(name = "libelle")
	private String libelle;

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}
	
}
