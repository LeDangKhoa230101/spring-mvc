package com.example.CDWeb.controller.admin;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.example.CDWeb.model.Category;
import com.example.CDWeb.model.Product;
import com.example.CDWeb.repository.ProductRepository;

@Controller
public class AdminProductController {

	@Autowired
	private ProductRepository productRepository;

	@GetMapping("/admin/products")
	public String productsPage(Model model, @RequestParam(name = "page", defaultValue = "0") int page) {
		Pageable pageable = PageRequest.of(page, 4);
		Page<Product> products = productRepository.findAll(pageable);
		model.addAttribute("products", products.getContent());
		model.addAttribute("currentPage", page);
		model.addAttribute("totalPages", products.getTotalPages());

		return "admin/products";
	}

	@GetMapping("/admin/products-edit/{productid}")
	public String productsEditPage(@PathVariable Integer productid, Model model) {
		Product product = productRepository.findByProductid(productid);
		model.addAttribute("product", product);

		return "admin/products-edit";
	}

	@PostMapping("/admin/products-edit/{productid}")
	public String productsEdit(@PathVariable Integer productid, Model model, @ModelAttribute Product prod) {

		Product product = productRepository.findByProductid(productid);
		product.setProductName(prod.getProductName());
		product.setDescription(prod.getDescription());
		product.setPrice(prod.getPrice());
		product.setDiscount(prod.getDiscount());

		productRepository.save(product);

		model.addAttribute("product", product);

		return "redirect:/admin/products";
	}

	@PostMapping("/admin/products")
	public String deleteProduct(@RequestParam Integer productid, Model model,
			@RequestParam(name = "page", defaultValue = "0") int page) {
		productRepository.deleteByProductid(productid);

		Pageable pageable = PageRequest.of(page, 4);
		Page<Product> products = productRepository.findAll(pageable);
		model.addAttribute("products", products.getContent());
		model.addAttribute("currentPage", page);
		model.addAttribute("totalPages", products.getTotalPages());

		return "admin/products";
	}

	@GetMapping("/admin/products-add")
	public String productsAddPage() {
		return "admin/products-add";
	}

	public static String uploadDir = System.getProperty("user.dir") + "/src/main/resources/static/img";

	@PostMapping("/admin/products-add")
	@ResponseBody
	public String addProduct( @RequestParam("image") MultipartFile file,
			@RequestParam("productName") String productName, @RequestParam("description") String description,
			@RequestParam("price") double price, @RequestParam("discount") int discount,
			@RequestParam("cate") Category category) {

		// Lưu thông tin sản phẩm vào database
		Product saveProduct = new Product();
		String fileName = saveProduct.getProductid()
				+ file.getOriginalFilename().substring(file.getOriginalFilename().length() - 4);
		Path fileNameAndPath = Paths.get(uploadDir, fileName);
		try {
			Files.write(fileNameAndPath, file.getBytes());
		} catch (Exception e) {

		}
		saveProduct.setProductName(productName);
		saveProduct.setImage(fileName);
		saveProduct.setDescription(description);
		saveProduct.setPrice(price);
		saveProduct.setDiscount(discount);
		saveProduct.setCategory(category);
		productRepository.save(saveProduct);

		return "Lưu Thành Công" ;

	}
}
