package com.example.CDWeb.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.CDWeb.model.User;
import com.example.CDWeb.repository.UserRepository;

@RestController
public class AdminUserRestController {
	
	@Autowired
	private UserRepository userRepository;
	
	@GetMapping("/admin/check-email")
    public boolean checkEmailExist(@RequestParam String email) {
		User user = userRepository.findByEmail(email);
        if (user != null) {
        	return true;
        } 
		return false;
    }
}
