package com.beauty.controller;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/home")
		public String homepage(){
		return "home";
	}
		@RequestMapping("/aboutus")
		public String aboutus(){
		return "aboutus";

	}
}
