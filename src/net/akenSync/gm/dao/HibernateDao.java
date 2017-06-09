package net.akenSync.gm.dao;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import net.akenSync.gm.modele.BaseModele;
import net.akenSync.gm.modele.Lieu;
import net.akenSync.gm.util.Utilitaire;

import org.hibernate.*;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Example;
import org.hibernate.metamodel.Metadata;
import org.hibernate.metamodel.MetadataSources;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class HibernateDao {
	private SessionFactory sessionFactory;
	
    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }
    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    
	public HibernateDao(){
		/*try{
			Configuration a=new Configuration();
			a.configure().addAnnotatedClass(Lieu.class);
			ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().applySettings(
			            a.getProperties()).build();
	         setSessionFactory( a.buildSessionFactory());
	      }catch (Throwable ex) { 
	         System.err.println("Failed to create sessionFactory object." + ex);
	         throw new ExceptionInInitializerError(ex); 
	      }*/
	}
	public void delete(BaseModele obj) throws Exception{
        Session session = null;
        Transaction tr=null;
        try{
            session = getSessionFactory().openSession();
            tr=session.beginTransaction();
            session.delete(obj);
            tr.commit();
        }catch (Exception ex){
            if(tr!=null)
                tr.rollback();
            throw ex;
        }finally {
            if(session!=null)
                session.close();
        }
    }
	public void delete(BaseModele obj,Session session) throws Exception{
        
        try{
            session.delete(obj);
        }catch (Exception ex){
            throw ex;
        }finally {
            if(session!=null)
                session.close();
        }
    }
	public void update(BaseModele obj) throws Exception{
        Session session = null;
        Transaction tr=null;
        try{
            session = getSessionFactory().openSession();
            tr=session.beginTransaction();
            session.update(obj);
            tr.commit();
        }catch (Exception ex){
            if(tr!=null)
                tr.rollback();
            throw ex;
        }finally {
            if(session!=null)
                session.close();
        }
    }
	public void update(BaseModele obj,Session session) throws Exception{
        
        try{
            session.update(obj);
        }catch (Exception ex){
            throw ex;
        }finally {
            if(session!=null)
                session.close();
        }
    }
	public void save(BaseModele obj) throws Exception{
        Session session = null;
        Transaction tr=null;
        try{
            session = getSessionFactory().openSession();
            tr=session.beginTransaction();
            session.save(obj);
            tr.commit();
        }catch (Exception ex){
            if(tr!=null)
                tr.rollback();
            throw ex;
        }finally {
            if(session!=null)
                session.close();
        }
    }
	public void save(BaseModele obj,Session session) throws Exception{
        
        try{
            session.save(obj);
        }catch (Exception ex){
            throw ex;
        }finally {
            if(session!=null)
                session.close();
        }
    }
    public void findById(BaseModele obj){
        Session session = null;
        try{
            session = getSessionFactory().openSession();
            session.load(obj,obj.getId());
        }catch (Exception ex){
            throw ex;
        }finally {
            if(session!=null)
                session.close();
        }
    }
    public void findById(BaseModele obj,Session session){
        try{
            session.load(obj,obj.getId());
        }catch (Exception ex){
            throw ex;
        }finally {
            if(session!=null)
                session.close();
        }
    }

    public List<BaseModele> findAll(BaseModele obj){
        Session session = null;
        try{
            session = getSessionFactory().openSession();
            session.beginTransaction();
            Criteria criteria = session.createCriteria(obj.getClass());
            //List<BaseModele> res=criteria.add(Example.create(obj).excludeZeroes()).list();
            List<BaseModele> res=(List<BaseModele>)criteria.list();
            session.getTransaction().commit();
            System.out.println(obj.getClass().getName());
            return  res;
        }catch (Exception ex){
            throw ex;
        }finally {
            if(session!=null)
                session.close();
        }
    }
    public List<BaseModele> findAll(BaseModele obj,Session session){
        try{
            Criteria criteria = session.createCriteria(obj.getClass());
            List<BaseModele> res=criteria.add(Example.create(obj).excludeZeroes()).list();
            System.out.println("dans HDAO"+res.size());
            return  res;
        }catch (Exception ex){
            throw ex;
        }finally {
            if(session!=null)
                session.close();
        }
    }
 
    public List<BaseModele> find(BaseModele b) throws Exception {
        Session sess = null;
        List<BaseModele> res = null;
        try {
            res = new ArrayList<BaseModele>();
            sess = this.getSessionFactory().openSession();
            res = find(b, sess);
            return res;
        } catch (Exception ex) {
            throw ex;
        } finally {
            if (sess != null) {
                sess.close();
            }
        }
    }

 
    public List<BaseModele> find(BaseModele b, Session sess) throws Exception {
        List<BaseModele> res = null;
        try {
            res = new ArrayList<BaseModele>();
            res = sess.createQuery("FROM " + b.buildQueryFind()).list();
            
            return res;
        } catch (Exception ex) {
            throw ex;
        }
    }
}
