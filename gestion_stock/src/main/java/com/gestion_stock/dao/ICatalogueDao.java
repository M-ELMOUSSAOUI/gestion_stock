package com.gestion_stock.dao;

import java.util.List;

import com.gestion_stock.entity.Produit;

public interface ICatalogueDao {
	public void addProduit(Produit p );
	public List<Produit> listProduit();
	public Produit getProduit(int ref);
	public void remove(int ref);
	public void update(Produit p);
	public Produit findByName(String name);
	
}
