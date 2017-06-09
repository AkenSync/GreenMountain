package net.akenSync.gm.interfaces;

import java.util.List;

import org.hibernate.Session;

import net.akenSync.gm.modele.BaseModele;

public interface BaseDao {
		public abstract void delete(BaseModele b);
		public abstract void delete(BaseModele b, Session s);
		public abstract List<BaseModele> find(BaseModele b);
		public abstract List<BaseModele> find(BaseModele b,Session s);
		public abstract List<BaseModele> findAll(BaseModele b);
		public abstract List<BaseModele> findAll(BaseModele b,Session s);
		public abstract List<BaseModele> findById(BaseModele b);
		public abstract List<BaseModele> findById(BaseModele b,Session s);
		public abstract void save(BaseModele b);
		public abstract void save(BaseModele b,Session s);
		public abstract void update(BaseModele b);
		public abstract void update(BaseModele b,Session s);
}
