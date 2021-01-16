package com.glpi.rec.serviceImp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.glpi.rec.dao.ItechnicienDAO;
import com.glpi.rec.entities.Technicien;
import com.glpi.rec.service.ITechnicienService;

@Transactional
@Service
public class TechnicienServiceImp implements ITechnicienService{

	
	
	@Autowired
	ItechnicienDAO techdao ;
	
	
	@Override
	public void addTech(Technicien t) {
		// TODO Auto-generated method stub
		techdao.save(t);
	}

	@Override
	public void deleteTech(int id) {
		// TODO Auto-generated method stub
		techdao.delete(id);
	}

	@Override
	public Technicien getTechById(int id) {
		// TODO Auto-generated method stub
		return techdao.findOne(id);
	}

	@Override
	public List<Technicien> getAllTechniciens() {
		// TODO Auto-generated method stub
		return techdao.findAll();
	}

	@Override
	public void ajouteTech(String nom, String prenom, String login, String password, String email, String adresse,
			int tel) {
		// TODO Auto-generated method stub
		Technicien t = new Technicien();
	
		t.setNom(nom);
		t.setPrenom(prenom);
		t.setLogin(login);
		t.setPassword(password);
		t.setEmail(email);
		t.setAdresse(adresse);
		t.setTel(tel);
		t.setRoleUser("technicien");
		t.setActived(true);
	 techdao.save(t);
		
		
	}

	@Override
	public void modifierTech(int id, String nom, String prenom, String login, String password, String email,
			String adresse, int tel) {
		// TODO Auto-generated method stub
		Technicien t=techdao.findOne(id);
		t.setNom(nom);
		t.setPrenom(prenom);
		t.setLogin(login);
		t.setPassword(password);
		t.setEmail(email);
		t.setAdresse(adresse);
		t.setTel(tel);
		techdao.save(t);
	}

	@Override
	public Integer countrecBytech(int idtech) {
		// TODO Auto-generated method stub
		return techdao.countRecBytech(idtech);
	}

}
