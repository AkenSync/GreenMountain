package net.akenSync.gm.controller;

import net.akenSync.gm.formModele.PersonneFormModel;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/Vente", method = RequestMethod.GET)
public class VenteController {
	@RequestMapping(value = "/Devis", method = RequestMethod.GET)
	public ModelAndView showForm() {
		return new ModelAndView("Vente/Devis", "command", new PersonneFormModel());
	}
}
