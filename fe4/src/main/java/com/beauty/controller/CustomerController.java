package com.beauty.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.beauty.model.Customer;
import com.beauty.service.CustomerService;

@Controller
public class CustomerController {
	
	   @Autowired
	    CustomerService customerService;

	

	@RequestMapping("/registrationform")
	public String getRegistrationForm(Model model) {
		model.addAttribute("customer", new Customer());
		return "registrationform";
	}

@RequestMapping("/savecustomer")
public String registerCustomer(@Valid @ModelAttribute Customer customer,BindingResult result)
{
	if(result.hasErrors())
	{
		return "registrationform";
	}
	customerService.registerCustomer(customer);
	return "index";
}
}
