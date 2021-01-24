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
		//if I pass a customer it should use customerDao 
		
		//if I pass an admin it should use the adminDao
		
		//some method implementation
		
		return false;
	}
	
	@Override
	public void logout() {
		// TODO Auto-generated method stub
		
	}

	public T getCurrentUser() {
		return currentUser;
	}

	public void setCurrentUser(T currentUser) {
		this.currentUser = currentUser;
	}


}
