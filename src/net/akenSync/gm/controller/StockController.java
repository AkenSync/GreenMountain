package net.akenSync.gm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import net.akenSync.gm.formModele.PartenaireFormModel;
import net.akenSync.gm.formModele.StockFormModel;

@Controller
public class StockController {
	@RequestMapping(value = "/Stock", method = RequestMethod.GET)
	public ModelAndView showForm() {
		return new ModelAndView("Stock/Stock", "command", new StockFormModel());
	}

	/*@RequestMapping(value = "/AddStock", method = RequestMethod.POST)
	public String addStock(@ModelAttribute("akenSync-gm") StockFormModel stock, ModelMap model) {
		model.addAttribute("id", stock.getId());
		model.addAttribute("code", stock.getCode());
		model.addAttribute("label", stock.getLabel());
		model.addAttribute("description", stock.getDescription());
		
		model.addAttribute("message", "insertion successfull");
		return "Stock/result";
	}*/
	
	@RequestMapping(value = "/AddStock", method = RequestMethod.POST)
	public ModelAndView addStock(@ModelAttribute("akenSync-gm") StockFormModel form, ModelMap model) {
		ModelAndView result = new ModelAndView("Stock/Stock","command",new StockFormModel());
		
		result.addObject("id",form.getId());
		result.addObject("code", form.getCode());
		result.addObject("label", form.getLabel());
		result.addObject("description", form.getDescription());
		result.addObject("message", "Fonction en cours de developpement");
		System.out.println(form.toString());
		
		return result;
	}
}
