package DAO;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import Bean.HibernateSessionFactory;
import Bean.User;

public class UserDAO {
	
	public static void insertUser(User user) {
		Transaction tx = null;
		try {
			Session session = HibernateSessionFactory.getSessionFactory()
					.openSession();
			tx = session.beginTransaction();
			session.save(user);

			tx.commit();

		} catch (HibernateException e) {
			e.printStackTrace();
			tx.rollback();
		}
		HibernateSessionFactory.closeSession();
	}//add
	
	
	public static void deleteUser(String userId) {
		Transaction tx = null;
		try {
			User user = getUser(userId);
			Session session = HibernateSessionFactory.getSessionFactory()
					.openSession();
			tx = session.beginTransaction();
			session.delete(user);
			tx.commit();

		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
		}
		HibernateSessionFactory.closeSession();
	}//delete
	
	
	public static void updateUser(User user) {
		Transaction tx = null;
		try {
			Session session = HibernateSessionFactory.getSessionFactory()
					.openSession();
			tx = session.beginTransaction();
			session.update(user);
			tx.commit();

		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
		}
		HibernateSessionFactory.closeSession();
	}//update
	
	
	public static User getUser(String userId) {
		Transaction tx = null;
		User user = null;
		try {
			Session session = HibernateSessionFactory.getSessionFactory()
					.openSession();
			tx = session.beginTransaction();
			user = (User) session.get(User.class, userId);
			tx.commit();

		} catch (HibernateException e) {
			e.printStackTrace();
			tx.rollback();
		}
		HibernateSessionFactory.closeSession();
		return user;
	}//get one
	
	public static List<User> getUsers() {
		Transaction tx = null;
		List<User> list = null;
		try {
			Session session = HibernateSessionFactory.getSessionFactory()
					.openSession();
			tx = session.beginTransaction();
			Query query = session.createQuery("from User order by userId desc");
			list = query.list();
			tx.commit();

		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
		}
		HibernateSessionFactory.closeSession();
		return list;
	}// get all
	
	public static List<User> checkUser(String userId,String userPwd) {
		Transaction tx = null;
		List<User> list = null;
		try {
			Session session = HibernateSessionFactory.getSessionFactory()
					.openSession();
			tx = session.beginTransaction();
			Query query = session.createQuery("from User as u where u.userId=:userId and u.userPwd=:userPwd");
			query.setString("userId", userId);    
			query.setString("userPwd", userPwd);
			list = query.list();                            
			tx.commit();}
		catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
		}
		HibernateSessionFactory.closeSession();
		return list;
	}
	
	
	//测试用DAO
	public static void main(String[] args){
		List<User> list = UserDAO.getUsers();
		
		System.out.println("进入测试函数");
		
		for(int i=0;i<list.size();i++){
			User user= new User();
			user = list.get(i);
			System.out.println(user.getUserId());
		}
	}

}
