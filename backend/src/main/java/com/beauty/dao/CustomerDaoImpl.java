package com.beauty.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beauty.model.Authorities;
import com.beauty.model.Cart;
import com.beauty.model.Customer;
import com.beauty.model.User;

@Repository
public class CustomerDaoImpl implements CustomerDao {

	public CustomerDaoImpl() {
		System.out.println("cutomerdao is implemented");
	}

	@Autowired
	private SessionFactory sessionFactory;

	public void registerCustomer(Customer customer) {
		Authorities authorities = new Authorities();
		authorities.setRole("ROLE_USER");
		User user = customer.getUser();
		user.setEnabled(true);
		String username = customer.getUser().getUsername();
		authorities.setUsername(username);

		Session session = sessionFactory.getCurrentSession();
		session.save(authorities);

		Cart cart = new Cart();
		cart.setCustomer(customer);
		customer.setCart(cart);

		session.save(customer);
	}
}
