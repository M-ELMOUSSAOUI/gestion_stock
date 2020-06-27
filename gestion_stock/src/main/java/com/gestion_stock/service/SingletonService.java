package com.gestion_stock.service;

import com.gestion_stock.dao.CatalogueDaoImpl;

public class SingletonService {
	
	private static CatalogueServiceImpl service ;
	static {
		CatalogueDaoImpl dao = new CatalogueDaoImpl();
		dao.init();
		service = new CatalogueServiceImpl();
		service.setDao(dao);
	}
	public static CatalogueServiceImpl getService() {
		return service;
	}
	
	

}
