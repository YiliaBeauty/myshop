package com.shop.contorller;

import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.dto.Cart;
import com.shop.dto.CartItem;
import com.shop.dto.OrderItem;
import com.shop.dto.Orders;
import com.shop.dto.User;
import com.shop.service.OrderService;

@Controller
public class OrdersController {
	
	@Autowired
	public OrderService orderService;
	
	@RequestMapping("/toOrder")
	public String toOrder(HttpServletRequest request,Model model) throws Exception{
		Orders orders=new Orders();
		Cart cart=(Cart)request.getSession().getAttribute("cart");
		User loginUser=(User)request.getSession().getAttribute("loginUser");
		if(loginUser==null) {
			model.addAttribute("message","对不起您还没有登录");
			return "msg";
		}
		orders.setState(0);
		orders.setOrderTime(new Date());
		orders.setUid(loginUser.getUid());
		orders.setMoney(cart.getTotal());
		
		orderService.toOrder(orders);
		
		Map<Integer, CartItem> cartItems=cart.getCartItem();
		//从Map中取得关键字之后，我们必须每次重复返回到Map中取得相对的值，这是很繁琐和费时的。所以。。。
		//map有Key和value, 一个Key对应一个value,而key和value组合起来的一个组就是entry 要想取出这个组里的key和value就用entry的迭代器迭代即可。
		//通过这个集合的迭代器，可以获得每一个条目(唯一获取方式)的键或值并对值进行更改
		for(Entry<Integer, CartItem> entry:cartItems.entrySet()) {
			CartItem cartItem=entry.getValue();
			OrderItem orderItem=new OrderItem();
			orderItem.setProduct(orderItem.getProduct());
			orderItem.setCount(cartItem.getCount());
			orderItem.setPid(cartItem.getProduct().getPid());
			orderItem.setSubtotal(cartItem.getSubtotal());
			orderItem.setOid(orders.getOid());
			orders.getOiList().add(orderItem);
			orderService.toOrderItem(orderItem);
		}
		cart.clearCart();
		request.getSession().setAttribute("orders", orders);
		return "order";
	}
	
	//为订单付款
	@RequestMapping("/payOrder")
	public String payOrder(Orders orders,@RequestParam String accepter,@RequestParam String receiveInfo,@RequestParam String phoNum)throws Exception {
		orders.setAccepter(accepter);
		orders.setReceiveinfo(receiveInfo);
		orders.setPhonum(phoNum);
		orderService.payOrder(orders);
		return "redirect:myOrder.do";
	}
	//payOrderAgain
	@RequestMapping("/payOrderAgain")
	public String payOrderAgain(@RequestParam int oid,HttpServletRequest request) {
		Orders noPayOrder=orderService.findOrderByOid(oid);
		request.getSession().setAttribute("orders", noPayOrder);
		return "order";
	}
	//查询myOrder
	@RequestMapping("/myOrder")
	public String myOrder(@RequestParam int uid,HttpServletRequest request,Model model)throws Exception {
		User loginUser=(User)request.getSession().getAttribute("loginUser");
		//PageBean<Orders> pageBean = orderService.findOrderByUidAndPage(page,loginUser.getUid());
		//model.addAttribute("pageBean", pageBean);
		//return "orderList";
		List<Orders> list=orderService.findOrderByUid(loginUser.getUid());
		model.addAttribute("list",list);
		return "orderList";
	}
	
	

}
