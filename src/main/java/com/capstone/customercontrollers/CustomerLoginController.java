package com.capstone.customercontrollers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.capstone.dao.CustomerDAO;
import com.capstone.model.Customer;

@RestController
public class CustomerLoginController {

	@Autowired
	CustomerDAO custDao;

	@GetMapping("/register")
	public ModelAndView showRegistration() {
		return new ModelAndView("registration");
	}

	@PostMapping("/register")
	public ModelAndView doRegistration(@RequestParam("name") String name, @RequestParam("password") String password,
			@RequestParam("confirm") String confirm, @RequestParam("phoneNumber") String phoneNumber,
			@RequestParam("email") String email, @RequestParam("address") String address) {

		String message = null;
		if (password.equals(confirm)) {
			Customer customer = new Customer();
			customer.setUsername(name);
			customer.setPassword(password);
			customer.setPhoneNumber(phoneNumber);
			customer.setEmail(email);
			customer.setAddress(address);
			custDao.save(customer);
			message = "You have registered successfully";
			return new ModelAndView("registration").addObject("message",message);
		}
		message = "passwords dont match";
		return new ModelAndView("registration").addObject("message",message);
	}
	
	@GetMapping("/login")
	public ModelAndView showLogin() {
		return new ModelAndView("login");
	}

}
