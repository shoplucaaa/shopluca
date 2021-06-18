package controller;

import com.sun.mail.smtp.SMTPTransport;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;

import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.Properties;

@Controller
public class EmailController {
	// for example, smtp.mailgun.org
	


    private static final String SMTP_SERVER = "smtp.gmail.com";
    private static final String USERNAME = System.getenv("email");
    private static final String PASSWORD = System.getenv("emailp");

    
//   appp password iaevexxgzjmiftqj
    
//    private static final String EMAIL_FROM = "From@gmail.com";
//    private static final String EMAIL_TO = "asdf@yahoo.com, vutunam994@gmail.com";
//    private static final String EMAIL_TO_CC = "";
//
//    private static final String EMAIL_SUBJECT = "Test Send Email via SMTP";
//    private static final String EMAIL_TEXT = "Hello Java Mail \n ABC123";

    
    @RequestMapping("/sendemail")
    public String sendemail(@RequestParam(name = "message") String message, @RequestParam(name = "contact") String contact, @RequestParam(name = "email") String email, @RequestParam(name = "subject") String subject, @RequestParam(name = "name") String name, Model m, HttpServletRequest request, HttpServletResponse response, CookieLocaleResolver clr)  {
   	
    	String EMAIL_FROM = email;
        String EMAIL_TO = System.getenv("email");
        String EMAIL_TO_CC = "";

        String EMAIL_SUBJECT = subject;
        String CONTACT = contact;
        String EMAIL_TEXT = message;
    	
        Properties prop = System.getProperties();


		InputStream input = null;
		try {
			String filename = "config.properties";
			input = EmailController.class.getClassLoader().getResourceAsStream(filename);
			if (input == null) {
				System.out.println("Sorry, unable to find " + filename);
			}

			// load a properties file from class path, inside static method
			prop.load(input);

		} catch (IOException ex) {
			ex.printStackTrace();
		} finally {
			if (input != null) {
				try {
					input.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		
		
//		   String SMTP_SERVER = "smtp.gmail.com";
//		   String USERNAME = (String) prop.get("email.user");
//		   String PASSWORD = (String) prop.get("email.password");
		
        prop.put("mail.smtp.host", SMTP_SERVER); //optional, defined in SMTPTransport
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.port", "587"); // default port 25
        prop.put("mail.smtp.starttls.enable", "true");
		
		
		

        
    
        Session session = Session.getInstance(prop, new javax.mail.Authenticator() {

            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(USERNAME, PASSWORD);
            }
        });
        
        


        Message msg = new MimeMessage(session);

        try {

			// from
            msg.setFrom(new InternetAddress(EMAIL_FROM));

			// to
            msg.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(EMAIL_TO, false));

			// cc
            msg.setRecipients(Message.RecipientType.CC,
                    InternetAddress.parse(EMAIL_TO_CC, false));

			// subject
            msg.setSubject(EMAIL_SUBJECT);

			// content
            msg.setText(EMAIL_TEXT + "\r\n" + "from " + CONTACT + " / " + EMAIL_FROM );

            msg.setSentDate(new Date());
            
            
			// Get SMTPTransport
            SMTPTransport t =  (SMTPTransport) session.getTransport("smtp");
            
            
			// connect
            t.connect(SMTP_SERVER, USERNAME, PASSWORD);
            
            
			// send
            t.sendMessage(msg, msg.getAllRecipients());

            System.out.println("Response: " + t.getLastServerResponse());

            t.close();

        } catch (MessagingException e) {
            e.printStackTrace();
        }
    	
        m.addAttribute("msg", "Email successfully sended");
        
        return "contact";
    }
}
