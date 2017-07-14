package com.beauty.backend;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.beauty.configuration.DBConfiguration;
import com.beauty.dao.ProductDaoImpl;
import com.beauty.service.ProductServiceImpl;

public class App 
{
    public static void main( String[] args )
    {
    	
        ApplicationContext context=new AnnotationConfigApplicationContext(DBConfiguration.class,ProductDaoImpl.class,ProductServiceImpl.class);
        
        /*ProductService productService=(ProductService)context.getBean("productServiceImpl");
        
        Product product=new Product();
        product.setId(2);
        product.setProductName("pen");
        product.setPrice(100);
        product.setQuantity(10);
        product.setDescription("it is a pen");
        System.out.println( "Hello World!" );
        productService.saveProduct(product);
        System.out.println("hello world 2");*/
        
        
    }
}
