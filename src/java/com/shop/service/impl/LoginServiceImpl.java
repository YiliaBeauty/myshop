package com.shop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dto.User;
import com.shop.mapper.LoginMapper;
import com.shop.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginMapper loginMapper;
	
	@Override
	public void insert(User user) {
		loginMapper.insertUser(user);
	}

}
