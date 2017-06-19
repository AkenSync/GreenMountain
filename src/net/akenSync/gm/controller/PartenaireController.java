package net.akenSync.gm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import net.akenSync.gm.formModele.PartenaireFormModel;
import net.akenSync.gm.metier.BaseMetier;
import net.akenSync.gm.metier.PartenaireMetier;
import net.akenSync.gm.modele.BaseModele;
import net.akenSync.gm.modele.Partenaire;
import net.akenSync.gm.modele.TypePartenaire;

@Controller
public class PartenaireController {
	@Autowired
	PartenaireMetier partenaireMetier;	
	@RequestMapping(value = "/Partenaire", method = RequestMethod.GET)
	public ModelAndView showForm(ModelMap model) {
		ModelAndView modelv=new ModelAndView("Partenaire", "command", new PartenaireFormModel());
		
		return modelv;
	}
	
	@RequestMapping(value = "/AddPartenaire", method = RequestMethod.POST)
	public ModelAndView addStock(@ModelAttribute("akenSync-gm") PartenaireFormModel form, ModelMap model) {
		try {
			partenaireMetier.add(form);
			
			return new ModelAndView("Partenaire/Success","command",new PartenaireFormModel());
		} catch (Exception e) {
			ModelAndView result = new ModelAndView("Partenaire","command",new PartenaireFormModel());
			result.addObject("id",form.getId());
			result.addObject("libelle", form.getLibelle());
			result.addObject("message", e.getMessage());
			e.printStackTrace();
			return result;
		}
		
	}
	
	@ModelAttribute("typePartenaireList")
	   public Map<String, String> getCountryList()
	   {
	      Map<String, String> typePartenaireList = new HashMap<String, String>();
	      List<BaseModele> liste;
	      try {
				liste = partenaireMetier.findAll(new TypePartenaire());
				for(BaseModele b:liste){
					TypePartenaire t=(TypePartenaire)b;
					typePartenaireList.put(String.valueOf(t.getId()), t.getLibelle());
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	      return typePartenaireList;
	   }
}
