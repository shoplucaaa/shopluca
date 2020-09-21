package controller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.util.List;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;

import entity.Product;
import model.ProductDAO;

@Controller
public class ProductController {

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

//	@RequestMapping("/editproduct")
//	public String editproduct(@ModelAttribute("s") Product s, Model m, HttpServletRequest request,
//			HttpServletResponse response, CookieLocaleResolver clr) {
//
//		m.addAttribute("s", s);
//
//		List<Product> list = productDAO.selectAll();
//		m.addAttribute("list", list);
//
//		return "editproduct";
//	}

	@RequestMapping("/addnewproduct")
	public String addnewproduct(@ModelAttribute("s") Product s, Model m, HttpServletRequest request) {
		// 1. Common file-upload
		// 2. Common io
		ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());
		try {
			List<FileItem> lstItem = sfu.parseRequest(request);
			for (FileItem item : lstItem) {
				if (item.isFormField()) {
					String data = item.getString("UTF-8");
					if (!data.isEmpty()) {
						switch (item.getFieldName()) {
						case "name":
							s.setName(data);
							break;
						case "type":
							s.setType(data);
							break;
						case "price":
							s.setPrice(Integer.parseInt(data));
							break;
						case "description":
							s.setDescription(data);
							break;
						case "status":
							s.setStatus(Boolean.parseBoolean(data));
							break;
//						case "likecount":
//							s.setLikecount(Integer.parseInt(data));;
//							break;
						}
					}
				} else {
					String filename = item.getName();
					System.out.println(filename);
					if (!filename.isEmpty()) {
						String serverPath = request.getServletContext().getRealPath("public/images");
						File destination = new File(serverPath, java.time.LocalDate.now() + " " + filename);
						if (destination.exists()) {
							destination.delete();
							m.addAttribute("msg", "File already exists");
						}
						item.write(destination);
						s.setImage(java.time.LocalDate.now() + " " + filename);
					}
				}
			}
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		m.addAttribute("s", s);

		boolean isSuccess = productDAO.insert(s);

		if (isSuccess) {
			return "redirect:editproduct";
		} else {
			m.addAttribute("msg", "Error inserting");
			return "redirect:editproduct";
		}

	}

	@RequestMapping("init-update-product")
	public String initUpdate(@RequestParam("sID") Integer sID, Model m) {
		Product s = productDAO.selectById(sID);

		m.addAttribute("s", s);
		return "updateproduct";
	}

	@RequestMapping("update-product")
	public String update(@Valid @ModelAttribute Product s, BindingResult result, Model m, HttpServletRequest request) {
		String oldfilename = s.getImage();
		System.out.println(oldfilename);
		ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());
		try {
			List<FileItem> lstItem = sfu.parseRequest(request);
			for (FileItem item : lstItem) {
				if (item.isFormField()) {
					String data = item.getString("UTF-8");
					if (!data.isEmpty()) {
						switch (item.getFieldName()) {
						case "id":
							s.setId(Integer.parseInt(data));
						case "name":
							s.setName(data);
							break;
						case "type":
							s.setType(data);
							break;
						case "price":
							s.setPrice(Integer.parseInt(data));
							break;
						case "description":
							s.setDescription(data);
							break;
						case "status":
							s.setStatus(Boolean.parseBoolean(data));
							break;
//						case "likecount":
//							s.setLikecount(Integer.parseInt(data));;
//							break;
						}
					}
				} else {
					String filename = item.getName();
					System.out.println(filename);
					
					if (!filename.isEmpty()) {
						String serverPath = request.getServletContext().getRealPath("public/images");
						File destination = new File(serverPath, java.time.LocalDate.now() + " " + filename);
						if (destination.exists()) {
							destination.delete();
							m.addAttribute("msg", "File already exists");
						}
						item.write(destination);
						s.setImage(java.time.LocalDate.now() + " " + filename);
					}
				}
			}
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		m.addAttribute("s", s);

		boolean isSuccess = productDAO.update(s);

		if (isSuccess) {
			return "redirect:editproduct";
		} else {
			m.addAttribute("msg", "Error updating product");
			return "redirect:editproduct";
		}

	}

	@RequestMapping("delete-product")
	public String delete(@RequestParam("sID") Integer sID, Model m, HttpServletRequest request) {
		Product s = productDAO.selectById(sID);
		
		if (s.getImage() != null) {
		String serverPath = request.getServletContext().getRealPath("public/images");
			File destination = new File(serverPath, s.getImage());
			destination.delete();
		}

		boolean isSuccess = productDAO.delete(sID);
		if (isSuccess) {
			m.addAttribute("msg", "Delete Successfully");
		} else {
			m.addAttribute("msg", "Error Deleting");
		}

		return "redirect:editproduct";
	}

}
