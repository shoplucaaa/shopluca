package controller;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	
	@RequestMapping("/product")
	public String product(Model m, HttpServletRequest request, HttpServletResponse response, CookieLocaleResolver clr) {	
		
		
		request.getSession().setAttribute("system_name", "system name");
//		clr.setLocale(request, response, new Locale("vi"));

		List<Product> list = productDAO.selectAll();
		m.addAttribute("list", list);
		
	return "product";
	
	
}
	
	@RequestMapping("/adminlogin")
	public String login(Model m, HttpServletRequest request, HttpServletResponse response, CookieLocaleResolver clr) {	
		
		
	
		
		request.getSession().setAttribute("system_name", "system name");

		
		
		String username = request.getParameter("username");
		String pass = request.getParameter("password");
		

		Pattern pattern = Pattern.compile("hung$");
		Matcher matcher = pattern.matcher(pass);
		boolean matchFound = matcher.find();

					boolean isSuccess = matcher.find();
			if (isSuccess) {
				return "editproduct"; 
			} else {
				m.addAttribute("msg", "Username or password incorrect");
				return "adminlogin";
			}
		
	
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
