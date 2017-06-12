package net.akenSync.gm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import net.akenSync.gm.formModele.Stock;

@Controller
public class StockController {
	@RequestMapping(value = "/stock", method = RequestMethod.GET)
	public ModelAndView showForm() {
		return new ModelAndView("Stock/stock", "command", new Stock());
	}

	@RequestMapping(value = "/addStock", method = RequestMethod.POST)
	public String addStock(@ModelAttribute("akenSync-gm") Stock stock, ModelMap model) {
		model.addAttribute("id", stock.getId());
		model.addAttribute("code", stock.getCode());
		model.addAttribute("label", stock.getLabel());
		model.addAttribute("description", stock.getDescription());
		
		model.addAttribute("message", "insertion successfull");
		return "Stock/result";
	}
}
