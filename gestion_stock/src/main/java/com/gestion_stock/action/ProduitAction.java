package com.gestion_stock.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.gestion_stock.entity.Produit;
import com.gestion_stock.service.ICatalogueService;
import com.opensymphony.xwork2.ActionSupport;

public class ProduitAction extends ActionSupport {

	/**
	 * 
	 */
	
	private static final long serialVersionUID = 4059222103174634575L;
	
	@Autowired(required = true)
	private ICatalogueService service ;
	
	private Produit produit = new Produit();
	private List<Produit> produits;	
	int ref;
	public boolean editMode=false;
	
	public Produit getProduit() {
		return produit;
	}

	public void setProduit(Produit produit) {
		this.produit = produit;
	}

	public List<Produit> getProduits() {
		return produits;
	}

	public void setProduits(List<Produit> produits) {
		this.produits = produits;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public ICatalogueService getService() {
		return service;
	}

	public void setService(ICatalogueService service) {
		this.service = service;
	}

	public String index() {
		produits=service.listProduit();
		return "success";
	}
	
	public String save() {
		if(editMode==false)
		service.addProduit(produit);
		else {
			service.update(produit); 
			editMode=false;
			produit=new Produit();
		}
		produits=service.listProduit();

		return "success";
	}
	
	public String edit() {
		editMode=true;
		produit= service.getProduit(ref);
		System.out.println(editMode);
		produits=service.listProduit();
	return "success";
	}
	
	public String addProduct() {
		editMode=false;

		return "success";
	}

	
	public String delete() {
		service.remove(ref);
		produits=service.listProduit();
		return "success";
	}
	
}
