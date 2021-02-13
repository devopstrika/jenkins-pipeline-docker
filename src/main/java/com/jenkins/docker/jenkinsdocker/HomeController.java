package com.jenkins.docker.jenkinsdocker;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

	@GetMapping("/welcome")
	public String greeting() {
		
		return "Welcome to my service, just";
	}
}
