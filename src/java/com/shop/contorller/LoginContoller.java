package com.shop.contorller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.shop.dto.User;
import com.shop.service.UserService;
import com.sun.mail.handlers.message_rfc822;

import sun.applet.resources.MsgAppletViewer;

@Controller
public class LoginContoller {

	@Autowired
	private UserService userService;
	
	@RequestMapping("login")
	public String login(User user,HttpServletRequest request) {
	
		User loginUser = userService.loginFindByUnameAndPwd(user);
		if (loginUser == null) {
			request.setAttribute("message", "密码输入错误请重新登录");
			return "UserLogin";
		}
		
		return "menu";
	}
	
}
