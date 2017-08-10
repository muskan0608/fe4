package com.beauty.dao;

import com.beauty.model.Customer;

public interface CustomerDao {
public void registerCustomer(Customer customer);
public Customer getCustomerByUsername(String username);
}
