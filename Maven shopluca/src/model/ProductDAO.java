package model;

import java.util.List;

import entity.Product;



public interface ProductDAO {

	
	public List<Product> selectAll();

	public Product selectById(int id);

	public boolean insert(Product s);

	public boolean update(Product s);

	public boolean delete(int id);

	public List<Product> selectAll(Integer offset, Integer limit);

	public int countItem();
}
