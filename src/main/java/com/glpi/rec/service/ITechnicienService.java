package com.glpi.rec.service;

import java.util.List;

import com.glpi.rec.entities.Technicien;


public interface ITechnicienService {

	
	public void addTech(Technicien t);
	public void deleteTech(int id);
	public Technicien getTechById(int id);
	public List<Technicien>  getAllTechniciens();
	
	public void ajouteTech(String nom , String prenom, String login,String password, String email , String adresse, int tel);
	public void modifierTech(int id, String nom , String prenom, String login, String password, String email , String adresse, int tel);

	public Integer countrecBytech(int idtech);


}
