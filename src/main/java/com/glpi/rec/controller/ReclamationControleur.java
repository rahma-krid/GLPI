package com.glpi.rec.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.glpi.rec.entities.Reclamation;
import com.glpi.rec.service.IReclamationService;

@Controller
public class ReclamationControleur {

	
	@Autowired
	IReclamationService recservice ; 
	
	
	
	
	
@RequestMapping("chart8")
	
	public String chart1(Model model) {
	System.out.println("an attente:------ "+recservice.getcountrecs("en attente"));
	System.out.println("resolu:------ "+recservice.getcountrecs("Resolu"));

	System.out.println("non resolu:------ "+recservice.getcountrecs("Nonresolu"));
	
	model.addAttribute("rec1", recservice.getcountrecs("en attente"));
	model.addAttribute("rec2", recservice.getcountrecs("Resolu"));
	model.addAttribute("rec3",recservice.getcountrecs("Nonresolu"));
	
	

		return  "Charts/chart8"; 
	}

	
	
	
}
