import java.util.List;

import net.akenSync.gm.dao.HibernateDao;
import net.akenSync.gm.modele.BaseModele;
import net.akenSync.gm.modele.Lieu;

public class Test {

	public static void main(String[] args) {
		HibernateDao dao = new HibernateDao();
        //dao.setSessionFactory(HibernateUtil.getSessionFactory());
        /*Lieu l=new Lieu();
        l.setVal("Sainte Marie");
        try {
			dao.save(l);
		} catch (Exception e) {
			e.printStackTrace();
		}*/
		Lieu l=new Lieu();
		l.setVal("Antsirabe");
        List<BaseModele> liste=dao.findAll(l);
        for(BaseModele b: liste){
        	System.out.println(((Lieu)b).getVal());
        }
        Lieu id=new Lieu();
        id.setId(4);
        dao.findById(id);
        System.out.println("Find By Id : "+id.getVal());
        
	}

}
