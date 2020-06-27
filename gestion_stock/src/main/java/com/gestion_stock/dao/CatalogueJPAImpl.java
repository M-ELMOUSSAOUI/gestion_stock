 package com.gestion_stock.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.gestion_stock.entity.Produit;

@Repository
public class CatalogueJPAImpl implements ICatalogueDao {

	@PersistenceContext
	@Autowired
	@Qualifier(value = "persistenceUnitManager")
	private EntityManager em;
	
	@Override
	public void addProduit(Produit p) {
		// TODO Auto-generated method stub
		em.persist(p);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Produit> listProduit() {
		// TODO Auto-generated method stub
		Query req = em.createQuery("select p from Produit p ") ;
		return req.getResultList();
	}

	@Override
	public Produit getProduit(String ref) {
		// TODO Auto-generated method stub
		return em.find(Produit.class, ref);
	}

	@Override
	public void remove(String ref) {
		// TODO Auto-generated method stub
		Produit p = getProduit(ref);
		em.remove(p);
	}

	@Override
	public void update(Produit p) {
		// TODO Auto-generated; method stub
			em.merge(p);
	}

}
