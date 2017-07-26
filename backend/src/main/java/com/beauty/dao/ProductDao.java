package com.beauty.dao;

import java.util.List;

import com.beauty.model.Category;
import com.beauty.model.Product;


public interface ProductDao {
void saveProduct(Product product);
List<Product> getAllProducts();
Product getProductById(int id);
void deleteProduct(Product product);
void editProduct(Product product);
List<Category> getAllCategories();
}
