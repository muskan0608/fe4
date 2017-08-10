package com.beauty.service;

import com.beauty.model.Cart;
import com.beauty.model.CartItem;

public interface CartItemService {
public void addCartItem(CartItem cartItem);
public void removeCartItem(int cartItemId);
public void removeAllCartItem(int cartId);
Cart getCart(int cartId);
}
