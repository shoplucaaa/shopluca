package controller;

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
	
	@RequestMapping("/index")
	public String index(Model m, HttpServletRequest request, HttpServletResponse response, CookieLocaleResolver clr) {	
		
		
	
		
		request.getSession().setAttribute("system_name", "system name");

		m.addAttribute("yourname", "Name");


//		clr.setLocale(request, response, new Locale("vi"));

		List<Product> list = productDAO.selectAll();
		m.addAttribute("list", list);
		
	return "index";
	
	
}
}
