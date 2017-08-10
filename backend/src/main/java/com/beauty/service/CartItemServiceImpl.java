package com.beauty.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.beauty.dao.CartItemDao;
import com.beauty.model.Cart;
import com.beauty.model.CartItem;
@Service
@Repository
@Transactional
public class CartItemServiceImpl implements CartItemService {
@Autowired
private CartItemDao cartItemDao;

public void addCartItem(CartItem cartItem) {
	cartItemDao.addCartItem(cartItem);
	
}

public void removeCartItem(int cartItemId) {
    cartItemDao.removeCartItem(cartItemId);
	
}

public void removeAllCartItem(int cartId) {
	cartItemDao.removeAllCartItem(cartId);
	
}
public Cart getCart(int cartId) {
	return cartItemDao.getCart(cartId);
}
}
