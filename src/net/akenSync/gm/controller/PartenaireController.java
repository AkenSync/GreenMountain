package net.akenSync.gm.controller;

import java.util.Map;

import net.akenSync.gm.formModele.Stock;
import net.akenSync.gm.modele.Partenaire;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/partenaire")
public class PartenaireController {
	@RequestMapping(value = "/Stock", method = RequestMethod.GET)
	public ModelAndView showForm() {
		return new ModelAndView("Partenaire/Test", "command", new Stock());
	}

	@RequestMapping(value = "/AddPartenaire", method = RequestMethod.POST)
	public String addStock(@ModelAttribute("akenSync-gm") Stock stock, ModelMap model) {
		model.addAttribute("id", stock.getId());
		model.addAttribute("code", stock.getCode());
		model.addAttribute("label", stock.getLabel());
		model.addAttribute("description", stock.getDescription());
		
		model.addAttribute("message", "insertion successfull");
		return "Partenaire/Testt";
	}

}
