package com.capstone.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.capstone.dao.AdminDAO;
import com.capstone.dao.CustomerDAO;

public class Authentication<T> implements AuthenticationInterface{

	private T currentUser = null;
	@Autowired
	AdminDAO adminDao;
	
	@Autowired
	CustomerDAO customerDao;
	
	@Override
	public boolean authenticate(String userName, String password) {
		
		
		return false;
	}
	
	@Override
	public void logout() {
		// TODO Auto-generated method stub
		
	}


}
