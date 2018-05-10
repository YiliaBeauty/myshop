package com.shop.mapper;

import java.util.List;

import com.shop.dto.OrderItem;
import com.shop.dto.OrderItem;
import com.shop.dto.OrderItem;
import com.shop.dto.OrderItem;
import com.shop.dto.OrderItem;

public interface OrderItemMapper {
	
	public void selectOrderItem(OrderItem oiList);
	
	List<OrderItem> selectAll();
	
	OrderItem selectByPrimaryKey(Integer oiid);
	
	int insert(OrderItem orderItem);

    int insertSelective(OrderItem orderItem);

	
	int updateByPrimaryKeySelective(OrderItem orderItem);
	
	int updateByPrimaryKey(OrderItem orderItem);
	
	int deleteByPrimaryKey(Integer oiid);
}
