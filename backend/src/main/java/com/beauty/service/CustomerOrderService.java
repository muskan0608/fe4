package com.beauty.service;
import com.beauty.model.Cart;
import com.beauty.model.Customer;
import com.beauty.model.CustomerOrder;
import com.beauty.model.ShippingAddress;

	

	public interface CustomerOrderService {
	CustomerOrder createOrder(Cart cart);
	}
