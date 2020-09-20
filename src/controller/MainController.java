package controller;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
	
	
	
	@RequestMapping("/index")
	public String index(Model m, HttpServletRequest request, HttpServletResponse response, CookieLocaleResolver clr) {	
		
		request.getSession().setAttribute("system_name", "system name");
		
		
//		clr.setLocale(request, response, new Locale("vi"));

		List<Product> list = productDAO.selectAll();
		m.addAttribute("list", list);
		
	return "index";	
}
}
