package controller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import entity.Product;
import model.ProductDAO;

public class ProductController {

	private ProductDAO productDAO;

	@Autowired
	public void setProductDAO(ProductDAO productDAO) {
		this.productDAO = productDAO;
	}
	
	
	@RequestMapping("/form-register")
	public String init(Model m) {
		Product s = new Product();
		s.setName("Victor Minh");

		m.addAttribute("s", s);
		return "form-register";
	}
	
	@RequestMapping("/register") //@Valid  , BindingResult result
	public String register(@ModelAttribute("s") Product s, Model m, HttpServletRequest request) {
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
						case "statuss":
							s.setStatus(Boolean.parseBoolean(data));
							break;
//						case "likecount":
//							s.setLikecount(Integer.parseInt(data));;
//							break;
						}
					}					
				} else {
					String filename = item.getName();
					if (!filename.isEmpty()) {
						String serverPath = request.getServletContext().getRealPath("public/images");
						System.out.println("Realpath: " + serverPath);
						File destination = new File(serverPath, filename);						
						item.write(destination);
						s.setImage(filename + java.time.LocalDate.now()); 
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
				return "forward: index"; 
			} else {
				m.addAttribute("msg", "Error inserting");
				return "form-register";
			}

	}
	
	@RequestMapping("detail-student")
	public String viewDetail(@RequestParam("sID") Integer sID, Model m) {
		Product s = productDAO.selectById(sID);

		m.addAttribute("s", s);
		return "view-student";
	}
	
	
	@RequestMapping("init-update-student")
	public String initUpdate(@RequestParam("sID") Integer sID, Model m) {
		Product s = productDAO.selectById(sID);

		m.addAttribute("s", s);
		return "update-student";
	}
	
	@RequestMapping("update-student")
	public String update(@Valid @ModelAttribute Product s, BindingResult result, Model m) {
		m.addAttribute("s", s);

		if (result.hasErrors()) {
			return "update-student"; 
		} else {
			boolean isSuccess = productDAO.update(s);
			if (isSuccess) {
				return "redirect: index"; 
			} else {
				m.addAttribute("msg", "Error updating");
				return "update-student";
			}
		}
	}
	
	@RequestMapping("delete-student")
	public String delete(@RequestParam("sID") Integer sID, Model m) {
		
		boolean isSuccess = productDAO.delete(sID);
		if (isSuccess) {
			m.addAttribute("msg", "Delete Successfully");
		} else {
			m.addAttribute("msg", "Error Deleting");
		}
		
		return "forward: index";
	}
	
}
