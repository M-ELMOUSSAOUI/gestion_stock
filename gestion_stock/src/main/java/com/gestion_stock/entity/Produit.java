package com.gestion_stock.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Produit implements Serializable  {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2930448171741365716L;
	
	@Id
	@Column(name = "codePdt")
	private int ref;
	
	@Column(name = "nomPdt")
	private String des;
	
	@Column(name = "prixPdt")
	private int prix;
	
	@Column(name = "qtePdt")
	private int qte;
	
	
	
	
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
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
	public Produit(int ref, String des, int prix, int qte) {
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