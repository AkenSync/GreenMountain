package net.akenSync.gm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	public ModelAndView showForm() {
		return new ModelAndView("MasterData/Partenaire", "command", new PartenaireFormModel());
	}
	
	@RequestMapping(value = "/AddPartenaire", method = RequestMethod.POST)
	public ModelAndView addStock(@ModelAttribute("akenSync-gm") PartenaireFormModel form, ModelMap model) {
		/*ModelAndView result = new ModelAndView("MasterData/Partenaire","command",new PartenaireFormModel());
		result.addObject("id",form.getId());
		result.addObject("libelle", form.getLibelle());
		result.addObject("message", "Fonction en cours de developpement");
		return result;*/
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
	@RequestMapping(value = "/Rechercher", method = RequestMethod.POST)
	public String rechercher(@RequestParam("id") String id,@RequestParam("idTypePartenaire") String idTypePartenaire,@RequestParam("libelle") String libelle,ModelMap model) {
		try {
			Partenaire p=new Partenaire();
			p.setId(Integer.valueOf(id));
			p.setIdtypepartenaire(Integer.valueOf(idTypePartenaire));
			p.setLibelle(libelle);
			Partenaire[] liste=partenaireMetier.search(p);
			System.out.println("Taille : "+liste.length);
			model.addAttribute("listePartenaire", liste);
		}catch (Exception e) {
			System.out.println(e.getCause().getMessage());
			if(e.getCause().getMessage().compareTo("001")==0){
				Partenaire p=new Partenaire();
				p.setId(Integer.valueOf(id));
				p.setIdtypepartenaire(Integer.valueOf(idTypePartenaire));
				try {
					Partenaire[] liste=partenaireMetier.search(p);
					model.addAttribute("listePartenaire", liste);
				} catch (Exception e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
		}
		return "Partenaire/ListePartenaire";
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
