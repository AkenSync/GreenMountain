package net.akenSync.gm.modele;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
@Entity 
@Table(name = "Lieu" )
@SequenceGenerator(name="sequence_id",sequenceName="seqlieu",allocationSize=1)
//@AttributeOverride(name="id", column="@Column(name="idLieu"))
public class Lieu extends BaseModele{
	@Column(name = "val")
	private String val;
	public String getVal() {
		return val;
	}
	public void setVal(String val) {
		this.val = val;
	}
}
