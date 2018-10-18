package user.zhanghao.test.service;

import user.zhanghao.test.entity.User;

public interface UserService {

	public User getUserByLogin(String username)throws Exception;


}
