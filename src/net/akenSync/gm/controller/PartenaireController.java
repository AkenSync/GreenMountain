package net.akenSync.gm.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import net.akenSync.gm.formModele.PartenaireFormModel;

@Controller
public class PartenaireController {
	@RequestMapping(value = "/Partenaire", method = RequestMethod.GET)
	public ModelAndView showForm() {
		return new ModelAndView("Partenaire", "command", new PartenaireFormModel());
	}
	
	@RequestMapping(value = "/AddPartenaire", method = RequestMethod.POST)
	public ModelAndView addStock(@ModelAttribute("akenSync-gm") PartenaireFormModel form, ModelMap model) {
		ModelAndView result = new ModelAndView("Partenaire","command",new PartenaireFormModel());
		
		result.addObject("id",form.getId());
		result.addObject("libelle", form.getLibelle());
		result.addObject("message", "Fonction en cours de developpement");
		System.out.println(form.toString());
		
		return result;
	}
	
	@ModelAttribute("typePartenaireList")
	   public Map<String, String> getCountryList()
	   {
	      Map<String, String> typePartenaireList = new HashMap<String, String>();
	      typePartenaireList.put("1", "Fournisseur");
	      typePartenaireList.put("2", "Client");
	      return typePartenaireList;
	   }
}
