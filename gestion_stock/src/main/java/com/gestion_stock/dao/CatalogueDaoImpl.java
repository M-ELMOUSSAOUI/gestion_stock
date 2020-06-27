package com.gestion_stock.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.gestion_stock.entity.Produit;

public class CatalogueDaoImpl implements ICatalogueDao {
	private Map<String, Produit> produits = new HashMap<>();
	
	@Override
	public void addProduit(Produit p) {
		// TODO Auto-generated method stub
		produits.put(p.getRef(), p);
	}

	@Override
	public List<Produit> listProduit() {
		// TODO Auto-generated method stub
		return new ArrayList<Produit>(produits.values());
	}

	@Override
	public Produit getProduit(String ref) {
		// TODO Auto-generated method stub
		return produits.get(ref);
	}

	@Override
	public void remove(String ref) {
		// TODO Auto-generated method stub
		produits.remove(ref);
	}

	@Override
	public void update(Produit p) {
		// TODO Auto-generated method stub
		produits.put(p.getRef(), p);
	}

	public void init() {
		this.addProduit(new Produit("abcd", "abcd", 25, 10));
		this.addProduit(new Produit("abcd1", "abcd1",50, 147));
		this.addProduit(new Produit("abcd2", "abc2d", 12, 46));
		this.addProduit(new Produit("abcd3", "abcd3", 82, 1235));

	}
}
