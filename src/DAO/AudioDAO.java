package DAO;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import Bean.HibernateSessionFactory;
import Bean.Audio;

public class AudioDAO {
	public static void insertAudio(Audio audio) {
		Transaction tx = null;
		try {
			Session session = HibernateSessionFactory.getSessionFactory()
					.openSession();
			tx = session.beginTransaction();
			session.save(audio);

			tx.commit();

		} catch (HibernateException e) {
			e.printStackTrace();
			tx.rollback();
		}
		HibernateSessionFactory.closeSession();
	}//add
	
	public static void deleteAudio(String audioId) {
		Transaction tx = null;
		try {
			Audio audio = getAudio(audioId);
			Session session = HibernateSessionFactory.getSessionFactory()
					.openSession();
			tx = session.beginTransaction();
			session.delete(audio);
			tx.commit();

		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
		}
		HibernateSessionFactory.closeSession();
	}//delete
	
	
	public static void updateUser(Audio audio) {
		Transaction tx = null;
		try {
			Session session = HibernateSessionFactory.getSessionFactory()
					.openSession();
			tx = session.beginTransaction();
			session.update(audio);
			tx.commit();

		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
		}
		HibernateSessionFactory.closeSession();
	}//update
	
	
	public static Audio getAudio(String audioId) {
		Transaction tx = null;
		Audio audio = null;
		try {
			Session session = HibernateSessionFactory.getSessionFactory()
					.openSession();
			tx = session.beginTransaction();
			audio = (Audio) session.get(Audio.class, audioId);
			tx.commit();

		} catch (HibernateException e) {
			e.printStackTrace();
			tx.rollback();
		}
		HibernateSessionFactory.closeSession();
		return audio;
	}//get one
	
	public static List<Audio> getAudios() {
		Transaction tx = null;
		List<Audio> list = null;
		try {
			Session session = HibernateSessionFactory.getSessionFactory()
					.openSession();
			tx = session.beginTransaction();
			Query query = session.createQuery("from Audio order by audioId desc");
			list = query.list();
			tx.commit();

		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
		}
		HibernateSessionFactory.closeSession();
		return list;
	}// get all

}
