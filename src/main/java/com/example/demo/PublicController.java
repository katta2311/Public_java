package com.example.demo;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
public class PublicController {

	@GetMapping(path = "/public")
	public ResponseEntity<String> demoAPI() {
		RestTemplate restTemplate = new RestTemplate();
		String internalAPI = "http://13.200.181.120:8092/internal";
		return restTemplate.getForEntity(internalAPI, String.class);
	}
}
