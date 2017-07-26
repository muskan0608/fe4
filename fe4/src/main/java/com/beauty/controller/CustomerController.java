package com.beauty.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.beauty.configuration.DBConfiguration;
import com.beauty.dao.CustomerDaoImpl;
import com.beauty.dao.ProductDaoImpl;
import com.beauty.model.Customer;
import com.beauty.service.CustomerService;
import com.beauty.service.CustomerServiceImpl;
import com.beauty.service.ProductService;
import com.beauty.service.ProductServiceImpl;

@Controller
public class CustomerController {
	
	 ApplicationContext context1=new AnnotationConfigApplicationContext(DBConfiguration.class,CustomerDaoImpl.class,CustomerServiceImpl.class);
	    CustomerService customerService =(CustomerService)context1.getBean("customerServiceImpl");

	

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
