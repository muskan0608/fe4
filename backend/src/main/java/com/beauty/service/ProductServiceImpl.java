package com.beauty.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.beauty.dao.ProductDao;
import com.beauty.model.Category;
import com.beauty.model.Product;
@Repository
@Service
@Transactional
public class ProductServiceImpl implements ProductService{
	
	ProductServiceImpl()
	{
		System.out.println("Product service impl object created");
	}
	@Autowired
	private ProductDao productDao;
	public void saveProduct(Product product){
		productDao.saveProduct(product);
	}
	
	public List<Product> getAllProducts()
	{
		return productDao.getAllProducts();
	}
	
	public Product getProductById(int id)
	{
		return productDao.getProductById(id);
	}
	public void deleteProduct(int id)
	{
		Product product=productDao.getProductById(id);
		productDao.deleteProduct(product);
	}
	
	public void updateProduct(Product product){
       productDao.editProduct(product);
	
	}
	public List<Category> getAllCategories()
	{
	return productDao.getAllCategories();
	}
	
	public List<Product> getProductByCategory(int cid)
	{
		return productDao.getProductByCategory(cid);
	}
	
}

