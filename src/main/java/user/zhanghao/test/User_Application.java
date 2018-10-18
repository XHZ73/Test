package user.zhanghao.test;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan
@EnableAutoConfiguration
public class User_Application {
	public static void main(String[] args) {
		SpringApplication.run(User_Application.class, args);
	}
}