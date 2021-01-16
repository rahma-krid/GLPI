package com.glpi.rec.serviceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.glpi.rec.dao.IUtilisateurDAO;
import com.glpi.rec.entities.Utilisateur;
import com.glpi.rec.service.IUtilisateurService;

@Transactional
@Service
public class UtilisateurServiceImp implements IUtilisateurService {
    @Autowired
	IUtilisateurDAO userDAO ; 
	
	@Override
	public Utilisateur getUserbyLoginnn(String login) {
		// TODO Auto-generated method stub
		return userDAO.findByLogin(login);
	}
	

}
