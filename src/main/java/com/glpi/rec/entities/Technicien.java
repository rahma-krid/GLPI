package com.glpi.rec.entities;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;


@Entity
@PrimaryKeyJoinColumn(name="id_technicien")
public class Technicien extends Utilisateur {

	
	
	 private  String email ;
	 private String adresse ;
	 private int tel ;
	 
	 @OneToMany(mappedBy="technicien", cascade={CascadeType.ALL})
	 private List<Reclamation> reclamations;
	 
	 
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public int getTel() {
		return tel;
	}
	public void setTel(int tel) {
		this.tel = tel;
	}
	
	
	
	public List<Reclamation> getReclamations() {
		return reclamations;
	}
	public void setReclamations(List<Reclamation> reclamations) {
		this.reclamations = reclamations;
	}
	
	
	
	
	public Technicien(int id, String login, String password, String nom, String prenom, String roleUser,
			boolean actived, String email, String adresse, int tel) {
		super(id, login, password, nom, prenom, roleUser, actived);
		this.email = email;
		this.adresse = adresse;
		this.tel = tel;
	}
	public Technicien() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Technicien(int id, String login, String password, String nom, String prenom, String roleUser,
			boolean actived) {
		super(id, login, password, nom, prenom, roleUser, actived);
		// TODO Auto-generated constructor stub
	}
	 

 
	
}
