package model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import entity.Product;


/**
 * 
 * @author 
 *
 */

@Repository
public class ProductDAOimpl implements ProductDAO {

	private SessionFactory sessionFactory;

	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
		
	@Override
	public List<Product> selectAll() {
		Session ss = sessionFactory.openSession();  
		try {
			ss.beginTransaction();  
			
			List list = ss.createQuery("from Product").list(); 
		
			
			ss.getTransaction().commit();  
			ss.close();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			ss.close();
		}
		return null;
	}

	@Override
	public Product selectById(int id) {
		Session ss = sessionFactory.openSession();  
		try {
			ss.beginTransaction();  
			Product s = (Product) ss.createQuery("from Product WHERE id = :sId").setParameter("sId", id).getSingleResult();  
			ss.getTransaction().commit();  
			return s;
		} catch (Exception e) {
			e.printStackTrace();
			ss.close();
		}
		
		return null;
	}

	@Override
	public boolean insert(Product s) {
		Session ss = sessionFactory.openSession();  
		try {
			ss.beginTransaction();  
			ss.save(s);  
			ss.getTransaction().commit(); 
			ss.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			ss.close();
		}
		return false;
	}

	@Override
	public boolean update(Product s) {
		Session ss = sessionFactory.openSession();   
		try {
			ss.beginTransaction();   
			ss.update(s);  
			ss.getTransaction().commit();   
			ss.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			ss.close();
		}
		return false;
	}

	@Override
	public boolean delete(int id) {
		Session ss = sessionFactory.openSession();  
		try {
			ss.beginTransaction();  
			Product s = ss.get(Product.class, id);   
			ss.delete(s);  
			ss.getTransaction().commit();   
			ss.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			ss.close();
		}
		return false;
	}

	@Override
	public List<Product> selectAll(Integer offset, Integer limit) {
		Session ss = sessionFactory.openSession();  
		try {
			ss.beginTransaction();  
			List list = ss.createQuery("from Product").setFirstResult(offset).setMaxResults(limit).list();  
			ss.getTransaction().commit();  
			ss.close();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			ss.close();
		}
		
		return null;
	}

	@Override
	public int countItem() {
		Session ss = sessionFactory.openSession(); 
		try {
			ss.beginTransaction(); 
			Long cnt = (Long) ss.createQuery("select count(*) from Product").getSingleResult();  
			ss.getTransaction().commit();  
			ss.close();
			return cnt.intValue();
		} catch (Exception e) {
			e.printStackTrace();
			ss.close();
		}
		return 0;
	}

	
	
}
