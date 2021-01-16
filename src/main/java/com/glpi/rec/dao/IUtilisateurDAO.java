package com.glpi.rec.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.glpi.rec.entities.Utilisateur;

public interface IUtilisateurDAO extends JpaRepository<Utilisateur, Integer> {

	public Utilisateur findByLogin(String log);
}
