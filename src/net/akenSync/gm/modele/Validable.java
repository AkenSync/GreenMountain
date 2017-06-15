package net.akenSync.gm.modele;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

public class Validable {
	public Field[] validNull(String[] exept) throws IllegalArgumentException, IllegalAccessException{
		Field[] fieldList=this.getClass().getDeclaredFields();
		List<Field> res=new ArrayList<Field>();
		for(Field f:fieldList){
			f.setAccessible(true);
		
			if(f.get(this)==null)res.add(f);
		}
		 
		return res.toArray(fieldList);
	}
}
