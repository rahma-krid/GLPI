package com.glpi.rec.serviceImp;

import java.util.Date;
import java.util.List;

import org.hibernate.property.Dom4jAccessor.ElementAttributeSetter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.glpi.rec.dao.IReclamationDAO;
import com.glpi.rec.dao.ItechnicienDAO;
import com.glpi.rec.entities.Reclamation;
import com.glpi.rec.service.IReclamationService;

@Transactional
@Service
public class ReclamationServiceImp implements IReclamationService {

	
	@Autowired
	IReclamationDAO recdao ; 
	
	@Autowired 
	ItechnicienDAO techdao;
	
	@Override
	public void addRec(Reclamation t) {
		// TODO Auto-generated method stub
		
		recdao.save(t);	}

	@Override
	public void deleteRec(int id) {
		// TODO Auto-generated method stub
		
		recdao.delete(id);
	}

	@Override
	public Reclamation getRecById(int id) {
		// TODO Auto-generated method stub
		return recdao.findOne(id);
		
		
	}

	
	@Override
	public List<Reclamation> getAllRecs() {
		// TODO Auto-generated method stub
		return recdao.findAll();
	}

	@Override
	public void ajouterRec(String titre, String emplacement, Date daterec, String gravite, String etat, String desc) {
		// TODO Auto-generated method stub
		Reclamation rec = new Reclamation();
		rec.setTitre(titre);
		rec.setEmplacement(emplacement);
		rec.setDate_rec(daterec);
		rec.setGravite(gravite);
		rec.setEtat(etat);
		rec.setDescription(desc);
		
		recdao.save(rec);
	}

	@Override
	public void modifierrec(int id, Date datexec, String observation,String nature, String etat, int idtech) {
		// TODO Auto-generated method stub
	
		Reclamation r = recdao.findOne(id);
		r.setDate_exec(datexec);
		r.setObservation(observation);
		r.setEtat(etat);
		r.setNature(nature);
		
		r.setRetard(recdao.getretard(r.getId_rec()));
		r.setTechnicien(techdao.findOne(idtech));

		recdao.save(r);
	}

	@Override
	public void modifieretat(int id) {
		// TODO Auto-generated method stub
		Reclamation r = recdao.findOne(id);
		if(r.getEtat()=="en attente") {
		r.setEtat("en cours");}
		else r.setEtat("en attente");
	}

	@Override
	public List<Reclamation> getrecsattente() {
		// TODO Auto-generated method stub

		return recdao.getrecsattente();
	}

	
	@Override
	public List<Reclamation> getrecbynature(String nature) {
		// TODO Auto-generated method stub
		return recdao.getrecsbynature(nature);
	}

	@Override
	public int getcountrecs(String etat) {
		// TODO Auto-generated method stub
		return recdao.getcountrecs(etat);
	}

	@Override
	public int getretard(int id) {
		// TODO Auto-generated method stub
		return recdao.getretard(id);
	}

}