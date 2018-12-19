package com.ssm.service;

import com.ssm.pojo.User;

public interface UserServiceInterface {
	public boolean findUserByNameAndPass(User user);
	public boolean addUser(User user);
}
