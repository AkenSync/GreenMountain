package net.akenSync.gm.metier;

import java.util.List;

import net.akenSync.gm.dao.HibernateDao;
import net.akenSync.gm.modele.BaseModele;

public class BaseMetier {
	private HibernateDao hd;
	public BaseMetier(){
		//setHd(new HibernateDao());
	} 
	public List<BaseModele>  findAll(BaseModele b) throws Exception{
		try{
			return getHd().findAll(b);
		}catch (Exception ex){
            
            throw ex;
        }
	}
	public List<BaseModele>  find(BaseModele b) throws Exception{
		try{
			return getHd().find(b);
		}catch (Exception ex){
            
            throw ex;
        }
	}
	public void  findById(BaseModele b) throws Exception{
		try{
			getHd().findById(b);
		}catch (Exception ex){
            
            throw ex;
        }
	}
	public void delete(BaseModele b) throws Exception{
		try{
			getHd().delete(b);
		}catch (Exception ex){
            
            throw ex;
        }
	}
	public void update(BaseModele b)throws Exception{
		try{
			getHd().update(b);
		}catch (Exception ex){
            
            throw ex;
        }
	}
	public void insert(BaseModele b) throws Exception{
		try{
			System.out.println("Dans baseMetier");
			b.toString();
			getHd().save(b);
		}catch (Exception ex){
            
            throw ex;
        }
	}
	/**
	 * @return the hd
	 */
	public HibernateDao getHd() {
		return hd;
	}
	/**
	 * @param hd the hd to set
	 */
	public void setHd(HibernateDao hd) {
		this.hd = hd;
	}
	
}
