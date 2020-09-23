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
		
		
//		request.getSession().setAttribute("system_name", "system name");
//		clr.setLocale(request, response, new Locale("vi"));
	return "adminlogin";
}
	@RequestMapping("/login")
	public String login(@ModelAttribute("s") Product s, Model m, HttpServletRequest request, HttpServletResponse response, CookieLocaleResolver clr) {	
		
		m.addAttribute("s", s);
		
		
		
		List<Product> list = productDAO.selectAll();
		m.addAttribute("list", list);
//		request.getSession().setAttribute("system_name", "system name");
//		clr.setLocale(request, response, new Locale("vi"));
	return "editproduct";
}
	
	@RequestMapping("/contact")
	public String contact(Model m, HttpServletRequest request, HttpServletResponse response, CookieLocaleResolver clr) {	
		
		
//		request.getSession().setAttribute("system_name", "system name");
//		clr.setLocale(request, response, new Locale("vi"));
	return "contact";
	}
	
	@RequestMapping("/index")
	public String index(Model m, HttpServletRequest request, HttpServletResponse response, CookieLocaleResolver clr) {	
		
		request.getSession().setAttribute("system_name", "system name");
		
		
//		clr.setLocale(request, response, new Locale("vi"));

		List<Product> list = productDAO.selectAll();
		m.addAttribute("list", list);
		
	return "index";	
}
}
