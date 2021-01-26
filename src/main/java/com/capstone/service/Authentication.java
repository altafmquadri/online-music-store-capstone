package com.capstone.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;

import com.capstone.dao.AdminDAO;

@Service
public class Authentication {

	
	
	public <T> boolean authenticate(String userName, String password, T dao) {
		
		dao.findOneByUsernameAndPassword(userName, password);

		return false;
	}

	public void logout() {
		// TODO Auto-generated method stub

	}

}
