package com.glpi.rec.entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Reclamation {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id_rec ;
	private String titre ;
	 
	@Temporal(TemporalType.DATE)
	private Date date_rec;
	
	private String etat ="en attente";
	 
	private String gravite ;
	
	private String nature ;

	private String description ;

	private String emplacement ;

	private String observation ="__";
	
	private int retard =0 ;
	

	@Temporal(TemporalType.DATE)
	private Date date_exec ;
	
	
	@ManyToOne
	@JoinColumn(name="tech_id")
	private Technicien technicien  ;
	

	public int getId_rec() {
		return id_rec;
	}


	public void setId_rec(int id_rec) {
		this.id_rec = id_rec;
	}


	public String getTitre() {
		return titre;
	}


	public int getRetard() {
		return retard;
	}


	public void setRetard(int retard) {
		this.retard = retard;
	}


	public void setTitre(String titre) {
		this.titre = titre;
	}


	public Date getDate_rec() {
		return date_rec;
	}


	public void setDate_rec(Date date_rec) {
		this.date_rec = date_rec;
	}


	public String getEtat() {
		return etat;
	}


	public void setEtat(String etat) {
		this.etat = etat;
	}


	public String getGravite() {
		return gravite;
	}


	public void setGravite(String gravite) {
		this.gravite = gravite;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getEmplacement() {
		return emplacement;
	}


	public void setEmplacement(String emplacement) {
		this.emplacement = emplacement;
	}


	public String getObservation() {
		return observation;
	}


	public void setObservation(String observation) {
		this.observation = observation;
	}


	public Date getDate_exec() {
		return date_exec;
	}


	public void setDate_exec(Date date_exec) {
		this.date_exec = date_exec;
	}


	public Technicien getTechnicien() {
		return technicien;
	}


	public void setTechnicien(Technicien technicien) {
		this.technicien = technicien;
	}


	public String getNature() {
		return nature;
	}


	public void setNature(String nature) {
		this.nature = nature;
	}


	public Reclamation(int id_rec, String titre, Date date_rec, String etat, String gravite, String nature,
			String description, String emplacement, String observation, Date date_exec, Technicien technicien) {
		super();
		this.id_rec = id_rec;
		this.titre = titre;
		this.date_rec = date_rec;
		this.etat = etat;
		this.gravite = gravite;
		this.nature = nature;
		this.description = description;
		this.emplacement = emplacement;
		this.observation = observation;
		this.date_exec = date_exec;
		this.technicien = technicien;
	}


	public Reclamation() {
		super();
	}


	

	
}
