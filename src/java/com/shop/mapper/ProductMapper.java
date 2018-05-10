package com.shop.mapper;

import com.shop.dto.Product;

public interface ProductMapper {
	
	public void selectProduct(Product product);

	public Product selectByPid(int pid);
	
	Product selectByPrimaryKey(Integer pid);
}
