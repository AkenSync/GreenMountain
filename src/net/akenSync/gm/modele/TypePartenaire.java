package net.akenSync.gm.modele;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity 
@Table(name = "Typepartenaire" )
@SequenceGenerator(name="sequence_id",sequenceName="typepartenaire_idtypepartenaire_seq",allocationSize=1)
@AttributeOverrides({
    @AttributeOverride(name = "id", column = @Column(name = "idtypepartenaire"))
})
public class TypePartenaire extends BaseModele{
	@Column(name = "libelle")
	private String libelle;

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}
}
