package com.gestion_stock.service;

import java.util.List;

import com.gestion_stock.entity.Produit;

public interface ICatalogueService {
	public void addProduit(Produit p );
	public List<Produit> listProduit();
	public Produit getProduit(String ref);
	public void remove(String ref);
	public void update(Produit p);
}
