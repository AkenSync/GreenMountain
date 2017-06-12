package net.akenSync.gm.controller;

import java.util.Map;

import net.akenSync.gm.modele.Partenaire;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/partenaire")
public class PartenaireController {
	 @RequestMapping(value = "/testValidation", method = RequestMethod.GET)
	    public String viewLogin(Map<String, Object> model) {
	        Partenaire p = new Partenaire();
	        model.put("userForm", p);
	        return "Test";
	    }

}
