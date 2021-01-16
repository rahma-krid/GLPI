package com.glpi.rec.controller;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.glpi.rec.entities.Technicien;
import com.glpi.rec.service.ITechnicienService;


@Controller
public class TechnicienControleur {

	@Autowired
	ITechnicienService techservice;
	
	
	
	
	
	@RequestMapping("techniciens")
	public String getTechniciens(Model model) {
		
		List<Technicien> lsttech  = techservice.getAllTechniciens();
		model.addAttribute("LstTech", lsttech);
		model.addAttribute("Technicien", new Technicien());
		return "Technicien/gestionTechs" ; 
	}
	
	
	@RequestMapping("deleteTech")
	public String deleteTechnicien(@RequestParam int idt) {
		techservice.deleteTech(idt);
		return "redirect:/techniciens" ; 
	}
	
	
	
	
	@RequestMapping("addTechnicien")
	public String addTech(@Valid Technicien t) {
		techservice.ajouteTech(t.getNom(), t.getPrenom(), t.getLogin(), t.getPassword(), t.getEmail(), t.getAdresse(), t.getTel());

		return "redirect:/techniciens" ; 
	}
	
	
	@RequestMapping("editTech")
	public String editTech(@Valid Technicien t) {
		techservice.modifierTech(t.getId(), t.getNom(), t.getPrenom(), t.getLogin(), t.getPassword(), t.getEmail(), t.getAdresse(), t.getTel());
		return "redirect:/techniciens" ; 
	}
	
	@RequestMapping("techrec")
	public String tec() {
		return "Charts/techrec" ; 
	}
	
	
	
	@RequestMapping(value ="/service7", method = RequestMethod.GET)
	 @ResponseBody
	 public List<StatEtat> generateJSONPosts1( Model model) {
	 
		System.out.println("rrrrrrrrr");
	    //List<HashMap<String, String>> list = new ArrayList<HashMap<String,String>>();
		//HashMap<String, String> mappp = new HashMap<String, String>(); 
		List<StatEtat>  liste = new ArrayList<StatEtat>();
		
		List<Technicien> lsttechs = techservice.getAllTechniciens();
		for (int i=0; i<lsttechs.size();i++)
		{
			Integer x = techservice.countrecBytech(lsttechs.get(i).getId());
					
			String m= lsttechs.get(i).getNom();
		 StatEtat stat = new StatEtat(m,x);
		
		 liste.add(stat);
		
		}
		
		
	 return liste;
	 }
	
	
	
	
	class StatEtat implements Serializable
	{
		String name;
	     Integer y ;
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public Integer getY() {
			return y;
		}
		public void setY(Integer y) {
			this.y = y;
		}
		
		
		public StatEtat(String name, Integer y) {
			super();
			this.name = name;
			this.y = y;
		
		}
		
		}

	
	
	
}