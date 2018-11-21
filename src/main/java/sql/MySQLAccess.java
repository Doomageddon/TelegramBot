package sql;

import java.util.List;

import org.hibernate.Session;

import entity.Item;

public class MySQLAccess {

	public void save(Item item) {
		Session session = MySQLSessionFactory.getSessionFactory().openSession();
		session.beginTransaction();
		session.save(item);
		session.getTransaction().commit();
		session.close();
	}

	public void truncate() {
		Session session = MySQLSessionFactory.getSessionFactory().openSession();
		session.beginTransaction();
		session.createSQLQuery("TRUNCATE TABLE discountsAtb").executeUpdate();
		session.getTransaction().commit();
		session.close();
	}

	public List get() {
		Session session = MySQLSessionFactory.getSessionFactory().openSession();
		session.beginTransaction();
		List result = session.createQuery("FROM Item").list();
		session.getTransaction().commit();
		session.close();
		return result;
	}

}
