package com.gestion_stock.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Produit implements Serializable  {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2930448171741365716L;
	
	@Id
	private String ref;
	private String des;
	private int prix;
	private int qte;
	public String getRef() {
		return ref;
	}
	public void setRef(String ref) {
		this.ref = ref;
	}
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}
	public int getPrix() {
		return prix;
	}
	public void setPrix(int prix) {
		this.prix = prix;
	}
	public int getQte() {
		return qte;
	}
	public void setQte(int qte) {
		this.qte = qte;
	}
	public Produit(String ref, String des, int prix, int qte) {
		super();
		this.ref = ref;
		this.des = des;
		this.prix = prix;
		this.qte = qte;
	}
	public Produit() {
		super();
	}
	
	
	
}
