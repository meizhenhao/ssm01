package com.ssm.service;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import com.ssm.pojo.User;

@Service
public class UserServiceImpl implements UserServiceInterface{
	
	private static HashMap<String, String> userList = new HashMap<>();
	@Override
	public boolean findUserByNameAndPass(User user) {
		// TODO Auto-generated method stub
		if(userList.containsKey(user.getUname())&&userList.get(user.getUname()).equals(user.getUpass())){
			return true;
		}
		return false;
	}
	
	@Override
	public boolean addUser(User user) {
		// TODO Auto-generated method stub
		userList.put(user.getUname(), user.getUpass());
		return true;
	}

}
