package com.beauty.controller;


	import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.beauty.model.Cart;
import com.beauty.model.Customer;
import com.beauty.model.CustomerOrder;
import com.beauty.model.ShippingAddress;
import com.beauty.service.CartItemService;
import com.beauty.service.CustomerOrderService;

	
	@Controller
	public class CustomerOrderController {
		@Autowired
		private CustomerOrderService customerOrderService;
		@Autowired
		private CartItemService cartItemService;
		@RequestMapping("/cartshippingaddressform/{cartId}")
		public String getShippingAddress(@PathVariable int cartId,Model model){
			Cart cart=cartItemService.getCart(cartId);
			Customer customer=cart.getCustomer();
			model.addAttribute("shippingAddress",customer.getShippingAddress());
			model.addAttribute("cartid",cartId);
			return "shippingaddressform";
		}
		@RequestMapping("/cartorder/{cartId}")
	public String createOrder(@PathVariable int cartId,Model model){
			Cart cart=cartItemService.getCart(cartId);
			Customer customer=cart.getCustomer();
			/*customer.setShippingAddress(shippingAddress);*/
			cart.setCustomer(customer);
		CustomerOrder customerOrder=customerOrderService.createOrder(cart);
		model.addAttribute("order",customerOrder);
		model.addAttribute("cartid",cartId);
		return "orderdetails";
	}
		@RequestMapping("/cartconfirm{id}")
	public String confirm(@ModelAttribute CustomerOrder order,@PathVariable int id){
		cartItemService.removeAllCartItem(id);
		return "thanks";
	}
	}

