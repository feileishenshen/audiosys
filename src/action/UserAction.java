package action;

import com.opensymphony.xwork2.ActionSupport;

import Bean.User;
import DAO.UserDAO;

import java.util.List;

@SuppressWarnings("serial")
public class UserAction extends ActionSupport{
	
	private String userid;
	private String password;
	private User user;
	private List<User> listUser;
	
	public String showuser() throws Exception{
		this.setUserid(getUserid());
		User userShow = UserDAO.getUser(userid);
		
		return SUCCESS;
	}
	
	public String login () throws Exception{
		this.setUserid(getUserid());
		this.setPassword(getPassword());
		
		if (this.getUserid()==null||this.getUserid().length()==0){
			System.out.println ("请输入userid!");
			return ERROR;
			}
		else{
            	List listUserRw = UserDAO.checkUser(userid, password);
            	if(listUserRw.size()>0){
            		System.out.println("账号密码正确，登陆成功！");
            		return SUCCESS;
            	}
            	else{
            		System.out.println("账号或密码错误！");
            		return ERROR;
            		}
            	
		}
		
		
	}

	
	
/*-------------------------------get_set方法---------------------------*/	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

}
