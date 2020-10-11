package controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
		
		
		String err = request.getParameter("error");
		
		if (err != null) {
			m.addAttribute("msg", "Đăng nhập thất bại");
		}else {
			m.addAttribute("msg", "Đăng nhập để tiếp tục");
		}
		
	return "adminlogin";
}
	
	
	@RequestMapping("/login")
	public RedirectView login(Model m, HttpServletRequest request, HttpServletResponse response, CookieLocaleResolver clr, RedirectAttributes redi) {	
		
		redi.addFlashAttribute("msg", "Login succesfully");
		redi.addFlashAttribute("system_name", "Edit Product");
		request.getSession().invalidate();
	return new RedirectView("editproduct");
}
	
	@RequestMapping("/logout")
	public String logout(Model m, HttpServletRequest request, HttpServletResponse response, CookieLocaleResolver clr) {	
		try {
			request.logout();
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
	return "redirect:/";
	}
	
	
	@RequestMapping("/contact")
	public String contact(Model m, HttpServletRequest request, HttpServletResponse response, CookieLocaleResolver clr) {	

	return "contact";
	}
	
	@RequestMapping("/index")
	public String index(Model m, HttpServletRequest request, HttpServletResponse response, CookieLocaleResolver clr) {	
		
		request.getSession().setAttribute("system_name", "Welcome to ShopLuKa");
		

		List<Product> list = productDAO.selectAll();
		
//		Properties prop = new Properties();
//		InputStream input = null;
//		try {
//			input = new FileInputStream("config.properties");
//			// load a properties file
//			prop.load(input);
//
//			// get the property value and print it out
//			prop.entrySet().forEach(e -> System.out.println(e.getKey() + " : " + e.getValue()));
//		} catch (IOException ex) {
//			ex.printStackTrace();
//		} finally {
//			if (input != null) {
//				try {
//					input.close();
//				} catch (IOException e) {
//					e.printStackTrace();
//				}
//			}
//		}
		
		
		
//		Properties prop = new Properties();
//		InputStream input = null;
//		try {
//			String filename = "config.properties";
//			input = MainController.class.getClassLoader().getResourceAsStream(filename);
//			if (input == null) {
//				System.out.println("Sorry, unable to find " + filename);
//				
//			}
//
//			// load a properties file from class path, inside static method
//			prop.load(input);
//
//			// get the property value and print it out
//			prop.entrySet().forEach(e -> System.out.println(e.getKey() + " : " + e.getValue()));
//			
//			System.out.println(prop.get("email.user"));
//			
//		} catch (IOException ex) {
//			ex.printStackTrace();
//		} finally {
//			if (input != null) {
//				try {
//					input.close();
//				} catch (IOException e) {
//					e.printStackTrace();
//				}
//			}
//		}
		
		
		m.addAttribute("list", list);
		
		
		
	return "index";	
}
}
