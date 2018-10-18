package user.zhanghao.test.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import user.zhanghao.test.base.controller.BaseController;
import user.zhanghao.test.entity.User;
import user.zhanghao.test.service.UserService;

@Controller("userCotroller")
@RequestMapping("/user")
public class UserCotroller extends BaseController{
	@Resource(name="userService")
	private UserService userService;
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String getUserBylogin(User user)throws Exception{
		System.out.println(user.getUsername());
		System.out.println(user.getPassword());
		System.out.println("111111111111111111111111111");
		User user1 = userService.getUserByLogin(user.getUsername());
		if (user1.getPassword().equals(user.getPassword())) {
			return "index";
		}
		//用查询到的对象对比密码
		return "user/userlogin";
		
	}
	
}
