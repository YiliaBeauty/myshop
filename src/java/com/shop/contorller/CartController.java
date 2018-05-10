package com.shop.contorller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.dto.Cart;
import com.shop.dto.CartItem;
import com.shop.dto.Product;
import com.shop.dto.User;
import com.shop.service.ProductService;

@Controller
public class CartController {
	
	@Autowired
	private ProductService productService;
	
	//添加购物车
	@RequestMapping("/addCart")                     //传递参数
	public String addCart(HttpServletRequest request,@RequestParam int pid,@RequestParam int count,Model model) {
		try {
			Product product=productService.productFindByPid(pid);
			
			//存进一个购物项
			CartItem cartItem=new CartItem();
			cartItem.setCount(count);
			cartItem.setProduct(product);
			cartItem.setSubtotal(count*product.getShopPrice());
			
			//存进购物车
			Cart cart=getCart(request);
			cart.addCart(cartItem);
			return "cart";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	//查看我的购物车
	@RequestMapping("/myCart")
	public String myCart(HttpServletRequest request,Model model) {
		User loginuser=(User)request.getSession().getAttribute("loginUser");
		if(loginuser==null) {
			model.addAttribute("message","您还没有登录！");
			return "msg";
		}
		return "cart";
	}
	
	//清空购物车
	@RequestMapping("/clearCart")
	public String clearCart(HttpServletRequest request) {
		Cart cart=getCart(request);
		cart.clearCart();
		return "redirect:myCart.do";	
	}
 
	//删除某个购物项
	@RequestMapping("/delProFromCart")
	public String delProFromCart(@RequestParam int pid,HttpServletRequest request) {
		Cart cart=getCart(request);
		cart.delProFromCart(pid);
		return "redirect:myCart.do";
	}
	
	
	
	private Cart getCart(HttpServletRequest request) {
		Cart cart=(Cart)request.getSession().getAttribute("cart");
		if(cart==null) {
			cart=new Cart();
			request.getSession().setAttribute("cart",cart );
		}
		return cart;
	}
	

}
