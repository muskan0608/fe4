package com.beauty.controller;


	import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.beauty.model.Cart;
import com.beauty.model.CartItem;
import com.beauty.model.Customer;
import com.beauty.model.CustomerOrder;
import com.beauty.model.Product;
import com.beauty.model.ShippingAddress;
import com.beauty.service.CartItemService;
import com.beauty.service.CustomerOrderService;
import com.beauty.service.CustomerService;
import com.beauty.service.ProductService;

	
	@Controller
	public class CustomerOrderController {
		@Autowired
		private CustomerOrderService customerOrderService;
		@Autowired
		private CartItemService cartItemService;
		@Autowired
		private ProductService productService;
		
		@Autowired 
		private CustomerService customerService;

		
		@RequestMapping("/cartshippingaddressform{cartId}")
		public String getShippingAddress(@PathVariable int cartId,Model model){
			Cart cart=cartItemService.getCart(cartId);
			Customer customer=cart.getCustomer();
			ShippingAddress shippingaddress=customer.getShippingAddress();
			model.addAttribute("shippingAddress",shippingaddress);
			model.addAttribute("cartid",cartId);
			return "shippingaddressform";
		}
		@RequestMapping("/cartorder{cartId}")
	public String createOrder(@PathVariable int cartId,@ModelAttribute ShippingAddress shippingAddress,Model model){
			Cart cart=cartItemService.getCart(cartId);
			Customer customer=cart.getCustomer();
			
			customer.setShippingAddress(shippingAddress);
			cart.setCustomer(customer);
		CustomerOrder customerOrder=customerOrderService.createOrder(cart);
		model.addAttribute("order",customerOrder);
		model.addAttribute("cartid",cartId);
		
		return "orderdetails";
	}
		@RequestMapping("/cartconfirm{id}")
	public String confirm(@ModelAttribute CustomerOrder order,@PathVariable int id){
			
			int qty = 0; // purchased quantity by user
			int prodId = 0; // product id
			User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

			String username = user.getUsername();

			Customer customer = customerService.getCustomerByUsername(username);
			
			Cart  cart = customer.getCart();
			List<CartItem> cartItems = cart.getCartItems();

			for (CartItem cartItem : cartItems) {

				qty = cartItem.getQuantity(); // Finding total quantities purchased
												// by user.
				Product product = cartItem.getProduct();
	            
				int ProductQuantity = product.getQuantity();
				
				if(qty==ProductQuantity)
				{
					product.setQuantity(0);
				}
	            
				if(qty!=ProductQuantity)
				{
				product.setQuantity(ProductQuantity - qty);
				}
				
				productService.updateProduct(product);

			}
			cartItemService.removeAllCartItem(id);
		return "thankyou";
	}
	}

