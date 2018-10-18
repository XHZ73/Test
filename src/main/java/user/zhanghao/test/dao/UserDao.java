package user.zhanghao.test.dao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import user.zhanghao.test.base.dao.BaseDao;
import user.zhanghao.test.entity.User;

public interface UserDao extends BaseDao<User,Long>{
	@Query("from User u where u.username=:username")
	public User getUserByloginName(@Param("username")String username) throws Exception;

}
