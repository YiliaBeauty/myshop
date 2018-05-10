package com.shop.contorller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.MvcNamespaceHandler;

import com.shop.dto.User;
import com.shop.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("pay")
	public ModelAndView pay(User user) {
		userService.insert(user);
		
		ModelAndView mv=new ModelAndView();
		
		return mv;
	}
	

}
