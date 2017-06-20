package net.akenSync.gm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import net.akenSync.gm.formModele.PartenaireFormModel;
import net.akenSync.gm.formModele.StockFormModel;
import net.akenSync.gm.metier.BaseMetier;
import net.akenSync.gm.modele.Stock;

@Controller
public class StockController {
	@Autowired
	private BaseMetier baseMetier;
	
	@RequestMapping(value = "/Stock", method = RequestMethod.GET)
	public ModelAndView showForm() {
		return new ModelAndView("MasterData/Stock", "command", new StockFormModel());
	}
	
	@RequestMapping(value = "/AddStock", method = RequestMethod.POST)
	public ModelAndView addStock(@ModelAttribute("akenSync-gm") StockFormModel form, ModelMap model) {
		
		ModelAndView result = new ModelAndView("MasterData/Stock","command",new StockFormModel());
		
		result.addObject("id",form.getId());
		result.addObject("name",form.getName());
		result.addObject("description",form.getDescription());
		result.addObject("address",form.getAddress());
		
		Stock baseModel = new Stock();
		baseModel.setStockName(form.getName());
		baseModel.setDescription(form.getDescription());
		baseModel.setAddress(form.getAddress());
		
		try {
			baseMetier.insert(baseModel);
			result.addObject("message", "Insertion success = "+baseModel.toString());
		} catch (Exception e) {
			result.addObject("message", "Insertion fail");
		}
		return result;
	}
}
