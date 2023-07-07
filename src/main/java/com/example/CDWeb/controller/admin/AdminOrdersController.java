package com.example.CDWeb.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.CDWeb.model.Orders;
import com.example.CDWeb.repository.OrdersRepository;

@Controller
public class AdminOrdersController {

	@Autowired
	private OrdersRepository ordersRepository;
	
	@GetMapping("/admin/orders")
	public String ordersPage(Model model, @RequestParam(name = "page", defaultValue = "0") int page) {
		Pageable pageable = PageRequest.of(page, 4);
		Page<Orders> orders = ordersRepository.findAll(pageable);
        model.addAttribute("orders", orders.getContent());
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", orders.getTotalPages());
        
		return "admin/orders";
	}
	
	@PostMapping("/admin/orders")
	public String deleteOrder(@RequestParam Integer orderid, Model model, @RequestParam(name = "page", defaultValue = "0") int page) {
		ordersRepository.deleteByOrderid(orderid);
		
		Pageable pageable = PageRequest.of(page, 4);
		Page<Orders> orders = ordersRepository.findAll(pageable);
        model.addAttribute("orders", orders.getContent());
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", orders.getTotalPages());
        
		return "admin/orders";
	}
	
	@GetMapping("/admin/orders/{orderid}")
	public String ordersPage(@PathVariable Integer orderid, Model model) {
		Orders order = ordersRepository.findByOrderid(orderid);
        model.addAttribute("order", order);
        
		return "admin/orders-detail";
	}
	
}
