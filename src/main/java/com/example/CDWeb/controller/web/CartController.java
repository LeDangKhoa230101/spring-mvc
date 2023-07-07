package com.example.CDWeb.controller.web;

import java.util.List; 

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.CDWeb.model.Category;
import com.example.CDWeb.model.Product;

import com.example.CDWeb.model.ShoppingCart;
import com.example.CDWeb.repository.CategoryRepository;
import com.example.CDWeb.repository.ProductRepository;

@Controller
public class CartController {

	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private CategoryRepository categoryRepository;
	
	@GetMapping("/cart")
	public String showCartPage(HttpSession session, Model model) {
		List<Category> categorys = categoryRepository.findAll();
		model.addAttribute("categorys", categorys);
		
		ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
		
		model.addAttribute("cart", cart);
		
		return "web/cart-page"; 
	}
	
	// add to cart and set quantity + 1
	@PostMapping("/add-to-cart/{productid}")
	public String addToCart(@PathVariable int productid, HttpSession session) {
		Product product = productRepository.findByProductid(productid);
		
		ShoppingCart cart = (ShoppingCart) session.getAttribute("cart"); 
		if(cart == null) {
			cart = new ShoppingCart();
			session.setAttribute("cart", cart);
		}
		cart.addItem(product);
		
		return "redirect:/cart" ;
	} 
	
	// remove to cart and set quantity - 1
	@PostMapping("/remove-cart/{productid}")
	public String removeToCart(@PathVariable int productid, HttpSession session) {
		Product product = productRepository.findByProductid(productid);
		
		ShoppingCart cart = (ShoppingCart) session.getAttribute("cart"); 
		if(cart == null) {
			cart = new ShoppingCart();
			session.setAttribute("cart", cart);
		}
		cart.removeItem(product);
		
		return "redirect:/cart";
	} 
	
	// remove from cart and set quantity = 0
	@PostMapping("/remove-from-cart/{productid}")
	public String removeFromCart(@PathVariable int productid, HttpSession session) {
		Product product = productRepository.findByProductid(productid);
		
		ShoppingCart cart = (ShoppingCart) session.getAttribute("cart"); 
		if(cart == null) {
			cart = new ShoppingCart();
			session.setAttribute("cart", cart);
		}
		cart.removeFromCart(product);
		
		return "redirect:/web/cart";
	}
}