package com.capstone.admincontrollers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
@RestController
public class LoginController {
	@GetMapping("admin/login")
	public ModelAndView showloginpage() {
		
		return new ModelAndView("adminlogin");
	}

}
