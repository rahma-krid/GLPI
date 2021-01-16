package com.glpi.rec.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.glpi.rec.entities.Technicien;

public interface ItechnicienDAO extends JpaRepository<Technicien, Integer> {
	
	
@Query(value="SELECT count(*) FROM reclamation,technicien WHERE reclamation.tech_id=?1 AND technicien.id_technicien=reclamation.tech_id AND reclamation.etat= 'resolu'" 
		,nativeQuery=true)
	
	Integer countRecBytech(int idtech);


}
