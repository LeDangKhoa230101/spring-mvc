package com.example.CDWeb.controller.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.example.CDWeb.model.Category;
import com.example.CDWeb.model.Product;
import com.example.CDWeb.repository.CategoryRepository;

import com.example.CDWeb.repository.ProductRepository;

@Controller
public class ProductController {

	@Autowired
	private ProductRepository productRepository;

	@Autowired
	private CategoryRepository categoryRepository;

	// xem sản phẩm theo danh mục
	@GetMapping("/category/{cateid}")
	public String findByCategoryId(@PathVariable("cateid") Integer cateid, Model model) {
		List<Category> categorys = categoryRepository.findAll();
		model.addAttribute("categorys", categorys);

		model.addAttribute("cateID", cateid);

		Category category = categoryRepository.getCategoryBycateid(cateid);
		model.addAttribute("category", category);

		List<Product> products = productRepository.findByCategoryCateid(cateid);
		model.addAttribute("products", products);

		return "web/category";
	}

	// lọc sản phảm trong danh mục
	@ResponseBody
	@GetMapping("/list/category/{cateid}")
	public List<Product> getProducts(@PathVariable("cateid") Integer cateid,
			@RequestParam(required = false) String sortOption) {

		List<Product> products = new ArrayList<>();

		if (sortOption != null) {
			switch (sortOption) {
			case "priceAsc":
				products = productRepository.findByCategoryCateidOrderByPriceAsc(cateid);
				break;
			case "priceDesc":
				products = productRepository.findByCategoryCateidOrderByPriceDesc(cateid);
				break;
			case "nameAsc":
				products = productRepository.findByCategoryCateidOrderByProductNameAsc(cateid);
				break;
			case "nameDesc":
				products = productRepository.findByCategoryCateidOrderByProductNameDesc(cateid);
				break;
			default:
				products = productRepository.findByCategoryCateid(cateid);
			}
		}
		return products;
	}

	/*
	 * //chi tiết sản phẩm
	 * 
	 */
	@GetMapping("/product-details/{productid}")
	public String getProductDetail(@PathVariable Integer productid, Model model) {

		Product productDetail = productRepository.findByProductid(productid);
		model.addAttribute("productDetail", productDetail);

		List<Product> products = productRepository.findAll();
		model.addAttribute("products", products);
		
		List<Category> categorys = categoryRepository.findAll();
		model.addAttribute("categorys", categorys);

		return "web/product-details";

	}

}
