package com.inswave.elservice.cmmn;

import javax.servlet.ServletContextEvent;

import com.inswave.elfw.core.ElContextLoaderListener;
import com.inswave.elfw.log.AppLog;

public class ElserviceContextLoaderListener extends ElContextLoaderListener {
	
	@Override
	public void contextInitialized(ServletContextEvent event) {
	    super.contextInitialized(event);
	    
	    AppLog.debug("ElserviceContextLoaderListener - contextInitialized ...");    	   
		
	}
	 
	@Override
	public void contextDestroyed(ServletContextEvent event) {
		super.contextDestroyed(event);
		
		AppLog.debug("ElserviceContextLoaderListener - contextDestroyed ...");    	   
				
	}	
}
