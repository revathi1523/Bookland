package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.CartItemDao;
import com.niit.model.CartItem;
import com.niit.model.CustomerOrder;
@Service
public class CartItemServiceImpl implements CartItemService{
@Autowired
	private CartItemDao cartItemDao;
	public void addToCart(CartItem cartItem) {
	  cartItemDao.addToCart(cartItem);
		
	}

	@Override
	public void removeCartItem(int cartItemId) {
            cartItemDao.removeCartItem(cartItemId);
		
	}

	@Override
	public List<CartItem> getCart(String email) {
		return cartItemDao.getCart(email);
		
	}

	@Override
	public CustomerOrder createCustomerOrder(CustomerOrder customerOrder) {
		
		return cartItemDao.createCustomerOrder(customerOrder);
	}

}
