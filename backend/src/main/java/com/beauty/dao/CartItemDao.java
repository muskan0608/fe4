package com.beauty.dao;

import com.beauty.model.Cart;
import com.beauty.model.CartItem;

public interface CartItemDao {
public void addCartItem(CartItem cartItem);
 public void removeCartItem(int cartItemId);
public void removeAllCartItem(int cartId);
public Cart getCart(int cartId);
}

