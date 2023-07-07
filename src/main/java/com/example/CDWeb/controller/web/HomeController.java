package com.example.CDWeb.controller.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.CDWeb.model.Category;
import com.example.CDWeb.model.Product;
import com.example.CDWeb.model.ShoppingCart;
import com.example.CDWeb.repository.CategoryRepository;
import com.example.CDWeb.repository.ProductRepository;

@Controller
public class HomeController {
	
	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private CategoryRepository categoryRepository;
	
	@GetMapping("/")
	public String listProduct(Model model ,HttpSession session) {
		List<Product> products = productRepository.findAll();
		model.addAttribute("products", products);
		
		List<Category> categorys = categoryRepository.findAll();
		model.addAttribute("categorys", categorys);
		
		ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
		model.addAttribute("cart", cart);
		
		return "web/index";
	}
}