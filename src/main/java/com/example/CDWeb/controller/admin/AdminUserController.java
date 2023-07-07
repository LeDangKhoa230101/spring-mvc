package com.example.CDWeb.controller.admin;

import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.CDWeb.model.User;
import com.example.CDWeb.repository.UserRepository;


@Controller
public class AdminUserController {
	
	@Autowired
	private UserRepository userRepository;
	
	@GetMapping("/admin/register")
	public String showRegisterPage() {
		return "admin/register-page";
	}
	
	@PostMapping("/admin/register")
	public String registerUser(@ModelAttribute User user) {
		userRepository.save(user);
		
		return "redirect:/admin/login";
	}

	@GetMapping("/admin/login")
	public String showLoginPage(Model model) {
		return "admin/login-page";
	}
	
	@PostMapping("/admin/login")
	public String login(@RequestParam String email, @RequestParam String password, 
			HttpSession session) {
		User user = userRepository.findByEmail(email);
		
		// xác thực user và lưu thông tin vào session
		if (user != null && user.getPassword().equals(password)) {
			session.setAttribute("user", user);
			return "redirect:/admin";
		} else {
			return "redirect:/admin/login?error";
		}
	}
	
	@GetMapping("/admin/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		
		return "redirect:/admin/login";
	}
	
}





