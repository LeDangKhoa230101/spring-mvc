package com.example.CDWeb.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.CDWeb.model.Orders;
import com.example.CDWeb.model.User;
import com.example.CDWeb.repository.OrdersRepository;
import com.example.CDWeb.repository.UserRepository;

@Controller
public class AdminHomeController {
	
	@Autowired
	private OrdersRepository ordersRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@GetMapping("/admin")
	public String showOrderAll(Model model) {
		List<Orders> orders = ordersRepository.findAll();
		model.addAttribute("orders", orders);
		
		List<User> users = userRepository.findAll();
		model.addAttribute("users", users);
		return "admin/index";
	}
}















