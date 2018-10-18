package user.zhanghao.test.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="sys_user")
public class User implements Serializable{
	private static final long serialVersionUID = 1L;
	private Long userId;			//主键
	private String username;		//用户名
	private String password;		//密码
	private String age;				//年龄
	private String sex;				//性别
	private String nickname;		//昵称
	private String usertype;				//角色
	
//	
//	public User() {}
//	public User(Long userId, String username, String password, String age, String sex, String nickname, Type type) {
//		this.userId = userId;
//		this.username = username;
//		this.password = password;
//		this.age = age;
//		this.sex = sex;
//		this.nickname = nickname;
//		this.type = type;
//	}
//	
//	public User(String username, String password, String age, String sex, String nickname, Type type) {
//		this.username = username;
//		this.password = password;
//		this.age = age;
//		this.sex = sex;
//		this.nickname = nickname;
//		this.type = type;
//	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="user_id")
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	
	@Column(name="user_name")
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	@Column(name="password")
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Column(name="age")
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	
	@Column(name="sex")
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	@Column(name="nickname")
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	@Column(name="usertype")
	public String getUsertype() {
		return usertype;
	}
	public void setType(String usertype) {
		this.usertype = usertype;
	}
	
	
//	public String toString() {
//		return "User [userId=" + userId + ", username=" + username + ", password=" + password + ", age=" + age
//				+ ", sex=" + sex + ", nickname=" + nickname + ", type=" + type + "]";
//	}
//	
	
}
