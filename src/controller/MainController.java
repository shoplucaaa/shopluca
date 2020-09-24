package controller;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import entity.Product;

import model.ProductDAO;

@Controller
public class MainController {
	
	private ProductDAO productDAO;

	@Autowired
	public void setProductDAO(ProductDAO productDAO) {
		this.productDAO = productDAO;
	}
	
	

	
	@RequestMapping("/adminlogin")
	public String adminlogin(Model m, HttpServletRequest request, HttpServletResponse response, CookieLocaleResolver clr) {	
		
	return "adminlogin";
}
	
	
	@RequestMapping("/login")
	public RedirectView login(Model m, HttpServletRequest request, HttpServletResponse response, CookieLocaleResolver clr, RedirectAttributes redi) {	
		
		redi.addFlashAttribute("msg", "Login succesfully");
		redi.addFlashAttribute("system_name", "Edit Product");
		request.getSession().invalidate();
	return new RedirectView("editproduct");
}
	
	
	
	
	@RequestMapping("/contact")
	public String contact(Model m, HttpServletRequest request, HttpServletResponse response, CookieLocaleResolver clr) {	

	return "contact";
	}
	
	@RequestMapping("/index")
	public String index(Model m, HttpServletRequest request, HttpServletResponse response, CookieLocaleResolver clr) {	
		
		request.getSession().setAttribute("system_name", "Welcome to ShopLuKa");
		

		List<Product> list = productDAO.selectAll();
		m.addAttribute("list", list);
		
	return "index";	
}
}
