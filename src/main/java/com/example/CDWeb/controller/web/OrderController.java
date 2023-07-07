package com.example.CDWeb.controller.web;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestParam;
import com.example.CDWeb.model.Orders;

import com.example.CDWeb.model.ShoppingCart;
import com.example.CDWeb.model.User;
import com.example.CDWeb.repository.OrdersRepository;

@Controller
public class OrderController {
	
	@Autowired
	private OrdersRepository ordersRepository;

	@GetMapping("/checkout")
	public String checkoutForm(Model model, HttpSession session) {
		User user = (User) session.getAttribute("user");
		model.addAttribute("user", user);

		return "web/checkout";
	}

	@PostMapping("/checkout")
	public String saveOr(@ModelAttribute("order") Orders order, HttpSession session,
			@RequestParam("orderStatus") String orderStatus, HttpServletRequest request,
			@RequestParam("deliveryAddress") String deliveryAddress) {
		
		User user = (User) session.getAttribute("user");
		user.getUserid();
		// get cart from session attribute
		ShoppingCart cart = (ShoppingCart) request.getSession().getAttribute("cart");
		// Cập nhật thông tin cho đơn hàng
		order.setUser(user);
		order.setDeliveryAddress(deliveryAddress);
		order.setPurchaseDate(new Date());
		order.setTongtien(cart.getPriceFormat());
		order.setOrderStatus(orderStatus);
			
		// Lưu đơn hàng vào Database
		ordersRepository.save(order);
		
		// remove cart from session
		request.getSession().removeAttribute("cart");

		return "redirect:/web/cart";

	}
	}
