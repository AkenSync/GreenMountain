package net.akenSync.gm.modele;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Date;

import javax.persistence.*;

import net.akenSync.gm.util.Util;
@MappedSuperclass
public abstract class BaseModele implements Serializable{
	@Id
    @GeneratedValue(strategy=GenerationType.SEQUENCE,generator = "sequence_id")
	private Integer id;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	public String buildQueryFind() throws Exception
    {
       String res=this.getClass().getSimpleName()+" WHERE 1=1 ";
        Util util=new Util();
        Field[] champs=util.getFields(this.getClass());
        String operateur = " = ";
        String likePourcentage = "";
        String upper="";
        for(int i=0; i<champs.length;i++)
        {
           
            System.out.println("utiltest " + util.premierMaj(champs[i].getName()).toString());
    
            Method met=this.getClass().getMethod("get"+util.premierMaj(champs[i].getName()), null);
            Object obj=met.invoke(this, null);
            operateur = " = ";
            likePourcentage = "";
            upper="";
            if(obj!=null && obj.toString().compareToIgnoreCase("")!=0)
            {
                String val=obj.toString();
                switch(obj.getClass().getName())
                {
                	
                    case("java.util.Date"):
                        val=util.dateToString((Date)obj);  
                        break;
                    case("java.lang.String"):
                        operateur=" like ";
                        likePourcentage="%";
                        val=val.toUpperCase();
                        upper="upper";
                    
                }
                
                res=res+" AND "+upper+"("+champs[i].getName().toUpperCase()+")"+operateur+" '"+likePourcentage+val+likePourcentage+"'";
            }
        }
        System.out.println("le resultat de la requete " + res );
        return res;
    }
}
