package com.shop.dto;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import com.shop.dto.CartItem;

public class Cart {
	
	private double total;
	private Map<Integer, CartItem> map=new HashMap<>();
	private CartItem cartItems;
	
	public Collection<CartItem> getCartItems(){
		return map.values();
	}

	public Map<Integer, CartItem> getCartItem() {
		return map;
	}

	public void setCartItem(Map<Integer, CartItem> cartItem) {
		this.map = cartItem;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	
	
	
	//不知道干嘛的
	public void addCart(CartItem item) {
		Integer pid = item.getProduct().getPid();
		if (map.containsKey(pid)) {
			CartItem existItem = map.get(pid);
			existItem.setCount(item.getCount() + existItem.getCount());
			existItem.setSubtotal(item.getSubtotal() + existItem.getSubtotal());
		} else {
			map.put(pid, item);
		}
		total = total + item.getSubtotal();
	}

	public void delProFromCart(int pid) {
		CartItem item = map.remove(pid);
		total = total - item.getSubtotal();
	}

	public void clearCart() {
		map.clear();
		total = 0;
	}
}
	
	


