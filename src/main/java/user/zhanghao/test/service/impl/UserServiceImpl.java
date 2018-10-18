package user.zhanghao.test.service.impl;


import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import user.zhanghao.test.dao.UserDao;
import user.zhanghao.test.entity.User;
import user.zhanghao.test.service.UserService;
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{
	@Resource(name="userDao")
	private UserDao userDao;

	public User getUserByLogin(String username) throws Exception {
		User user = userDao.getUserByloginName(username);
		return user;
	}

}
