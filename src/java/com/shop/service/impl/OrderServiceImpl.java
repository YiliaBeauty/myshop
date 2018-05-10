package com.shop.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.core.config.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dto.OrderItem;
import com.shop.dto.Orders;
import com.shop.mapper.OrderItemMapper;
import com.shop.mapper.OrderMapper;
import com.shop.service.OrderService;

import jdk.nashorn.internal.ir.RuntimeNode.Request;



@Service
public class OrderServiceImpl implements OrderService{
	@Autowired
	private OrderMapper orderMapper;
	@Autowired
	private OrderItemMapper orderitemMapper;
	
	
	@Override
	public List<Orders> findOrders() {
		return orderMapper.selectAll();
	}

	@Override
	public void toOrder(Orders orders) throws Exception {
		orderMapper.insert(orders);
	}
	
	@Override
	public void toOrderItem(OrderItem orderItem) throws Exception {
		orderitemMapper.insert(orderItem);
	}


	@Override
	public void payOrder(Orders orders) throws Exception {
		Orders payOrder = orderMapper.selectByPrimaryKey(orders.getOid());
		if(orders.getReceiveinfo()!=null && orders.getPhonum()!=null){
			payOrder.setPhonum(orders.getPhonum());
			payOrder.setReceiveinfo(orders.getReceiveinfo());
			payOrder.setAccepter(orders.getAccepter());
			payOrder.setState(1);
		}
		orderMapper.updateByPrimaryKeySelective(payOrder);
		
	}


	@Override
	public Orders findOrderByOid(int oid) {
		
		return orderMapper.selectByPrimaryKey(oid);
	}


	@Override
	public List<Orders> findOrderByUid(int uid) {
		 
		return orderMapper.findOrderByUid(uid);
		
	}
}
