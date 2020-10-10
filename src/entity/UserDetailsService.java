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
				if (StringUtils.equals(username, System.getenv("username"))) {
					
					System.out.println(username + " was Found.");
					PasswordEncoder encoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
					System.out.println(System.getenv("password"));
					System.out.println(System.getenv("role"));
		
					String pas = encoder.encode(System.getenv("password"));
					System.out.println(pas);
//					String encoded = new BCryptPasswordEncoder().encode(userRow[1]);

					System.out.println(System.getenv("username"));
//					String pas1 = encoder.encode("password");
					

					
					return new User(System.getenv("username"), pas, AuthorityUtils.createAuthorityList(System.getenv("role")));
					
					
				}else {
				throw new UsernameNotFoundException("Not Found: " + username);
				
				}


	}

}
