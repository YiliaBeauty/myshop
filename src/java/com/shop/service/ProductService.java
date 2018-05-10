package com.shop.service;

import java.util.List;

import com.shop.dto.Product;

public interface ProductService {
	
	public void select(Product product);
	
	//	根据id查找商品
	public Product productFindByPid(int pid) throws Exception;




}
