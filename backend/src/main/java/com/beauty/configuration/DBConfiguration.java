package com.beauty.configuration;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.beauty.model.Authorities;
import com.beauty.model.BillingAddress;
import com.beauty.model.Cart;
import com.beauty.model.Category;
import com.beauty.model.Customer;
import com.beauty.model.Product;
import com.beauty.model.ShippingAddress;
import com.beauty.model.User;

@Configuration
@EnableTransactionManagement
public class DBConfiguration {
@Bean
public DataSource getDataSource(){
	
	BasicDataSource datasource=new BasicDataSource();
	datasource.setDriverClassName("org.h2.Driver");
	datasource.setUrl("jdbc:h2:tcp://localhost/~/test");
	
	datasource.setUsername("sa");
	datasource.setPassword("");
	
	return datasource;
}

@Bean
public SessionFactory sessionFactory()
{
	LocalSessionFactoryBuilder lsf=new LocalSessionFactoryBuilder(getDataSource());
	Properties hibernateProperties=new Properties();
	hibernateProperties.setProperty("hibernate.dialect","org.hibernate.dialect.H2Dialect");
	hibernateProperties.setProperty("hibernate.hbm2ddl.auto","update");
	hibernateProperties.setProperty("hibernate.show_sql","true");
	lsf.addProperties(hibernateProperties);
	Class classes[]=new Class[]{Product.class,Category.class,User.class,Customer.class,Authorities.class,BillingAddress.class,ShippingAddress.class,Cart.class};
	return lsf.addAnnotatedClasses(classes).buildSessionFactory();
	
}
@Bean
public HibernateTransactionManager hibTransManagement(){
	return new HibernateTransactionManager(sessionFactory());
}
}
