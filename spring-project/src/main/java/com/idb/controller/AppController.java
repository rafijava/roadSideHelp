package com.idb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.idb.user.HelpUser;

@Controller
public class AppController {

	@GetMapping("/")
	public String showHome() {
		
		return "home";
	}
	
	// add request mapping for /help

		@GetMapping("/help")
		public String showHelps(Model theModel) {
			theModel.addAttribute("helpUser", new HelpUser());
			
			return "help";
		}
		
		@RequestMapping("/processHelp")
		public String showHelp(@ModelAttribute("helpUser") HelpUser theHelpUser) {
			// log the input data
			System.out.println("theHelpUser : " + theHelpUser.getServiceType() + 
					theHelpUser.getLocation() + theHelpUser.getContact());
			
			return "help-confirmation";
		}
		
	
	// add request mapping for /leaders

	@GetMapping("/services")
	public String showLeaders() {
		
		return "services";
	}
	
	// add request mapping for /systems
	
	@GetMapping("/systems")
	public String showSystems() {
		
		return "systems";
	}
	
}










