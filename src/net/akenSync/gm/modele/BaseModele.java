package net.akenSync.gm.modele;

import java.io.Serializable;

import javax.persistence.*;
@MappedSuperclass
public abstract class BaseModele implements Serializable{
	@Id
    @GeneratedValue(strategy=GenerationType.SEQUENCE,generator = "sequence_id")
	private int id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
}
