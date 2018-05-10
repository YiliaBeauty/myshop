package com.shop.service;

import com.shop.dto.User;

public interface UserService {
	
	public void insert(User user);
	public User loginFindByName(String username);
	public User loginFindByUnameAndPwd(User user);
}
