package com.capstone.service;

public interface AuthenticationInterface {
	void logout();
	boolean authenticate(String userName, String password);
}
