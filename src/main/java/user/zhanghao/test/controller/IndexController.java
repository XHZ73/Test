package user.zhanghao.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import user.zhanghao.test.base.controller.BaseController;
//只负责跳转登录界面
@Controller
public class IndexController extends BaseController{

	@RequestMapping(value="/",method=RequestMethod.GET)
	public String getIndex() throws Exception{
		return "user/userlogin";
	}
}
