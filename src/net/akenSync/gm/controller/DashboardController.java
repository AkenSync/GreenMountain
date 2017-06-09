package net.akenSync.gm.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/dashboard")
public class DashboardController {
//	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	@RequestMapping(method = RequestMethod.GET)
	public String printHello(ModelMap model) {
		   model.addAttribute("message", "AkenSync - GreenMountain");
		   return "dashboard";
	   }
	@RequestMapping("/partenaire")
	public String toPartenaire(ModelMap model) {
		   model.addAttribute("message", "AkenSync - GreenMountain TEst PArtenaire");
		   return "hello";
	   }
}
