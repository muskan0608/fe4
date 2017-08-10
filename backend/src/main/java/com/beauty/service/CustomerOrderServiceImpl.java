package com.beauty.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.beauty.dao.CustomerOrderDao;
import com.beauty.model.Cart;
import com.beauty.model.Customer;
import com.beauty.model.CustomerOrder;
import com.beauty.model.ShippingAddress;
@Service
@Transactional
public class CustomerOrderServiceImpl implements CustomerOrderService{
	@Autowired
private CustomerOrderDao customerOrderDao;
	public CustomerOrder createOrder(Cart cart) {
		return customerOrderDao.createOrder(cart);
	}
	
}
