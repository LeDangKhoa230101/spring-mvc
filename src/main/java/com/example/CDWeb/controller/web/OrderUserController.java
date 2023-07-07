package com.example.CDWeb.controller.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.CDWeb.model.Orders;
import com.example.CDWeb.model.User;
import com.example.CDWeb.repository.OrdersRepository;

@Controller
public class OrderUserController {
	
	@Autowired
	private OrdersRepository ordersRepository;
	
	@ResponseBody
	@GetMapping("/order-user")
	public List<Orders> showOrderUser(HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		List<Orders> orders = ordersRepository.findByUserUserid(user.getUserid());
		
		return orders;
	}
	
	@ResponseBody
	@GetMapping("/order-user-wait")
	public List<Orders> showOrderUserWait(HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		List<Orders> orders = ordersRepository.findByUserUseridAndOrderStatus(user.getUserid(), "Chờ thanh toán");
		
		return orders;
	}
	
	@ResponseBody
	@GetMapping("/order-user-transport")
	public List<Orders> showOrderUserTransport(HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		List<Orders> orders = ordersRepository.findByUserUseridAndOrderStatus(user.getUserid(), "Vận chuyển");
		
		return orders;
	}
	
	@ResponseBody
	@GetMapping("/order-user-delivering")
	public List<Orders> showOrderUserDelivering(HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		List<Orders> orders = ordersRepository.findByUserUseridAndOrderStatus(user.getUserid(), "Đang giao");
		
		return orders;
	}
	
	@ResponseBody
	@GetMapping("/order-user-complete")
	public List<Orders> showOrderUserComplete(HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		List<Orders> orders = ordersRepository.findByUserUseridAndOrderStatus(user.getUserid(), "Hoàn thành");
		
		return orders;
	}
}











