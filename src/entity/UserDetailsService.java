package entity;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import org.apache.commons.lang3.StringUtils;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;

public class UserDetailsService implements org.springframework.security.core.userdetails.UserDetailsService {

//	@Autowired
//	ResourceLoader resourceLoader;
	
//	@Autowired
//	ServletContext context;

	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

					PasswordEncoder encoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();

					String pas = encoder.encode(System.getenv("password"));

//					String encoded = new BCryptPasswordEncoder().encode(userRow[1]);

					System.out.println(System.getenv("username"));
//					String pas1 = encoder.encode("password");
					

					
					return new User(System.getenv("username"), pas, AuthorityUtils.createAuthorityList(System.getenv("role")));

/* 		String fileName = "users.csv";

		ClassLoader classLoader = this.getClass().getClassLoader();
		InputStream inputStream = classLoader.getResourceAsStream(fileName);
		InputStreamReader streamReader = new InputStreamReader(inputStream, StandardCharsets.UTF_8);
		BufferedReader br = new BufferedReader(streamReader);

//		Resource usersCsv = context.getResource("users.csv");
		System.out.println(streamReader);
		try {
//			BufferedReader br = new BufferedReader(new FileReader(usersCsv.getFile()));
			String line;
			while ((line = br.readLine()) != null) {
				System.out.println(line);
				String[] userRow = line.split(",", 0);
				if (StringUtils.equals(username, userRow[0])) {
					System.out.println(username + " was Found.");

					PasswordEncoder encoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();

//					PasswordEncoder pencoder = new BCryptPasswordEncoder();
					
					

//					WebApplicationContext wac = WebApplicationContextUtils.getRequiredWebApplicationContext(null);
//					
//					String pathh = wac.getServletContext().getRealPath("WEB-INF/");
//					
//					File myObj = new File(pathh + "users.csv");
//					
//					
//					 Scanner myReader = new Scanner(myObj);
//				      while (myReader.hasNextLine()) {
//				        String data = myReader.nextLine();
//				        System.out.println(data);
//				      }
//				      myReader.close();
					
					String pas = encoder.encode(System.getenv("password"));

//					String encoded = new BCryptPasswordEncoder().encode(userRow[1]);

					System.getenv("username");
//					String pas1 = encoder.encode("password");
					

					br.close();
					return new User(System.getenv("username"), pas, AuthorityUtils.createAuthorityList(System.getenv("role")));
//					return new User("admin", pas1, AuthorityUtils.createAuthorityList("ADMIN"));
				}
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
		throw new UsernameNotFoundException("Not Found: " + username); */

	}

}
