package net.akenSync.gm.controller;

import java.util.Map;
import net.akenSync.gm.formModele.Stock;
import net.akenSync.gm.modele.Partenaire;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/partenaire")
public class PartenaireController {
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView showForm() {
		return new ModelAndView("Partenaire/Test", "partenaire", new Partenaire());
	}

	@RequestMapping(value = "/AddPartenaire", method = RequestMethod.POST)
	public String saveOrUpdatePartenaire(@ModelAttribute("userForm") Partenaire p,
			BindingResult result, ModelMap model) {
		if(result.hasErrors()) {
            return "Partenaire/Test";
    }

    model.addAttribute("success", "Dear "+ p.getLibelle()+" , your Registration completed successfully");
    return "Partenaire/Success";
	}
}
