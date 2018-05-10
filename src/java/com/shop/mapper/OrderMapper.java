package com.shop.mapper;

import java.util.List;

import org.apache.logging.log4j.core.config.Order;

import com.shop.dto.Orders;


public interface OrderMapper {
	public void selectOrders(Orders orders);
	
	List<Orders> selectAll();
	
	Orders selectByPrimaryKey(Integer oid);
	
	int updateByPrimaryKeySelective(Orders orders);

    int updateByPrimaryKey(Orders orders);

	public List<Orders> findOrderByUid(int uid);
	
	int insert(Orders orders);
	
	int insertSelective(Orders orders);
	
	//全部订单记录数
	int countAllOrders();
	
	int deleteByPrimaryKey(Integer oid);

}
