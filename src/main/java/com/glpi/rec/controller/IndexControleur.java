package com.glpi.rec.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.glpi.rec.entities.Reclamation;
import com.glpi.rec.entities.Utilisateur;
import com.glpi.rec.service.IReclamationService;
import com.glpi.rec.service.IUtilisateurService;

@Controller
public class IndexControleur {
	
	@Autowired
	IReclamationService recservice ; 
	@Autowired
	IUtilisateurService usersService ; 
	
	
	
	
	
	@RequestMapping("/")
	public String login(
			Model model,@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, HttpServletResponse response
			) throws ServletException, IOException{

		model.addAttribute("Reclamation", new Reclamation());

		if (error != null) {
			model.addAttribute("error", " Coordonnees invalides!"); 

		}

		if (logout != null) {
			model.addAttribute("msg", "Deconnexion reussite!");
	
		}
	

		return"login";
		
	}
	
	
	
	@RequestMapping("index")
	public String index (Model model,HttpServletRequest request) {
		
	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String login = auth.getName();
		
	           System.out.println("loginnnnnnnnnnnnnnnnn: "+login);

	       
		/*Utilisateur user = usersService.getUserbyLoginnn(login);
		request.getSession().setAttribute("USER", user);
		if(user.getRoleUser().equals("admin")) {
			return "Technicien/gestionrecs";
			
		}else {
			return "Technicien/gestionrecs";
		}*/
	
	return "Technicien/gestionrecs";
	}
	
	
	 
	
	@InitBinder 
	 protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) throws Exception {
		 DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		 binder.registerCustomEditor(Date.class, new CustomDateEditor(
		 				dateFormat, false));
	 }
	
	@RequestMapping("addReclamation")
	public String addReclamation1(@Valid Reclamation r) {
		
		Calendar c = Calendar.getInstance ();
		Date d = c.getTime ();
		
		recservice.ajouterRec(r.getTitre(), r.getEmplacement(), d , r.getGravite(), r.getEtat(), r.getDescription());
		return "redirect:/" ; 
	}

	
	
	
	
	
	
	@RequestMapping("/chart")
	public String chart() {
		
		
		return "Charts/chartrec";
	}

	@RequestMapping("/admin")
	public String menuadmin() {
		
		
		return "Admin/menu_admin";
	}
	
	@RequestMapping("menu")
	public String getrecs(Model model,HttpServletRequest request) {
		List<Reclamation> lstrecs =recservice.getrecsattente() ; 
		
		int i=0 ;
		for( i=0;i<lstrecs.size();i++) {
			lstrecs.get(i).setRetard(recservice.getretard(lstrecs.get(i).getId_rec()));
			
		
	 }

		model.addAttribute("RECS", lstrecs);
		
	
		model.addAttribute("REC", new Reclamation());
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String login = auth.getName();
		Utilisateur user = usersService.getUserbyLoginnn(login);
		String useer= user.getNom()+"  "+user.getPrenom();
		request.getSession().setAttribute("USER", user);
		model.addAttribute("useer",useer);
		if(user.getRoleUser().equals("technicien")) {
			return "Technicien/gestionrecs";
			
			
		}else  {
			return "Admin/menu_admin";
		}
		
		
	}
	
	
	@RequestMapping("help")
	public String getrecsnature(Model model) {
		List<Reclamation> lstrecsma =recservice.getrecbynature("materielle"); 
		model.addAttribute("RECS1", lstrecsma);
		
		List<Reclamation> lstrecscom =recservice.getrecbynature("commerciale"); 
		model.addAttribute("RECS2", lstrecscom);
		
		List<Reclamation> lstrecssys =recservice.getrecbynature("systeme"); 
		model.addAttribute("RECS3", lstrecssys);
		
		
		
			return "Reclamation/ajouterRec";
		}
	
		
	
	
	
	
	/*@RequestMapping("modifierrec")
	public String modifierrec(Model model, @RequestParam int idr) {
		 model.addAttribute("rec", new Reclamation());
		model.addAttribute("REC", recservice.getRecById(idr) );

		
		return "Reclamation/modifierRec";
	}*/
	
	 
	@RequestMapping("modifrec")
	public String modif(Model model,@Valid Reclamation r, HttpServletRequest request) {
		System.out.println("helloooooooooooooooooooooooooooooooooo");
		Utilisateur u = (Utilisateur) request.getSession().getAttribute("USER");
		
		System.out.println("helloooooooooooooooooooooooooooooooooo:  "+u.getId());

		recservice.modifierrec(r.getId_rec(), new Date() , r.getObservation(),r.getNature(), r.getEtat(), u.getId());

		System.out.println("helloooooooooooooooooooooooooooooooooo");

		return  "redirect:/menu"; 
	}
	
	
	/*@RequestMapping("modifetat")
	public String modifetat(Model model,@RequestParam int id) {
		
		
		recservice.modifieretat(id);
		model.addAttribute("msg", "Suppression effectu�e avec succ�es");
		return  "redirect:/menu"; 
	}*/
	
	
	
	
	
	/* @RequestMapping("editrec")
	public String editrec(Model model,@Valid Reclamation r, HttpServletRequest request) {
		
    
		Utilisateur u = (Utilisateur) request.getSession().getAttribute("USER");
		recservice.modifierrec(r.getId_rec(), new Date() , r.getObservation(), r.getEtat(), 1);

		recservice.modifierrec(r.getId_rec(), d , r.getObservation(), r.getEtat(), u.getId());
		System.out.println("helloooooooooooooooooooooooooooooooooo");

		return  "Redirect:/menu"; 
	}*/
	
	
}

