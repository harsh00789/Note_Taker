package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {

 public	static SessionFactory factory;
	public static SessionFactory getfactory() {
		
		if(factory==null) {
			
			Configuration cfg = new Configuration().configure("Hibernate.cfg.xml");
			factory = cfg.buildSessionFactory();
		}
		
		return factory;
		
	}
	
	public void closefactory() {
		
		if(factory.isOpen()) {
			factory.close();
		}
		
	}
	
}
