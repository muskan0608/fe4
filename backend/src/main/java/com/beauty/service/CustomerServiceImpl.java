package com.beauty.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.beauty.dao.CustomerDao;
import com.beauty.model.Customer;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService {
	
	public CustomerServiceImpl()
	{
		System.out.println("cutomer service is implemented");
	}
	 @Autowired
	 private CustomerDao customerDao;
	public void registerCustomer(Customer customer) {
    
     customerDao.registerCustomer(customer);
	}
}
