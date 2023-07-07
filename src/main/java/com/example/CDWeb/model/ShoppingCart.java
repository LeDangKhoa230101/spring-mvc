package com.example.CDWeb.model;

import java.util.ArrayList;
import java.util.List;

public class ShoppingCart {
	private List<CartItem> items = new ArrayList<>();

	public void addItem(Product product) {
		for (CartItem item : items) {
			if (item.getProduct().getProductid() == product.getProductid()) {
				item.setQuantity(item.getQuantity() + 1);
				return;
			}
		}

		CartItem newItem = new CartItem();
		newItem.setProduct(product);
		newItem.setQuantity(1);
		items.add(newItem);
	}

	public void removeItem(Product product) {
		for (CartItem item : items) {
			if (item.getProduct().getProductid() == product.getProductid() && item.getQuantity() > 1) {
				item.setQuantity(item.getQuantity() - 1);
				return;
			}
			if (item.getProduct().getProductid() == product.getProductid() && item.getQuantity() == 1) {
				items.remove(item);
				return;
			}
		}
	}

	public void removeFromCart(Product product) {
		for (CartItem item : items) {
			if (item.getProduct().getProductid() == product.getProductid()) {
				items.remove(item);
				return;
			}
		}
	}

	public List<CartItem> getItems() {
		return items;
	}

	public int getLength() {
		int length = 0;
		for (CartItem item : items) {
			length += item.getQuantity();
		}
		return length;
	}

	public double getTotal() {
		double total = 0;
		for (CartItem item : items) {
			total += item.getProduct().getPrice() * item.getQuantity();
		}
		return total;
	}

	public String getPriceFormat() {
		String formattedNumber = String.format("%.3f", getTotal()).replace(".", ",");
		
		return formattedNumber;
	} 
	
}
