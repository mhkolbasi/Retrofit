package com.calisma.retrofitusing;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import restUsing.Bilgiler;

@Controller
public class DetayController {
	
	@RequestMapping(value = "/Detay/{productId}", method = RequestMethod.GET)
	public String Detay(@PathVariable int productId, Locale locale, Model model) {
	
	
	
		
		
	return "Detay";
	}
	

}
