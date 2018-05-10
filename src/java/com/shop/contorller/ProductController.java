package com.shop.contorller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.dto.Product;
import com.shop.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@RequestMapping("productFindByPid,method=RequestMothod=get")
	public String productFindByPid(@RequestParam Integer pid,Model model ) throws Exception {
		
		Product product=productService.productFindByPid(pid);
		model.addAttribute("product", product);
		return "product";
		
		
	}
	
}
