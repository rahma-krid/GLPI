package com.glpi.rec.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.glpi.rec.entities.Reclamation;

public interface IReclamationDAO extends JpaRepository<Reclamation, Integer>{
	
	
	
	
	@Query(value="SELECT * FROM reclamation WHERE reclamation.etat='en attente' or reclamation.etat='Nonresolu'" , nativeQuery=true)
    List<Reclamation> getrecsattente()  ;
	
	
	@Query(value="SELECT * FROM reclamation WHERE reclamation.nature=?1" , nativeQuery=true)
    List<Reclamation> getrecsbynature(String nature)  ;
	
	@Query(value="SELECT count(*) FROM reclamation WHERE reclamation.date_rec=DATE( NOW() ) and reclamation.etat=?1" , nativeQuery=true)
    int getcountrecs(String etat);
	

	@Query(value="SELECT DATEDIFF(NOW(),reclamation.date_rec) FROM reclamation WHERE reclamation.id_rec=?1" , nativeQuery=true)
    int getretard(int id );

}
