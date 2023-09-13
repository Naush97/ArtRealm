package com.cdac.ArtRealm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.ArtRealm.entity.Artists;
import com.cdac.ArtRealm.repository.ArtistsRepository;

@Controller
public class ArtistController {
@Autowired
private ArtistsRepository artistsRepo;
@RequestMapping("/showLoginPage")
public String showLoginPage(){	
return "login/login";
}
@RequestMapping("/showReg")
	public String showReg() {
		return "login/showReg";
	}
@RequestMapping("/saveReg")
public String saveReg(@ModelAttribute("artists") Artists artists) {
	artistsRepo.save(artists);
	return "login/login";
}

@RequestMapping("/verifyLogin")
public String verifyLogin(@RequestParam("emailId") String emailId,@RequestParam("password") String password,ModelMap modelMap) {
	Artists artists=artistsRepo.findByEmailId(emailId);
	if(artists!=null)
	{
		if(artists.getEmailId().equals(emailId) && artists.getPassword().equals(password)) {
			return "login/services";
		}
		else {
			modelMap.addAttribute("error", "invalid username/password");
			return "login/login";
		}
	}
	else {
		modelMap.addAttribute("error","invalid username/password");
		return "login/login";
	}
	
}

@RequestMapping("findYourArtist")
public String findArtist()
{
	return "login/findArtists";
	
}
}
