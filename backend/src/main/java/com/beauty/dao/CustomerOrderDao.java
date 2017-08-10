package com.beauty.dao;

import com.beauty.model.Cart;
import com.beauty.model.CustomerOrder;
import com.beauty.model.Customer;
import com.beauty.model.ShippingAddress;

public interface CustomerOrderDao {
	CustomerOrder createOrder(Cart cart);
}
