package net.akenSync.gm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DashboardController {
	@RequestMapping(value ="/Dashboard", method = RequestMethod.GET)
	public String printHello(ModelMap model) {
		   model.addAttribute("message", "AkenSync - GreenMountain");
		   return "Dashboard";
	}
}
