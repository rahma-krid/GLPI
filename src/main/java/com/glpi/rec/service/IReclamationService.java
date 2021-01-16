package com.glpi.rec.service;

import java.util.Date;
import java.util.List;

import com.glpi.rec.entities.Reclamation;


public interface IReclamationService {
	
	
	public void addRec(Reclamation t);
	public void deleteRec(int id);
	public Reclamation getRecById(int id);
	public List<Reclamation>  getAllRecs();
	public List<Reclamation>  getrecsattente();

	public void ajouterRec(String titre , String emplacement,Date daterec,String gravite, String etat,String desc);
	public void modifierrec(int id , Date datexec,String observation,String nature, String etat,int idtech);
	public void modifieretat(int id);
	public  List<Reclamation> getrecbynature(String nature);
public int getcountrecs(String etat);
public int getretard(int id );

	

}
