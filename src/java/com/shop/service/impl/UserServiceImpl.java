package com.shop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dto.User;
import com.shop.mapper.UserMapper;
import com.shop.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public void insert(User user) {
		userMapper.insertUser(user);
	}
	@Override
	public User loginFindByName(String username){
		User user= userMapper.loginFindByName(username);
		return user;
	}
	@Override
	public User loginFindByUnameAndPwd(User user){ 
		User loginUser = userMapper.loginFindByUnameAndPwd(user);
		return loginUser;
	}
}
