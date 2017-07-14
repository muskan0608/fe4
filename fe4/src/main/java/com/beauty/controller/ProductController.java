package com.beauty.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.beauty.configuration.DBConfiguration;
import com.beauty.dao.ProductDaoImpl;
import com.beauty.model.Product;
import com.beauty.service.ProductService;
import com.beauty.service.ProductServiceImpl;

@Controller
public class ProductController {
    ApplicationContext context=new AnnotationConfigApplicationContext(DBConfiguration.class,ProductDaoImpl.class,ProductServiceImpl.class);
    ProductService productService =(ProductService)context.getBean("productServiceImpl");

	
	
@RequestMapping("/getproductform")
public String getProductForm(Model model)
{
	model.addAttribute("product",new Product());
	return "productform";
}

@RequestMapping("/saveproduct")
public String SaveProduct(@ModelAttribute(name="product")Product product)
{
	productService.saveProduct(product);
	return "success";
}

@RequestMapping("/getallproducts")
public String getAllProducts(Model model)
{
	List<Product> products=productService.getAllProducts();
	model.addAttribute("product",products);
	return "productlist";
}

@RequestMapping("/all/product/viewproduct/{id}")
public String getProductById(@PathVariable int id,Model model){
	
	Product product=productService.getProductById(id);
	model.addAttribute("product", product);
	return "viewproduct";
}

@RequestMapping("/admin/product/deleteproduct/{id}")
public String deleteProductById(@PathVariable int id)
{
	productService.deleteProduct(id);
	return "redirect:/getallproducts";
}


@RequestMapping("admin/product/geteditform/{id}")
public String getEditForm(@PathVariable int id, Model model)
{
	Product product=productService.getProductById(id);
	model.addAttribute("productObj",product);
	return "editform";
}
@RequestMapping("/admin/product/editproduct")
public String editProduct(@ModelAttribute(name="productObj")Product product){
	productService.updateProduct(product);
	return "redirect:/getallproducts";
	
}

}
