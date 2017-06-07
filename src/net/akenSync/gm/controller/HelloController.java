package net.akenSync.gm.controller;

import java.util.List;

import net.akenSync.gm.dao.HibernateDao;
import net.akenSync.gm.metier.BaseMetier;
import net.akenSync.gm.modele.BaseModele;
import net.akenSync.gm.modele.Lieu;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.ModelMap;

@Controller
@RequestMapping("/hello")
public class HelloController {
	@Autowired   
   private BaseMetier baseMetier;
   @RequestMapping(method = RequestMethod.GET)
   public String printHello(ModelMap model) {
	   Lieu l=new Lieu();
	   
	   List<BaseModele> liste;
	   try {
		   liste = baseMetier.find(l);
		   for(BaseModele b: liste){
			   System.out.println(((Lieu)b).getVal());
		   }
	   } catch (Exception e) {
		   // TODO Auto-generated catch block
		   e.printStackTrace();
	   }
  
	   model.addAttribute("message", "Muhaja");
	   return "hello";
   }
}