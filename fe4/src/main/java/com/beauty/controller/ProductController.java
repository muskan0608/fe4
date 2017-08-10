package com.beauty.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.beauty.model.Category;
import com.beauty.model.Product;
import com.beauty.service.ProductService;

@Controller
public class ProductController {
   @Autowired
    ProductService productService;

	
	
@RequestMapping("/getproductform")
public String getProductForm(Model model)
{
	List<Category> categories=productService.getAllCategories();
	model.addAttribute("categories", categories);
	model.addAttribute("product",new Product());
	return "productform";
}

@RequestMapping("/saveproduct")
public String SaveProduct(@Valid @ModelAttribute(name="product")Product product,BindingResult result,Model model)
{
	if(result.hasErrors())
	{
	List<Category> categories=productService.getAllCategories();
	model.addAttribute("categories",categories);
	return "productform";
	}
	productService.saveProduct(product);
	
	
	MultipartFile image=product.getImage();
	Path path=Paths.get("C:\\Users\\LENOVO\\git\\fe4\\fe4\\src\\main\\webapp\\WEB-INF\\resources\\images\\"+product.getId()+".png");
	try {
		image.transferTo(new File(path.toString()));
	} catch (IllegalStateException | IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return "redirect:/getallproducts";
}

@RequestMapping("/getallproducts")
public String getAllProducts(Model model)
{
	List<Product> products=productService.getAllProducts();
	model.addAttribute("product",products);
	return "productlist";
}

@RequestMapping("/viewproduct{id}")
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


@RequestMapping("adminproductgeteditform{id}")
public String getEditForm(@PathVariable int id, Model model)
{
	Product product=productService.getProductById(id);
	model.addAttribute("productObj",product);
	List<Category> categories=productService.getAllCategories();
	model.addAttribute("categories", categories);
	return "editform";
}
@RequestMapping("/admin/product/editproduct")
public String editProduct(@Valid @ModelAttribute(name="productObj")Product product,BindingResult result,Model model)
{
	if(result.hasErrors())
	{
	List<Category> categories=productService.getAllCategories();
	model.addAttribute("categories",categories);
	return "editform";
	}
	productService.updateProduct(product);

	MultipartFile image=product.getImage();
	Path path=Paths.get("C:\\Users\\LENOVO\\git\\fe4\\fe4\\src\\main\\webapp\\WEB-INF\\resources\\images\\"+ product.getId()+".png");
	try {
		image.transferTo(new File(path.toString()));
	} catch (IllegalStateException | IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return "redirect:/getallproducts";
	
}

  @RequestMapping("searchbyCategory{cid}")
  public String selectByCategory(@PathVariable int cid,Model model)
  {
	 List<Product> products=productService.getProductByCategory(cid);
	  model.addAttribute("product", products);
	  return "productlist";
  }
  
  
  
  
  

}
