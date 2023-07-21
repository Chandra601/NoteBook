package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.entities.Note;

public class FactoryProvider {
	public static SessionFactory factory;
	
	public static SessionFactory getFactory()
	{
		if(factory==null)
		{
			factory=new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Note.class).buildSessionFactory();
		}
		
		return factory;
	}
	
	public void closeFatory()
	{
		if(factory.isOpen()) {
			factory.isClosed();
		}
	}
}
