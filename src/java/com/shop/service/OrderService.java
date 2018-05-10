package com.shop.service;

import java.util.List;

import com.shop.dto.OrderItem;
import com.shop.dto.Orders;

public interface OrderService {
	public List<Orders> findOrders();
	
	//toOrder
		public void toOrder(Orders orders) throws Exception;
	//toOrderItem
		public void toOrderItem(OrderItem orderitem) throws Exception;
   //payOrder
		public void payOrder(Orders orders)throws Exception;
   //payOrderAganin
		public Orders findOrderByOid(int oid);
   //查询myOrder
		public List<Orders> findOrderByUid(int uid);

}
