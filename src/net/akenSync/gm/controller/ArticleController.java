package net.akenSync.gm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import net.akenSync.gm.formModele.ArticleFormModel;

@Controller
public class ArticleController {
	@RequestMapping(value = "/Article", method = RequestMethod.GET)
	public ModelAndView showForm() {
		return new ModelAndView("Article", "command", new ArticleFormModel());
	}
	
	@RequestMapping(value = "/AddArticle", method = RequestMethod.POST)
	public ModelAndView addStock(@ModelAttribute("akenSync-gm") ArticleFormModel form, ModelMap model) {
		ModelAndView result = new ModelAndView("Article","command",new ArticleFormModel());
		result.addObject("id", form.getId());
		result.addObject("code", form.getCode());
		result.addObject("libelle", form.getLibelle());
		result.addObject("prix", form.getPrix());
		result.addObject("message", "Fonction en cours de developpement");
		System.out.println(form.toString());
		return result;
	}
}
