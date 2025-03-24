package com.shopping.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	@GetMapping("/")
	public String main() {
		return "/main/index";
	}
	
	@GetMapping("/about")
	public String about() {
		return "/main/about";
	}
	
	@GetMapping("/blog-post")
	public String blogpost() {
		return "/main/blog-post";
	}
	
	@GetMapping("/contact")
	public String contact() {
		return "/main/contact";
	}
	
	@GetMapping("/faq")
	public String faq() {
		return "/main/faq";
	}
	
	@GetMapping("/portfolio-item")
	public String portfoloitem() {
		return "/main/portfolio-item";
	}
	
	@GetMapping("/portfolio-overview")
	public String portfolooverview() {
		return "/main/portfolio-overview";
	}
	
	@GetMapping("/pricing")
	public String pricing() {
		return "/main/pricing";
	}
	
}
