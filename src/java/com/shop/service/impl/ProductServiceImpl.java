package com.shop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dto.Product;
import com.shop.mapper.ProductMapper;
import com.shop.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	private ProductMapper productMapper;
	
	@Override
	public Product productFindByPid(int pid) throws Exception {
		return productMapper.selectByPid(pid);
	}

	@Override
	public void select(Product product) {
	}
	
	
}
