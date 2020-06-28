package com.gestion_stock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gestion_stock.dao.ICatalogueDao;
import com.gestion_stock.entity.Produit;

@Transactional
@Service
public class CatalogueServiceImpl implements ICatalogueService {
	@Autowired
	private ICatalogueDao dao;

	public void setDao(ICatalogueDao dao) {
		this.dao = dao;
	}

	@Override
	public void addProduit(Produit p) {
		// TODO Auto-generated method stub
		dao.addProduit(p);
	}

	@Override
	public List<Produit> listProduit() {
		// TODO Auto-generated method stub
		return dao.listProduit();
	}

	@Override
	public Produit getProduit(int ref) {
		// TODO Auto-generated method stub
		return dao.getProduit(ref);
	}

	@Override
	public void remove(int ref) {
		// TODO Auto-generated method stub
		dao.remove(ref);
	}

	@Override
	public void update(Produit p) {
		// TODO Auto-generated method stub
		dao.update(p);
	}

}
